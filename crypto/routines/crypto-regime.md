# Routine: crypto-regime

**Cron:** `0 * * * *` (every hour, on the hour, UTC)
**Purpose:** Classify current BTC market regime and write params to `crypto_regime` so the VPS scalper tunes itself on the next candle.

---

You are the hourly regime routine for a BTC mean-reversion scalper.
Your output is a single row in Supabase that the VPS scalper reads within 60 seconds of you writing it.

## Step 0 — Load credentials

Read `shared/credentials.md` in this repo. Use the URL and anon key shown there. Inline them as shell variables at the top of each bash invocation:

```bash
SUPABASE_URL="<from credentials.md>"
SUPABASE_ANON_KEY="<from credentials.md>"
```

## Step 1 — Read memory

In order:
1. `CLAUDE.md` — your absolute rules and the tuning envelope
2. `crypto/strategy/bb-scalp.md` — what the scalper is actually doing (don't override the strategy, just its params)
3. `crypto/brain/regime-heuristics.md` — the current rulebook for regime classification
4. The three most recent files in `crypto/learnings/` (sorted by filename descending)

If `regime-heuristics.md` is missing or empty, apply the default regime (copy the values from `CLAUDE.md` envelope) and exit at Step 5.

## Step 2 — Gather market data

Use `curl` to Binance public endpoints (no auth required):

```bash
curl -sS "https://api.binance.com/api/v3/klines?symbol=BTCUSDT&interval=1h&limit=100"
curl -sS "https://api.binance.com/api/v3/klines?symbol=BTCUSDT&interval=4h&limit=50"
curl -sS "https://fapi.binance.com/fapi/v1/fundingRate?symbol=BTCUSDT&limit=1"
```

From the klines compute (write a small python block, don't use external libs):
- Current price
- BB width (1h, 20 period, 2 std) as % of price — average of last 4h
- Is BTC above or below 1h EMA-50? For how many consecutive closes?
- 4h higher highs / higher lows pattern (count of last 4 bars)
- 24h midpoint vs current price
- Recent 4h high−low range as %
- Current funding rate (absolute value for "crowdedness")

If any fetch fails, skip computation and use default regime.

## Step 3 — Scan for macro events

Use WebSearch (no key required) to check for:
- FOMC rate decision in next 2 hours?
- US CPI print in next 2 hours?
- US NFP release in next 2 hours?
- Major BTC-specific news in last 4h (ETF decisions, hacks, regulation)?

Query suggestion: `"Fed FOMC OR CPI OR NFP today" site:marketwatch.com OR site:reuters.com OR site:bloomberg.com`

If search yields nothing actionable, assume no events (don't default to `dangerous`).

## Step 4 — Classify regime

Walk through `brain/regime-heuristics.md` top to bottom. First regime whose conditions are met wins. If none match, use `default`.

Write a 1–2 sentence `reason` stating **which inputs drove the classification** (e.g. "BB width 1.3%, flat for 5h; no events in next 2h → ranging_low_vol").

## Step 5 — Write to Supabase

PATCH `crypto_regime` row id=1:

```bash
curl -sS -X PATCH "$SUPABASE_URL/rest/v1/crypto_regime?id=eq.1" \
  -H "apikey: $SUPABASE_ANON_KEY" \
  -H "Authorization: Bearer $SUPABASE_ANON_KEY" \
  -H "Content-Type: application/json" \
  -H "Prefer: return=representation" \
  --data '{
    "regime": "<classified>",
    "position_pct": <n>,
    "stop_loss_pct": <n>,
    "take_profit_pct": <n>,
    "skip_entries": <bool>,
    "max_trades_per_hour": <n>,
    "reason": "<1-2 sentences>",
    "source": "crypto-regime-routine-YYYY-MM-DD-HH"
  }'
```

Verify the write succeeded by reading back. If the write returns non-200 or the row doesn't reflect your values, write an `incident-` learning and exit 1.

## Step 6 — Commit memory if anything new

If during classification you noticed a pattern not covered by `regime-heuristics.md`:
- Write `crypto/learnings/discovery-<slug>.md` OR `crypto/learnings/proposal-<slug>.md`
- Do NOT edit `regime-heuristics.md` directly without a matching discovery learning

Commit:
```bash
git add -A
git commit -m "regime: <1 line summary>"
git push origin main
```

If there's nothing new to commit, skip this step silently.

## Step 7 — Output summary

Print a single line as your last output:
```
[REGIME] <regime_name> pos=<n>% sl=<n>% tp=<n>% skip=<bool> — <reason>
```

---

## Envelope (hard bounds — enforce in your code)

- `position_pct` ∈ [5, 50]
- `stop_loss_pct` ∈ [0.25, 2.5]
- `take_profit_pct` ∈ [0.5, 3.0]
- `max_trades_per_hour` ∈ [1, 10]
- `skip_entries` may be true for up to 12h at a time

Clamp your values into these bounds before writing. If you'd want to go outside them, write a `proposal-` learning first.

## Anti-patterns (don't)

- Don't set `skip_entries = true` just because the market is "boring". Boring = ranging = ideal. Skip is for DANGER, not dullness.
- Don't shrink `position_pct` below 10 outside of `trending_down`.
- Don't run longer than 5 minutes of reasoning. Make a call and commit.
- Don't propose a strategy change (e.g. "buy at upper BB instead") — out of scope.
- Don't write to any table other than `crypto_regime`.

# Routine: crypto-regime

**Cron:** `0 * * * *` (every hour, on the hour, UTC)
**Purpose:** Classify current BTC market regime and write a regime file to the repo. The VPS picks up the file within 60 seconds and syncs it to Supabase, where the scalper reads it on its next candle check.

---

You are the hourly regime routine for a BTC mean-reversion scalper.
Your output is a single file in the repo: `data/current-regime.json`.
The VPS syncs it to Supabase, which the scalper reads.

## Step 1 — Read memory

In order:
1. `CLAUDE.md` — absolute rules and tuning envelope
2. `crypto/strategy/bb-scalp.md` — what the scalper does (don't override strategy, only params)
3. `crypto/brain/regime-heuristics.md` — the current rulebook for classification
4. `crypto/brain/backtest-priors.md` if present — historical priors from BTC backtest
5. The 3 most recent files in `crypto/learnings/` (sorted filename descending)

## Step 2 — Read market snapshot

Read `data/market-snapshot.json`. The VPS writes this file every 30 minutes with:
- `btc_usdt.price, high_24h, low_24h, mid_24h, range_4h_pct`
- `btc_usdt.bb_1h_20_2` → `{mid, lower, upper, width_pct}`
- `btc_usdt.ema_50_1h`
- `btc_usdt.rsi_14_1h`
- `btc_usdt.streak_above_ema50_1h`, `streak_below_ema50_1h`
- `btc_4h.higher_highs_last_4`, `higher_lows_last_4`, `lower_highs_last_4`, `lower_lows_last_4`
- `funding_rate`

Check `generated_at` — if older than 90 minutes, flag a concern but proceed with what you have.

If the file is missing or unparseable, write a `proposal-routine-needs-snapshot.md` learning and fall back to the default regime.

## Step 3 — Scan for macro events (WebSearch)

WebSearch the following over the next 2 hours:
- FOMC rate decision
- US CPI release
- US NFP release
- Major BTC-specific news (ETF decisions, exchange hacks, regulatory action)

Query suggestion: `"FOMC OR CPI OR NFP today" site:reuters.com OR site:bloomberg.com OR site:marketwatch.com`

If WebSearch fails or returns nothing actionable, assume no events (don't default to `dangerous`).

## Step 4 — Classify regime

Walk through `brain/regime-heuristics.md` top to bottom. First regime whose conditions are met wins. If none match, use `default`.

Use the fields from the snapshot to drive classification — don't invent data. If a required input is missing, pick the closest regime you can justify.

Write a 1–2 sentence `reason` stating **which inputs drove the classification**:
- e.g. "BB width 1.3% on 1h (ranging), BTC within ±2% of 24h midpoint, no events in next 2h → ranging_low_vol"

## Step 5 — Write regime file

Overwrite `data/current-regime.json` with:

```json
{
  "regime": "<classified>",
  "position_pct": <n>,
  "stop_loss_pct": <n>,
  "take_profit_pct": <n>,
  "skip_entries": <bool>,
  "max_trades_per_hour": <n>,
  "reason": "<1-2 sentences>",
  "source": "crypto-regime-routine-<ISO timestamp>"
}
```

Enforce envelope bounds before writing:
- `position_pct` ∈ [5, 50]
- `stop_loss_pct` ∈ [0.25, 2.5]
- `take_profit_pct` ∈ [0.5, 3.0]
- `max_trades_per_hour` ∈ [1, 10]

## Step 6 — Commit memory changes

If during classification you noticed a pattern not covered by `regime-heuristics.md`:
- Write `crypto/learnings/discovery-<slug>.md` OR `crypto/learnings/proposal-<slug>.md`
- Do NOT edit `regime-heuristics.md` directly without a matching discovery learning

Commit:
```bash
git add data/current-regime.json
# Also add any new learning files
git add -A crypto/learnings/
git commit -m "regime: <regime_name> — <1-line reason>"
git push origin main
```

## Step 7 — Output summary

Print a single line as your last output:
```
[REGIME] <regime_name> pos=<n>% sl=<n>% tp=<n>% skip=<bool> — <reason>
```

## Anti-patterns (don't)

- Don't set `skip_entries = true` just because the market is "boring". Boring = ranging = ideal. Skip is for DANGER, not dullness.
- Don't shrink `position_pct` below 10 outside of `trending_down`.
- Don't run longer than 5 minutes of reasoning. Make a call and commit.
- Don't propose a strategy change — out of scope.
- Don't hit Binance or Supabase directly — they're blocked. Use the repo's data files only.
- Don't commit the market-snapshot.json file — that's VPS-owned.

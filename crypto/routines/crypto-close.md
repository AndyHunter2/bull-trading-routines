# Routine: crypto-close

**Cron:** `0 22 * * *` (22:00 UTC daily — after session ends at 22:00)
**Environment:** `trading`
**Purpose:** Review the day's trades, log learnings, commit to memory.

---

You are the end-of-day review for the BTC scalper.

## Step 1 — Read memory

- `CLAUDE.md`
- `crypto/strategy/bb-scalp.md`
- `crypto/brain/regime-heuristics.md`
- Today's regime changes (query Supabase `crypto_regime` history if you have it, else just current)

## Step 2 — Pull today's trades

```bash
TODAY=$(date -u +%Y-%m-%d)
curl -sS "$SUPABASE_URL/rest/v1/crypto_trade_log?trade_date=eq.$TODAY&order=created_at.asc" \
  -H "apikey: $SUPABASE_SERVICE_KEY" \
  -H "Authorization: Bearer $SUPABASE_SERVICE_KEY"
```

Also fetch:
- Today's closed positions with regime recorded in `notes` field
- Current `crypto_config` (cash, realised P&L, trades_today)

## Step 3 — Analyse

For each closed trade (paired BUY + SELL), compute:
- Entry regime (from the BUY notes field — regime name is recorded at entry)
- Entry pattern (red_candle, hammer, doji)
- Hold duration
- Outcome (win/loss)
- Exit reason (take_profit / stop_loss / time_stop / session_end)

Bucket the day's trades by regime + pattern. If there's asymmetry (e.g. hammer pattern won 4/4 in `ranging_low_vol`, red_candle lost 3/4 in `trending_up`), that's a learning.

## Step 4 — Write learnings

Only write a learning if there's a genuinely new insight. "Won 2 of 3 trades today" is not a learning.

Candidates worth writing:
- A pattern-regime combination that significantly over- or under-performed (>2 trades of evidence)
- A regime classification that in hindsight seems wrong (e.g. you called it `ranging_low_vol` but BTC trended +3% — should have been `trending_up`)
- A case where `skip_entries` was triggered and in hindsight was correct / wrong

Format per `crypto/learnings/README.md`.

## Step 5 — Commit

```bash
git add -A
git commit -m "close: <N> trades, <net>, <win_rate>% win rate"
git push origin main
```

Even if no learnings are worth writing, commit the day's summary as a terminal log so next run has the context.

## Anti-patterns (don't)

- Don't write learnings with sample size 1. One trade is not a pattern.
- Don't propose strategy changes from a single day of data.
- Don't update `regime-heuristics.md` directly — write a `discovery-` learning first, let Andy review over time, he decides when to promote.

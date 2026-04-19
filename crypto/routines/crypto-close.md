# Routine: crypto-close

**Cron:** `0 22 * * *` (22:00 UTC daily — after 08–22 UTC trading session closes)
**Purpose:** Review the day's trades from a committed VPS dump, log learnings, commit memory.

---

## Step 1 — Read memory

- `CLAUDE.md`
- `crypto/strategy/bb-scalp.md`
- `crypto/brain/regime-heuristics.md`
- `crypto/brain/backtest-priors.md` if present
- Today's regime (from `data/current-regime.json`)

## Step 2 — Read today's trade dump

Read `data/today-trades.json`. The VPS writes this at 22:05 UTC with:
- Today's trade_log rows (BUY/SELL actions with pattern, rsi, regime, outcome)
- Today's closed position rows (avg_buy_price, current_price, notes JSON)
- End-of-day `crypto_config` state (cash, realised, unrealised)

If the file is missing (VPS writer hasn't run yet), write a `proposal-close-needs-trade-dump.md` learning and exit cleanly.

## Step 3 — Analyse

For each closed trade (paired BUY + SELL), compute:
- Entry regime (from BUY row's `notes.regime`)
- Entry pattern
- Hold duration
- Outcome (win/loss)
- Exit reason (take_profit / stop_loss / time_stop / session_end)

Bucket by regime + pattern. If there's asymmetry with ≥ 3 trades of evidence, that's a learning worth writing.

Compare today's outcomes against the `backtest-priors.md` expectations:
- Is today's win rate in line with historical priors for the regimes we traded?
- Are any patterns significantly under- or over-performing their historical averages?

## Step 4 — Write learnings (if any)

Only write a learning if there's a genuinely new insight. Candidates:
- Pattern-regime combination significantly differing from backtest priors (≥ 3 trades)
- Regime classification that in hindsight was wrong
- A case where `skip_entries` was triggered — was it correct?

Format per `crypto/learnings/README.md`.

## Step 5 — Commit

```bash
git add -A crypto/learnings/
git commit -m "close: <N> trades, <net>, <win_rate>% win rate"
git push origin main
```

Commit even if no learnings — session log is context for next run.

## Step 6 — Output summary

```
[CLOSE] N trades | W wins | £pnl | <pattern-regime callouts>
```

## Anti-patterns (don't)

- Don't write learnings with sample size 1.
- Don't propose strategy changes from a single day.
- Don't update `regime-heuristics.md` directly — propose via `discovery-` learning.
- Don't hit Supabase. Read `data/today-trades.json` only.

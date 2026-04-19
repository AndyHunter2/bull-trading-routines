# Routine: crypto-close

**Cron:** `0 22 * * *` (22:00 UTC daily — after the 08-22 UTC trading session closes)
**Purpose:** Review the day's trades, log learnings, commit memory.

---

You are the end-of-day review for the BTC scalper.

## Step 0 — Load credentials

Read `shared/credentials.md` and inline `SUPABASE_URL` + `SUPABASE_ANON_KEY`.

## Step 1 — Read memory

- `CLAUDE.md`
- `crypto/strategy/bb-scalp.md`
- `crypto/brain/regime-heuristics.md`
- Today's regime history (current row + anything you can infer from regimes mentioned in position `notes`)

## Step 2 — Pull today's trades

```bash
TODAY=$(date -u +%Y-%m-%d)
curl -sS "$SUPABASE_URL/rest/v1/crypto_trade_log?trade_date=eq.$TODAY&order=created_at.asc" \
  -H "apikey: $SUPABASE_ANON_KEY" \
  -H "Authorization: Bearer $SUPABASE_ANON_KEY"
```

Also pull:
- Today's closed positions: `crypto_portfolio?entry_date=eq.$TODAY`  (regime is in `notes` JSON)
- Current `crypto_config` (cash, realised P&L, trades_today)

## Step 3 — Analyse

For each closed trade (paired BUY + SELL), compute:
- Entry regime (from BUY position's `notes.regime` — regime was recorded at entry)
- Entry pattern (red_candle, hammer, doji)
- Hold duration
- Outcome (win/loss)
- Exit reason (take_profit / stop_loss / time_stop / session_end)

Bucket the day's trades by regime + pattern. If there's asymmetry (e.g. hammer pattern won 4/4 in `ranging_low_vol`, red_candle lost 3/4 in `trending_up`) and evidence is ≥ 3 trades, that's a learning worth writing.

## Step 4 — Write learnings (if any)

Only write if there's a genuinely new insight. "Won 2 of 3 today" is not a learning.

Candidates worth writing:
- A pattern-regime combination that significantly over- or under-performed (≥ 3 trades evidence)
- A regime classification that in hindsight seems wrong (e.g. called it `ranging_low_vol` but BTC trended +3% — should have been `trending_up`)
- A case where `skip_entries` was triggered and turned out correct or wrong

Format per `crypto/learnings/README.md`.

## Step 5 — Commit

```bash
git add -A
git commit -m "close: <N> trades, <net>, <win_rate>% win rate"
git push origin main
```

Commit even if no learnings written — the session log becomes context for next run.

## Step 6 — Output summary

```
[CLOSE] N trades | W wins | £pnl | <pattern-regime callouts>
```

## Anti-patterns (don't)

- Don't write learnings with sample size 1.
- Don't propose strategy changes from a single day.
- Don't update `regime-heuristics.md` directly — write a `discovery-` learning first, let Andy promote it.
- Don't write to any Supabase table. You're read-only in this routine.

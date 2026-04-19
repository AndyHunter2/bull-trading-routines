# Routine: crypto-weekly

**Cron:** `0 10 * * 0` (Sunday 10:00 UTC)
**Purpose:** Weekly strategy review — grade, promote or retire heuristics, write the weekly summary.

---

You are the weekly reviewer for the BTC scalper. Your deliverable:
1. Grade the week
2. Promote promising `discovery-` heuristics into `regime-heuristics.md`
3. Write `proposal-retire-*.md` for rules that consistently failed
4. Write one weekly summary learning

## Step 0 — Load credentials

Read `shared/credentials.md` and inline `SUPABASE_URL` + `SUPABASE_ANON_KEY`.

## Step 1 — Read memory

- `CLAUDE.md`
- `crypto/strategy/bb-scalp.md`
- `crypto/brain/regime-heuristics.md`
- All learnings from the last 7 days in `crypto/learnings/`

## Step 2 — Pull the week's data

```bash
WEEK_START=$(date -u -d '7 days ago' +%Y-%m-%d)
curl -sS "$SUPABASE_URL/rest/v1/crypto_trade_log?trade_date=gte.$WEEK_START&order=created_at.asc" \
  -H "apikey: $SUPABASE_ANON_KEY" \
  -H "Authorization: Bearer $SUPABASE_ANON_KEY"
```

Also:
- `crypto_portfolio?entry_date=gte.$WEEK_START`
- Current `crypto_config`

## Step 3 — Report card

For the week:
- Total trades, win rate, net P&L
- P&L split by regime (how does each regime actually perform?)
- Best pattern, worst pattern
- Worst single trade — what went wrong?

## Step 4 — Promote learnings

Review this week's `discovery-*.md`. For each, does the week's evidence still support it?
- If yes: edit `regime-heuristics.md`, add the new section, link back to the source learning file. Commit with `brain: promote <heuristic name>`.
- If no: leave the discovery in place (historical record).

## Step 5 — Retire failing rules

If a rule in `regime-heuristics.md` led to consistently losing trades this week (≥ 3 trades, net negative), write `crypto/learnings/proposal-retire-<rule>.md` with evidence. Do NOT retire the rule yourself — it needs Andy's sign-off.

## Step 6 — Write the weekly summary

`crypto/learnings/YYYY-MM-DD-weekly-review.md`:

```markdown
# Week ending 2026-04-19

**Trades:** N
**Win rate:** X%
**Net P&L:** £Y
**Grade:** A | B | C | D | F

## What worked
- …

## What failed
- …

## Heuristics changed
- Promoted: <name>
- Retired (proposed): <name>

## Next week focus
- One concrete thing to watch for next week.
```

## Step 7 — Commit

```bash
git add -A
git commit -m "weekly: <N> trades, <net>, grade <letter>"
git push origin main
```

## Step 8 — Output summary

```
[WEEKLY] <grade> | N trades | £pnl | promoted=<n> retire-proposed=<n>
```

## Anti-patterns (don't)

- Don't grade yourself generously. −£50 on a £100 sandbox = D.
- Don't promote a heuristic on a single week's evidence unless the signal is very strong (≥ 5 trades, >70% win rate).
- Don't retire a failing rule unilaterally. Proposal only.
- Don't write to any Supabase table. Read-only.

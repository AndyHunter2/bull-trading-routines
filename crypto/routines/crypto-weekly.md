# Routine: crypto-weekly

**Cron:** `0 10 * * 0` (Sunday 10:00 UTC)
**Environment:** `trading`
**Purpose:** Weekly strategy review — reweight heuristics based on the week's evidence.

---

You are the weekly reviewer for the BTC scalper. Your deliverable is:
1. Grade the week
2. Identify patterns worth promoting to `regime-heuristics.md`
3. Identify rules in `regime-heuristics.md` that consistently failed
4. Write a weekly summary learning

## Step 1 — Read memory

- `CLAUDE.md`
- `crypto/strategy/bb-scalp.md`
- `crypto/brain/regime-heuristics.md`
- **All** learnings from the last 7 days in `crypto/learnings/`

## Step 2 — Pull the week's data

```bash
WEEK_START=$(date -u -d '7 days ago' +%Y-%m-%d)
curl -sS "$SUPABASE_URL/rest/v1/crypto_trade_log?trade_date=gte.$WEEK_START&order=created_at.asc" \
  -H "apikey: $SUPABASE_SERVICE_KEY" \
  -H "Authorization: Bearer $SUPABASE_SERVICE_KEY"
```

Also:
- All `crypto_portfolio` rows from the last 7 days
- `crypto_config` current state

## Step 3 — Report card

For the week:
- Total trades, win rate, net P&L
- P&L split by regime (how does each regime actually perform?)
- Best pattern, worst pattern
- Worst single trade — what went wrong?

## Step 4 — Promote learnings

Review this week's `discovery-*.md` and `proposal-*.md` learnings. For each:
- Does the evidence over the full week still support it?
- Should a `discovery` heuristic be promoted into `regime-heuristics.md`?

If yes: edit `regime-heuristics.md`, add the new section, link to the source learning. Commit with message `brain: promote <heuristic name>`.

If no: leave the learning as-is (it remains a historical record).

## Step 5 — Retire failing rules

If a rule in `regime-heuristics.md` led to trades that consistently lost this week, write a `proposal-retire-<rule>.md` with evidence. Do NOT retire the rule unilaterally — it needs Andy's sign-off.

## Step 6 — Write the weekly summary

`learnings/YYYY-MM-DD-weekly-review.md`:

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

## Anti-patterns (don't)

- Don't grade yourself generously. If the week was −£50 on a £100 sandbox, that's a D.
- Don't promote a heuristic with only one week of evidence unless the signal is very strong.
- Don't retire a failing rule in a single action — write the proposal, let it sit a week, review again next Sunday.

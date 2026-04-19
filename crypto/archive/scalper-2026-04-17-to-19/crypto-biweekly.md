# Routine: crypto-biweekly

**Cron:** `0 10 */2 * *` (every 2 days, 10:00 UTC)
**Purpose:** Fast-cadence strategy review — grade the period, promote/retire heuristics, iterate.

This replaces the weekly review pattern with a tighter 2-day loop per Andy's request: "measure, fine tune, repeat — until we have the Shark of Crypto Trading."

---

## Step 1 — Read memory

- `CLAUDE.md`
- `crypto/strategy/bb-scalp.md`
- `crypto/brain/regime-heuristics.md`
- `crypto/brain/backtest-priors.md` — the historical baseline to grade against
- All `crypto/learnings/` files from the last 3 days

## Step 2 — Read the period's data

Read `data/period-trades.json` (written by VPS on schedule; covers last 2 days).
Read `data/period-regimes.json` (written by VPS; logs every regime change in the period).

## Step 3 — Report card

For the 2-day window:
- Total trades, win rate, net P&L (gross and after 0.2% round-trip commission)
- Win rate split by regime — does any regime under-perform its backtest prior?
- Best and worst pattern
- Regime classification accuracy: for each regime change, did the subsequent hour's price action confirm or contradict the classification?
- Grade: A / B / C / D / F based on net P&L vs backtest prior expected P&L for the regimes seen

## Step 4 — Promote learnings

For each `discovery-*.md` written this period, does the 2-day evidence support it?
- If yes AND consistent with `backtest-priors.md`: edit `regime-heuristics.md`, add/refine the rule, link to the source learning. Commit message: `brain: promote <heuristic name>`.
- If no: leave the discovery as historical record.

## Step 5 — Retire failing rules

For any rule in `regime-heuristics.md` that led to ≥ 3 net-negative trades this period: write `crypto/learnings/proposal-retire-<rule>.md` with evidence. Do NOT retire the rule yourself — needs Andy's sign-off.

## Step 6 — Write the biweekly summary

`crypto/learnings/YYYY-MM-DD-biweekly-review.md`:

```markdown
# Biweekly review — ending 2026-04-21

**Trades:** N (gross £X, net £Y after commission)
**Win rate:** Z% (backtest prior for this regime mix: W%)
**Grade:** A | B | C | D | F
**Cumulative realised since reset:** £K

## What worked
- …

## What failed
- …

## Regime classification accuracy
- Calls made: N | Subsequently confirmed: M | Contradicted: K

## Heuristics changed
- Promoted: <name>
- Retired (proposed): <name>

## Next 2-day focus
- One concrete thing to watch.
```

## Step 7 — Commit

```bash
git add -A crypto/learnings/ crypto/brain/regime-heuristics.md
git commit -m "biweekly: grade <letter>, <n> trades, <net>, <promoted/retired>"
git push origin main
```

## Step 8 — Output summary

```
[BIWEEKLY] <grade> | N trades | £pnl | promoted=<n> retire-proposed=<n>
```

## Anti-patterns (don't)

- Don't grade generously. A 2-day period of −£1 on £100 = C. −£3 = D. −£5 = F.
- Don't promote a heuristic from 3–5 trades of evidence. Wait for 10+ unless signal is extremely strong (>75% win rate).
- Don't retire a failing rule unilaterally. Propose only.
- Don't hit Binance or Supabase. Repo data files only.

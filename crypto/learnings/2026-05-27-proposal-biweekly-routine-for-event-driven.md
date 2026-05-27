# Proposal: biweekly review routine for event-driven strategy

**Date:** 2026-05-27
**Routine:** (would-be) crypto-biweekly
**Category:** proposal

## Observation

Andy invoked `crypto/routines/crypto-biweekly.md` today with 2-day cadence framing (was weekly): "reads last 2 days of trades, grades against backtest-priors.md, promotes or retires heuristics."

Three breaks blocked direct execution:

1. **Routine file missing** from `crypto/routines/`. Only `crypto-event-scan.md` and `crypto-event-review.md` live there. The archived template `archive/scalper-2026-04-17-to-19/crypto-biweekly.md` was for the retired BB-scalper, written against scalper P&L and `regime-heuristics.md`.
2. **`backtest-priors.md` missing** from current `crypto/brain/`. Only `event-playbooks.md`. The backtest-priors file lives in the same scalper archive.
3. **Zero trades.** Per `strategy/event-driven.md`: "Status: Design phase. No live trades yet." No `crypto/data/` dir, no `trade-proposal-*` or `outcome-*` learnings, no `recent-trade-outcome.json`. Frequency target is 5–15 trades/year — a 2-day window will routinely contain zero. Binance egress also still blocked, 38d since `2026-04-19-incident-egress-blocked` chain.

Per CLAUDE.md anti-patterns ("Don't promote a heuristic from 3–5 trades", "Don't grade generously") and rule 4 ("Read before writing"), zero trades → no grade possible without fabrication. None attempted.

## Reasoning

A 2-day cadence routine still has value with zero trades, if redirected from P&L grading to **briefings + playbook-gap + Andy-decision-queue digest**. Carried gaps (geopolitical/oil-shock playbook, PCE/GDP/PPI entries, covered-call sub-class, ETF-rotation-within-crypto, narrow-foreign-sanctions, cluster meta) have been flagged in every event-scan since 05-19+ with no Andy action — a biweekly digest surfaces that stagnation in one place rather than buried in daily scans.

## Action taken

None on `routines/`. Not creating `routines/crypto-biweekly.md` unilaterally — CLAUDE.md rule 6 (no new strategies/processes without Andy approval).

## Proposed spec (for Andy approval before landing)

- **Cron:** `0 10 */2 * *` (every 2 days, 10:00 UTC).
- **Read:** CLAUDE.md, `strategy/event-driven.md`, `brain/event-playbooks.md`, last-2-days `briefings/*`, last-7-days `learnings/*`.
- **Pre-first-trade mode** (current reality): "gap digest only." Sub-classes recurring ≥3 scans → `proposal-playbook-add-*.md`; gaps unmoved >7d → single Andy-decision-queue learning; egress + infrastructure status check. No P&L sections.
- **Post-first-trade mode:** grade against `event-playbooks.md` (NOT `backtest-priors.md` — archive only). Aggregate trends only. Playbook updates require n≥5 same-event-type trades (softened from archived "n≥10" given the 5–15/yr cadence — 10 would mean 1+ year of waiting).
- **Anti-patterns:** Skip P&L in zero-trade periods. No strategy-envelope changes unilateral. No fabricated consensus pins. Don't grade what can't be graded.

## How to apply in future

If Andy approves: move this spec to `crypto/routines/crypto-biweekly.md`, drop the `proposal-` prefix on this file, first live run 2026-05-29 (next 2-day mark). Until then, do not run.

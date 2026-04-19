# Event-Driven BTC Strategy (Option C)

**Owner:** Human-edited. Routines MAY NOT modify this file.
**Created:** 2026-04-19
**Status:** Design phase. No live trades yet.

---

## The thesis

Pure technical analysis on liquid BTC has no fee-covering edge at retail scale (proven via 2-year backtest, April 2026). The market is too efficient at the 5m–4h candle level for simple mean-reversion or momentum rules to net-positive after 0.04–0.2% round-trip fees.

Event-driven trading exploits **predictable behaviour** around known catalysts:

1. **Scheduled macro events** — FOMC rate decisions, US CPI, US NFP, ECB, BOE, PPI. These release at specific times, and BTC's reaction is often biased (e.g., post-dovish-CPI BTC rallies 70%+ of the time historically).
2. **Unscheduled crypto-specific news** — ETF decisions, exchange hacks, regulatory actions, major protocol exploits. Usually result in sharp directional moves within hours.
3. **Pre-event positioning** — in the 24–48h before a major event, BTC often builds directional momentum that continues through the release OR reverses sharply.

Edge exists because:
- Fees are a much smaller % of a 3–5% event-move than a 1% scalp move
- Position is held for hours to days (not minutes) so fees → negligible
- Volume and liquidity spike around events → better execution
- Surprises create structural imbalances that take time to resolve

## What this strategy is NOT

- **Not scalping.** Hold times are hours to days, not minutes.
- **Not continuous.** 5–15 trades per year, not dozens per day.
- **Not fully automated on v1.** Human-in-the-loop approval before execution until confidence is established.
- **Not a mystery box.** Every trade has a documented catalyst + historical base rate.

## Core loop

```
Daily (08:00 UTC)  →  routine scans for upcoming events (next 7 days)
                  →  writes upcoming-events.md briefing
                  →  commits to repo

Event +4h window   →  routine reviews event outcome vs consensus
                  →  writes trade-proposal-<slug>.md
                  →  commits + emails Andy for approval

Andy approves      →  routine (or VPS) executes paper trade at Binance
                  →  holds for TP/SL or time stop

Event +24-72h      →  routine writes post-trade learning
                  →  commits to learnings/
```

## Entry rules (v1)

An event qualifies for a trade if ALL are true:

1. **Known event category** — listed in `brain/event-playbooks.md` with a documented historical edge
2. **Surprise direction is clear** — actual vs consensus is outside 1σ, and the historical playbook maps that surprise to a directional bet
3. **BTC pre-event volatility is normal** — not in a crash / mania phase (BB width 1h < 4%)
4. **No conflicting event within 48h** — avoid overlap noise
5. **Andy approves** — via email reply OR manual trigger

## Exit rules (v1)

- **Time-based primary**: close at event + 24h regardless, unless hitting TP/SL first
- **TP**: +3% from entry (typical major-event move)
- **Hard SL**: −2% from entry (asymmetric R/R favouring TP given positive-expectancy setup)
- **Discretionary override**: Andy can close any position manually at any time

## Position sizing (v1)

- Paper sandbox: £100 capital
- Max per trade: 30% of capital = £30 notional at 1x leverage
- If edge proves at 1x: consider 2x at £200 capital, 3x at £500 capital — NEVER more than 3x
- **No leverage without 20+ trades of proven positive edge at 1x**

## What counts as "edge proven"

- 20+ event trades executed at 1x over 3–6 months
- Net positive after fees
- Win rate consistent with the `brain/event-playbooks.md` priors (within 10 percentage points)
- Max drawdown <15% of capital
- No single loss >3% of capital

Only then do we consider scaling up or adding leverage.

## What this strategy does NOT handle

1. **Flash crashes / exchange outages** — out of scope. Use limit orders with sensible SL.
2. **Crypto-wide contagion** (e.g., stablecoin depeg) — the routine may not catch it in time. Accept some tail risk.
3. **Regulatory surprises from jurisdictions we don't monitor** — Asia / EU news may move BTC overnight without trigger firing.

## Why this is different from previous attempts

| | BB Scalper (archived) | Event-Driven (new) |
|---|---|---|
| Trade frequency | 16/day | 5-15/year |
| Hold time | 30 min average | 4-24 hours |
| Fee as % of expected move | 20-200% (eats edge) | <5% (negligible) |
| Edge source | Mean reversion / technicals | Catalyst + surprise reaction |
| Backtestable? | Yes (and edge disproven) | Partially (historical events database) |
| Human-in-the-loop? | No | Yes (v1) |

## Rules for modifying this file

Only Andy. Routines write proposals via `learnings/proposal-*.md`; Andy edits this strategy file.

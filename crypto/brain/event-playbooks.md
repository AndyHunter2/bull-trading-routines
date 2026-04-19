# Event Playbooks — BTC reactions to scheduled + unscheduled catalysts

**Owner:** Evolved by `crypto-event-review` routine after each traded event. Humans may edit.

This file encodes what typically happens to BTC around specific event types. Each playbook describes the event, its directional bias, and the trade template.

**Historical priors are approximate** and derived from published studies / CoinMetrics-style reports. The routine will refine these numbers as we accumulate actual trades.

---

## Playbook: FOMC Rate Decision

**Event:** Federal Open Market Committee announces interest rate decision (8 times per year, 14:00 ET).

**Typical timeline:**
- T−30 min: BTC volatility drops (pre-event drift quiet)
- T+0: Rate decision released, statement 15 min later
- T+15 min: Press conference starts, large directional moves
- T+60 min to T+4h: Major follow-through or reversal

**Directional bias:**

| Surprise | Historical BTC reaction (T+0 to T+24h) | Approx base rate |
|---|---|---|
| Dovish surprise (rate cut > consensus, or hold when hike expected) | UP +2 to +5% | ~72% |
| Hawkish surprise (rate hike > consensus, or hold when cut expected) | DOWN −1 to −4% | ~64% |
| In-line (as expected) | Mixed, often chops, no clear bias | ~50% |

**Trade template:**
- Entry: market buy/sell at T+30 min (after initial whipsaw clears)
- TP: +3% from entry
- SL: −2% from entry
- Time stop: T+24h

---

## Playbook: US CPI Release

**Event:** Consumer Price Index released (monthly, ~13:30 UTC).

**Directional bias:**

| Surprise | BTC reaction (T+0 to T+24h) | Base rate |
|---|---|---|
| CPI < consensus (dovish for Fed) | UP +1.5 to +4% | ~68% |
| CPI > consensus (hawkish for Fed) | DOWN −1 to −3% | ~60% |
| In-line | Small drift in prevailing trend | ~50% |

**Trade template:** same as FOMC but TP +2%, SL −1.5% (smaller typical magnitude).

---

## Playbook: US NFP (Non-Farm Payrolls)

**Event:** Monthly employment report (first Friday, 13:30 UTC).

**Directional bias:**
Less consistent than CPI. Jobs-strong can be risk-on (UP) or hawkish-for-Fed (DOWN) depending on context.

**Trade template:** skip unless extreme surprise (>2σ). When traded: TP +2%, SL −1.5%, T+12h time stop.

---

## Playbook: BTC Spot ETF News

**Event:** SEC decisions on BTC ETF applications, approvals, denials, extensions.

**Directional bias:**

| News | BTC reaction | Base rate |
|---|---|---|
| Approval of new ETF | UP +3 to +8% within 24h | ~75% |
| Rejection / denial | DOWN −2 to −5% within 24h | ~70% |
| Extension / delay | Usually DOWN small, uncertainty premium | ~55% |

**Trade template:**
- Trigger: news wire confirms decision (use WebSearch for reliable source)
- Entry: within 30 min of confirmed news
- TP: +5% (approval) / −3% (rejection, short via perpetuals)
- SL: −3% (approval) / +2% (rejection)
- Time stop: T+48h

---

## Playbook: Major Exchange Hack / Outage

**Event:** Binance, Coinbase, or top-10 exchange confirms loss of funds or extended outage.

**Directional bias:**
Almost always DOWN first (panic selling), then partial recovery. Magnitude depends on scale.

**Trade template:**
- Trigger: confirmed from 2+ reputable sources
- Entry: market sell within first hour (short on perpetuals if authorised)
- TP: −5% or larger (depending on hack scale)
- SL: +2% (cover if it's a false alarm)
- Time stop: T+12h (crowd forgets quickly)

**Risk:** false confirmations. Require 2 sources (Bloomberg, Reuters, WSJ, major crypto media) before trading.

---

## Playbook: Major Regulatory Action

**Event:** Significant regulatory announcement (SEC enforcement, country-level ban, major policy).

**Directional bias:**

| Action | Usual BTC reaction | Base rate |
|---|---|---|
| Major country ban | DOWN −3 to −8% | ~70% |
| Major enforcement (against exchange) | DOWN −2 to −5% | ~65% |
| Pro-crypto regulatory clarity | UP +2 to +5% | ~60% |

**Trade template:** scale with confidence; smaller size than scheduled events.

---

## Playbook: Protocol Exploit (BTC-specific or major altchain)

For BTC-specific: protocol bugs that threaten chain integrity. Extremely rare. If one happens, it would be catastrophic — probably don't trade, just HODL cash.

For altchain exploits (e.g., Ethereum L1 bug, major DeFi hack): usually DOWN on BTC by sympathy. Smaller magnitude (−1 to −3%), shorter duration.

---

## What this file is NOT

- Not a list of trade orders. It's a reference for pattern matching.
- Not a guarantee. Base rates are historical priors; any individual event may buck the pattern.
- Not exhaustive. New event categories can be added by Andy.

## When routines update this file

When a traded event outcome is reviewed (via `crypto-event-review` routine):

1. If the outcome matches the playbook: increment the "observed" counter (in a `_observations.md` file), reinforcing confidence.
2. If the outcome contradicts: write `learnings/discovery-<slug>.md` with evidence.
3. After 5+ contradictions of the same playbook: routine writes `proposal-retire-<playbook>.md` for Andy's review.

Andy approves or rejects any edit to base rates. Routines only propose.

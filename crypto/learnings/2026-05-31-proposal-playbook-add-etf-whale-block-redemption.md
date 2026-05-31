# Proposal: add ETF-whale-block-redemption sub-class to `brain/event-playbooks.md`

**Date:** 2026-05-31
**Routine:** crypto-biweekly (2-day cadence, second run, pre-first-trade gap-digest mode)
**Category:** proposal — playbook-add (sub-class under or sibling to `Major Exchange Hack / Outage` framing? or under `BTC Spot ETF News`? — see "Open question" below)

## Observation

Across the 05-28 / 05-29 / 05-30 / 05-31 event-scan chain (4 scans, all in the last week), a distinct sub-class of BTC spot-ETF flow event has crystallised that is **mechanically separate from the carried "ETF-rotation-within-crypto" and "spot-ETF-news-approval/rejection" framings already in `event-playbooks.md` (the latter under `BTC Spot ETF News`).** Per the 05-27 spec for this routine: sub-classes recurring ≥3 scans → `proposal-playbook-add-*.md`. Threshold crossed at 4 scans with magnitude calibration sharpening each scan (not flat restatement).

The recurring evidence:

| Scan | Genuinely-new datapoint | BTC tape co-movement |
|---|---|---|
| 05-28 | ~29.2M IBIT shares sold in one NY session 05-27 (~$1.29B dark-pool block at ~$43/share) | $78k → $76.5k intraday on the print |
| 05-29 | IBIT $527.84M single-day Wed 05-28 — **second-largest single-day on record** since Jan-2024 launch (Coindesk; Cryptobriefing reads variant "ever") | sub-$73k confirmed by Yahoo / Fortune / The Block |
| 05-30 | 9-session consecutive complex outflow streak / **$2.8B cumulative since 05-14** (Coindesk); timestamp correction Wed 05-27 was $733.43M record / Thu 05-28 was $228.88M | $72,978 Asian-hours low; $73,485/$73,786 liq-shelf broken without cascade |
| 05-31 | 10-session streak EXTENDED Fri 05-29: **$105.2M complex / IBIT $68.9M / FBTC $36.3M** (Phemex / ainvest); $2.9B+ cumulative; **largest sustained ETF-redemption cycle since IBIT inception Jan-2024** | $73,400 (Sat) → $73,876 (Sun); $73k floor held weekend without $70k cascade |

This is not a "rejection / denial" event under the existing `BTC Spot ETF News` playbook — there is no SEC decision driving it. It is not an exchange-hack event under `Major Exchange Hack / Outage` — no panic-selling-then-recovery shape. **It is a structural mechanical-redemption pattern where the spot-BTC tape is gripped by the ETF flow regime itself, with distinct sub-patterns for concentrated single-block events vs dispersed multi-day streaks at the same dollar-aggregate.**

## Reasoning

Three mechanically distinct sub-patterns are observable in the 4-scan window:

**(a) Whale-block redemption** — single-session high-concentration single-share-block (29.2M IBIT shares in one session = ~$1.29B at ~$43/share). Price impact lands within the same NY-session hours. Visible in dark-pool prints.

**(b) Single-day record outflow** — large but dispersed-across-day complex pull (e.g., IBIT $527.84M / complex $733.43M Wed 05-27, second-largest on record). Price impact lands within 24h.

**(c) Multi-day capitulation streak** — sustained consecutive-session outflow (10 sessions, $2.9B+ cumulative). Price impact lands over the streak duration; the tape mechanical regime degrades floor-by-floor rather than spiking on any single day.

**Sub-patterns (a) and (b) overlap mechanically at the same $-aggregate but have different price-impact-per-billion-redemption signatures** — per the 05-29 digest analysis, "price impact per $bn differs by ~order of magnitude" between single-block-vs-dispersed at the same $-total. Sub-pattern (c) is what mechanically transmits the bear-flow regime into a multi-week tape degradation (sub-$76k → sub-$74.5k → sub-$73k floor-breaks across the 05-26 → 05-30 window).

**Why this is not just "trade the spot tape directly":** Event-driven entries need a documented catalyst + base-rate per `strategy/event-driven.md` rule 1 ("Known event category — listed in `brain/event-playbooks.md` with a documented historical edge"). The ETF-flow datapoint is a daily-published Bloomberg / Farside Investors data release, occurring at a predictable timestamp (~T+1d after the trading session settles). It IS a scheduled-data event in the same sense PCE / CPI / NFP are scheduled-data events — and it has a documented BTC-reaction pattern that the carried `BTC Spot ETF News` playbook does not capture (the existing entry handles SEC approval / rejection / delay decisions, not ongoing-flow regime).

## Proposal

Add a new sub-class under `BTC Spot ETF News`, or as a standalone sibling playbook, with rough first-pass parameters for Andy to approve / reject / refine:

```
## Playbook: ETF-Mechanical-Redemption Regime (sub-class of BTC Spot ETF News, or standalone)

**Event:** Spot-BTC-ETF complex daily / weekly flow data, published with T+1d lag by Farside Investors / Bloomberg / individual fund disclosures (BlackRock IBIT, Fidelity FBTC, ARKB, etc.).

**Three sub-patterns:**

(a) Whale-block redemption — single-session single-block ≥$500M (e.g., 29.2M-share IBIT block 05-27 ~$1.29B). Visible in dark-pool prints / TRF data.
(b) Single-day record outflow — complex-aggregate ≥$500M dispersed across session (e.g., 05-28 IBIT $527.84M / complex $733.43M).
(c) Multi-day capitulation streak — ≥5 consecutive sessions of net outflow with cumulative ≥$1.5B.

**Directional bias (PRIOR — no calibration trades yet, historical priors are speculative until n≥5):**

| Sub-pattern | BTC reaction T+0 to T+24h | Approx base rate (estimated, not yet validated) |
|---|---|---|
| (a) Whale-block ≥$500M single-session | DOWN −1.5 to −3% within same NY-session, partial mean-revert next 24-48h | ~?% — unknown, needs calibration |
| (b) Single-day record outflow ≥$500M | DOWN −1 to −2.5% within T+24h | ~?% — unknown, needs calibration |
| (c) Multi-day capitulation streak ≥5 sessions / $1.5B | Floor-by-floor tape degradation; mechanical step-down per liquidation-density shelf; cascade-risk if floors break consecutively | ~?% — unknown, needs calibration |

**Trade template (DRAFT — magnitudes for Andy approval, NOT for unilateral execution):**

- Trigger (a): confirmed single-session block ≥$500M from 2+ data sources (Farside + dark-pool print). Entry: market SHORT within 30 min of confirmation. TP: −2%, SL: +1.5%, Time stop: T+12h.
- Trigger (b): confirmed daily flow ≥$500M complex from 2+ sources (Farside + Coindesk / Bloomberg). Entry: market SHORT at T+30 min after Farside publishes. TP: −1.5%, SL: +1%, Time stop: T+24h.
- Trigger (c): streak ≥5 sessions / $1.5B cumulative + tape ALREADY sub-recent-floor. SKIP entries this regime (no LONG signal will fire cleanly; SHORT signals risk catching the mean-revert).

**Risk:** historical priors here are EVIDENCE-FREE — derived from 4 scans of one ongoing regime (the 05-19 → 05-30+ cycle). The base rates are placeholder. **Per `strategy/event-driven.md` "edge proven" criteria, this needs 20+ trades at 1x over 3–6 months before any leverage consideration.** The first 5 trades will recalibrate the base rates substantially.

**State-conditional overlay (required, not optional):** Per the 05-29 digest PCE calibration learning ("regime-overlay required, not CPI-template clean transfer"), ETF-mechanical-redemption reactions should be conditioned on:
- Macro backdrop (Fed-stance, recent CPI/PCE prints)
- Geo backdrop (kinetic risk, oil shocks)
- Tape regime (BB-width 1h, distance to nearest liquidation-density shelf)
- Coincident regulatory events (SEC / CFTC announcements within 48h)
```

**Threshold and base-rate calibration are both for Andy to decide.** The $500M cutoff is a first-pass: the 05-28 IBIT $527.84M and 05-27 $1.29B block both land above it, the Fri 05-29 $105.2M does not (but contributes to streak sub-pattern (c)). Per CLAUDE.md anti-pattern ("don't promote a heuristic from 3-5 trades"), the priors above are explicitly placeholders that the first ~5 calibration trades will replace.

## What I did NOT do

- **Did not edit `brain/event-playbooks.md` directly.** Per CLAUDE.md rule 6, playbook adds require Andy approval. This file is the proposal.
- **Did not propose a parameter envelope change to the existing strategy.** Position sizing / TP / SL ranges in this proposal are within the `strategy/event-driven.md` v1 envelope (TP +3%, SL −2%; this proposal narrows TP/SL for the smaller-typical-magnitude flow events, which is consistent with how the carried `BTC Spot ETF News` and `US CPI Release` playbooks already vary magnitude).
- **Did not act on the sub-patterns above unilaterally.** No trade fired in the 05-29 → 05-31 window despite the 4-scan evidence — rule 6 binds (no Andy-approved entry).
- **Did not include the dispersed-retail-rotation framing** ("ETF-rotation-within-crypto" — BTC/ETH outflows vs HYPE/XRP/SOL inflows) as a sub-pattern. That's a flow-color framing without a discrete trade trigger, and the 05-29 / 05-30 / 05-31 scans confirm it is "substantially overshadowed by whale-block-redemption framing." Carried separately for `crypto-event-review`.

## How to apply in future

Until this proposal is adopted, modified, or rejected:

- **Scanner mode (`crypto-event-scan`):** continue flagging ETF-flow-magnitude as ★ DOMINANT crypto-specific datapoint when sub-pattern (a) or (b) thresholds are crossed; carry sub-pattern (c) as standing tape-regime context. Do NOT escalate to URGENT — covered-call sub-class precedent (BITA) confirms rule-6 binds on unmapped sub-classes even at decision-day timing.
- **Biweekly mode (this routine):** continue tracking scan-count for each sub-pattern. If the 06-02 / 06-04 / 06-06 digest chain extends the streak to 12+ sessions or sees a new ≥$500M whale-block, **reinforce this proposal-write** rather than write a new one (additional restatement-only). If the streak breaks (single-day inflow Mon 06-01) and the regime resolves, **note the resolution** in the next digest as part of the sub-pattern (c) calibration anchor — first real-world close-of-streak datapoint.
- **Decision-queue priority:** below "Iran / oil-shock playbook entry" (still phase-12 slow-drag bidirectional, no Step-5 path) but ABOVE "covered-call sub-class" (BITA already ran past runway 05-30 silent — runway-closed cycle is harder to action than a still-open ETF-flow regime).

## Companion artifacts

- `crypto/learnings/2026-05-31-biweekly-gap-digest.md` — the parent digest that triggered this proposal-write via the ≥3-scan threshold spec.
- `crypto/learnings/2026-05-27-proposal-biweekly-routine-for-event-driven.md` — the spec under which this file is being written.
- `crypto/briefings/2026-05-28/29/30/31-event-scan.md` — the four-scan evidence chain documented in the table above.

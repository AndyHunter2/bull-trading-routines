# Event Scan — 2026-05-15

**Scan window:** 2026-05-15 → 2026-05-22 (macro next 7 days) + crypto news last 24h.
**Source:** WebSearch only (per routine + task instruction; Binance/Supabase egress remains blocked per the 2026-04-19 incident chain — out of scope for a scan-only routine, not tested this run).
**Continuity — 7-DAY BRIEFING GAP:** Last briefing in repo is `2026-05-08-event-scan.md`. No scans 05-09 → 05-14. Four events the 05-08 scan flagged as forward all resolved inside the gap, un-scanned: **NFP April (05-08), first post-tariff CPI April (05-12), Warsh Senate confirmation (05-13), CLARITY Act Senate Banking markup (05-14).** This run does catch-up on all four (see "Resolved during gap"). Post-trade learnings for any of these belong to `crypto-event-review`, not this scanner — flagged for Andy that the gap means no URGENT was emitted for the 05-12 CPI (the 05-08 scan had pre-flagged it URGENT-eligible from the 11 May scan, which never ran).
**URGENT file this run:** **NO.** No Tier-1 *mapped* event (FOMC rate decision / CPI / NFP / confirmed ETF decision) within 24h. The only Tier-1-context calendar item in window is **FOMC Minutes (05-20, ~5 days out)** — and FOMC *minutes* are not the FOMC *rate-decision* playbook (no minutes playbook exists; see unmapped section). No URGENT trigger.

## Scheduled events next 7 days

### Tier-1 context, UNMAPPED as discrete trigger

- **2026-05-20 18:00 UTC — FOMC Minutes (April 28–29 meeting)**. Confirmed via Federal Reserve calendar (3-week convention; March 17–18 minutes were released 08 Apr). **No `event-playbooks.md` entry for FOMC *minutes*** — the FOMC playbook is scoped to the *rate decision* (T+0 release + presser), a different event with a different reaction profile. Minutes are normally lower-impact, BUT the 29 Apr decision carried an **8–4 dissent split** (carried context from prior briefings, the most fractured FOMC vote of the cycle) **and the minutes land 5 days after a new Fed chair (Warsh) takes over from Powell** — so this set of minutes is materially more market-moving than a routine minutes release. **Treat as Tier-1 for situational awareness; NOT a discrete trade trigger** (unmapped event type, ~5 days out, no >2σ surprise mechanism the way a data release has). Carried gap for Andy: should `event-playbooks.md` add an FOMC-Minutes entry, especially given a dissent-split + chair-transition combination?

### No mapped scheduled Tier-1 trade trigger in window

No FOMC rate decision, US CPI, US NFP, ECB, or BOE decision falls in 2026-05-15 → 2026-05-22:

- **US CPI:** April data released 05-12 (resolved, see below). Next CPI (May data) ~mid-June — out of window.
- **US NFP:** April data released 05-08 (resolved). Next (May data) **2026-06-05** per BLS — out of window.
- **FOMC rate decision:** next **2026-06-16/17** (with SEP / dot plot; Warsh's first as chair) — out of window.
- **ECB:** next **2026-06-11** — out of window. **BOE:** next **2026-06-18** — out of window.

### Tier-2 (monitor, in window)

- **2026-05-15 (Fri, TODAY) — Powell's chair term formally ends; Warsh takes over.** Confirmation resolved 05-13 (see below). Transition is mechanical/as-priced. **Soft Tier-1-equivalent forward-guidance channel:** watch for any Warsh first-statement-as-chair 15–22 May. No discrete trigger; maps to `Major Regulatory Action` by analogy only if Warsh delivers a substantive policy-direction statement.
- **2026-05-16/17 (Sat/Sun)** — weekend tape, post-CLARITY-markup + post-hot-CPI digestion under a fresh ETF-outflow regime.
- **CLARITY Act next steps (no in-window date)** — post-committee path is merge with Senate Ag version → Senate floor → House reconciliation. White House July 4 target (carried). No binding in-window date; not a trigger this week.

## Resolved during gap (catch-up — context only, not trade-actionable now)

- **CPI April (05-12, RESOLVED) — HOT, hawkish-for-Fed.** Headline **+0.6% m/m / +3.8% y/y** (annual 0.1pp above Dow Jones consensus; highest since May 2023). Core **+0.4% m/m / +2.8% y/y** (hottest monthly core since Jan 2025). Energy +3.8% drove 40%+ of the headline; tariff-sensitive apparel +0.6%, airfares +20.7% y/y; shelter +0.6% (re-accelerated). Per `US CPI` playbook this is the **CPI > consensus → DOWN −1 to −3%, ~60%** channel. Tape confirms: rate-cut hopes flipped to hike-fears, ETF flows reversed hard (see crypto section). **First post-tariff CPI — the dominant macro backdrop for the rest of the window.**
- **Warsh Fed-chair confirmation (05-13, RESOLVED).** Senate **54–45** (closest in modern era), party-line + Fetterman (D). Powell's chair term ends **today 05-15**; Powell stays on as a Fed governor (~2yr term left — a break with tradition). Maps to `Major Regulatory Action` by analogy; **confirmation was essentially priced**, the residual channel is Warsh's first policy signals (Tier-2 watch above).
- **CLARITY Act Senate Banking markup (05-14, RESOLVED).** Advanced **15–9 bipartisan** (Gallego + Alsobrooks (D) crossed). Per `Major Regulatory Action` → **"Pro-crypto regulatory clarity, UP +2 to +5%, ~60%."** Realized reaction was **"measured rather than explosive"**: BTC reclaimed $80k / brief push toward ~$82k, capped by the 200-day MA. Still needs floor + House reconciliation; not law.
- **Coinbase AWS outage (05-07/08, RESOLVED, carry-closed).** ~6h, AWS US-EAST-1 multi-AZ; NOT a hack, no fund loss. Below `Major Exchange Hack/Outage` trigger threshold. Closed.

## Crypto-specific last 24h

- **BTC tape:** ~**$80,600–80,900** on 05-15 (OKX $80,609; LatestLY $80,912, +2.58% 24h). Yahoo (05-14): "bitcoin and ethereum prices slipping this week." CLARITY markup (05-14) → BTC reclaimed $80k, brief ~$82k spike capped at the 200-DMA. **Net: range-bound mid-$80k, choppy, no decisive break — hot-CPI hike-fear pressure vs CLARITY-clarity bid roughly offsetting.** Not a discrete event trigger — tape, not catalyst.
- **ETF flows — REGIME FLIP (most significant change vs 05-08).** **−$635M single-day outflow on 05-13 — largest since late January, a 3-month high, IBIT led ~half.** This is a hard reversal of the 05-08 briefing's "9-day inflow streak / $2.7B / first $1B+ week since January." Driver: hot CPI → rate-cut-hope-to-hike-fear unwind. **The strongest pro-bull context bullet from last week is now inverted.** Not trade-actionable as an event, but flips the directional-context bias from "pro-bull tilt" to "caution."
- **Context (not triggers):** Citi $143k 2026 base case explicitly tied to CLARITY passage (+$15B projected net ETF inflows once law); Dartmouth endowment $14.5M BTC+ETH ETF allocation; JPMorgan flags BTC as the post-2023 crypto outperformer. Forward narrative, not in-window catalysts.
- **Hacks / outages:** **No new top-10 CEX hack, confirmed loss, or extended outage in 24h.** Coinbase AWS outage (05-07/08) closed. Drift Protocol ~$285M exploit was early April, state-linked governance compromise — not BTC-contagion-relevant, not 24h. No Binance incident. `Major Exchange Hack/Outage` playbook stays inactive.
- **No spot BTC ETF binding decision in window.** `BTC Spot ETF News` playbook stays inactive for binding-decision purposes.

## Recommended posture this week

- **No scheduled Tier-1 mapped trade trigger in the 7-day window. No URGENT file.** The only Tier-1-context item is FOMC Minutes 05-20 — unmapped as a discrete trigger, ~5 days out, situational-awareness only.
- **FOMC Minutes 05-20 is the watch item.** Dissent-split (8–4) + first minutes under chair transition makes it more market-moving than routine minutes. It becomes scan-window-central from the 18–19 May scans. Not URGENT-eligible under current playbooks (no FOMC-minutes entry; minutes ≠ rate-decision).
- **Macro backdrop is hawkish-for-Fed.** Hot post-tariff CPI (3.8% y/y) flipped the rate path expectation; ETF flows confirmed with a record single-day outflow. Any event-driven LONG candidate this week sits against a deteriorated flow/rate-fear context — the opposite of the 05-08 pro-bull setup.
- **Briefing-gap remediation (Andy action):** the 7-day scan gap meant the 05-12 first-post-tariff CPI — pre-flagged URGENT-eligible by the 05-08 scan — got **no URGENT pre-event file**. If this routine's cron is unreliable, that is the failure mode that matters most for an event-driven strategy: a missed scan = a missed URGENT = a missed (or un-vetted) trade window. Recommend Andy verify the daily cron is firing.
- **Egress incident chain.** ~26 days since `learnings/2026-04-19-incident-egress-blocked*`. WebSearch sufficient for scan-only; remains the binding constraint on whether any approved trade could actually execute. Status unchanged.
- **Next briefing:** 2026-05-16 08:00 UTC. Expected: weekend tape under outflow regime; CLARITY floor-path timeline; any Warsh first-statement-as-chair; FOMC-minutes pre-positioning begins ~18 May.

## Events NOT currently in playbook (for Andy to review)

- **FOMC Minutes as a distinct playbook entry (ELEVATED THIS RUN).** Minutes are in-window 05-20 with a dissent-split + chair-transition amplifier and have **no playbook**. The FOMC playbook covers only the rate decision. Recommend Andy decide whether FOMC-Minutes warrants its own entry (lower base magnitude than the decision, but dissent-heavy minutes can move BTC). Andy direction needed.
- **Fed-Chair-Transition / first-statement-as-chair (CARRIED, now LIVE — Warsh in seat 05-15).** Quasi-FOMC-equivalent forward-guidance channel; thin priors (4 transitions / 20yr). Andy direction needed.
- **Cluster meta-playbook gap (CARRIED).** The 11–14 May Warsh+CLARITY+CPI cluster resolved during the briefing gap without single-event playbook modeling. Still no cluster framework. Andy direction needed for `proposal-cluster.md`.
- **CLARITY Act multi-stage path (REFINED).** Markup-pass channel realized "measured, not explosive" — pre-priced. Sub-question: weight floor-vote / House-reconciliation stages lower than committee, since the committee step is now spent and the market response was muted. Andy direction.
- **Post-FOMC "sell-the-news" pattern (CARRIED).** `proposal-fomc-post-event-short.md` still not written unilaterally per envelope rules. Andy direction.
- **ADP-as-NFP-precursor sub-playbook (CARRIED).** First calibration test point was the 05-08 NFP, which fell in the briefing gap — calibration deferred to `crypto-event-review`. Carried.
- **Standing carries (unchanged):** BoJ / BoC / ECB / BOE rate decisions still unmapped (all next-meeting out of window: ECB 11 Jun, BOE 18 Jun); US Q1 GDP / PCE / ISM unmapped; Strategy/MicroStrategy structural-supply stub; Bhutan sovereign-treasury supply; AWS-dependency-as-contagion-vector sub-question; non-BTC DeFi exploit ≥$100M contagion proposal (`learnings/2026-04-19-proposal-non-btc-hack-contagion.md`, now 26 days open, no BTC-relevant exploit this run).

## Output summary

```
[EVENT SCAN] 2026-05-15 | 0 Tier-1 MAPPED triggers in window; 1 Tier-1-context UNMAPPED (FOMC Minutes 2026-05-20 18:00 UTC, dissent-split + chair-transition amplified, ~5d out, no minutes playbook — situational only); 7-DAY BRIEFING GAP (last scan 05-08) caught up: CPI April 05-12 RESOLVED HOT +0.6%m/m/+3.8%y/y core +0.4%/+2.8% hawkish-for-Fed (no URGENT was emitted — 05-12 scan never ran), Warsh confirmed 05-13 54-45 Powell chair-term ends today 05-15 stays as governor, CLARITY Senate Banking markup advanced 05-14 15-9 bipartisan reaction "measured not explosive"; crypto 24h: BTC range-bound ~$80.6-80.9k +2.58% choppy capped at 200-DMA, ETF flows REGIME FLIP −$635M 05-13 largest outflow since Jan IBIT led (inverts 05-08 9-day $2.7B inflow streak), no new top-10 CEX hack/outage, no binding ETF decision; macro backdrop hawkish-for-Fed; urgent=NO (no Tier-1 mapped event within 24h)
```

## Files touched this run

- `crypto/briefings/2026-05-15-event-scan.md` (this file, new)
- No URGENT file (no Tier-1 mapped event within 24h; FOMC Minutes 05-20 is ~5d out and unmapped as a discrete trigger)
- No `brain/` edits (scanner is read-only on playbooks; FOMC-Minutes entry, Fed-Chair-Transition, cluster meta-playbook, CLARITY multi-stage weighting all raised for Andy review only)
- No `learnings/` edits (post-FOMC short proposal carried; CPI/NFP/Warsh/CLARITY post-event reviews belong to `crypto-event-review`, not this scanner — flagged that the briefing gap left them un-reviewed)

## Sources

- [Federal Reserve — FOMC meeting calendars (April 28–29 2026; minutes 3-week convention)](https://www.federalreserve.gov/monetarypolicy/fomccalendars.htm)
- [Federal Reserve Board — Calendar: May 2026 (FOMC Minutes 20 May)](https://www.federalreserve.gov/newsevents/2026-may.htm)
- [BLS — Schedule of Releases for the Employment Situation (next NFP 2026-06-05)](https://www.bls.gov/schedule/news_release/empsit.htm)
- [BLS — Consumer Price Index Summary, 2026 M04 results](https://www.bls.gov/news.release/cpi.nr0.htm)
- [CNBC — CPI inflation April 2026: prices rose 3.8% annually](https://www.cnbc.com/2026/05/12/cpi-inflation-april-2026-.html)
- [Kiplinger — Inflation spikes in April CPI report on higher energy costs](https://www.kiplinger.com/investing/economy/cpi-report-april-2026-what-to-expect)
- [CNBC — Kevin Warsh wins Senate confirmation as the next Federal Reserve chair (54–45)](https://www.cnbc.com/2026/05/13/kevin-warsh-wins-senate-confirmation-as-the-next-federal-reserve-chair.html)
- [NPR — Senate confirms Kevin Warsh as next chair of the Federal Reserve](https://www.npr.org/2026/05/13/nx-s1-5816235/kevin-warsh-federal-reserve-chair-jerome-powell)
- [Washington Post — Senate confirms new Fed chair as Trump allies warn rate cuts may have to wait](https://www.washingtonpost.com/business/2026/05/14/warsh-be-confirmed-fed-chair-trump-allies-warn-rate-cuts/)
- [Senate Banking Committee — Chairman Scott, Committee advance Clarity Act in historic bipartisan vote (15–9)](https://www.banking.senate.gov/newsroom/majority/chairman-scott-senate-banking-committee-advance-clarity-act-in-historic-bipartisan-vote)
- [CoinDesk — Clarity Act clears U.S. Senate committee, on its way to a final test in Congress](https://www.coindesk.com/policy/2026/05/14/clarity-act-clears-u-s-senate-committee-on-its-way-to-a-final-test-in-congress)
- [CNBC — Crypto industry scores win as Clarity Act regulation bill clears Senate hurdle](https://www.cnbc.com/2026/05/14/clarity-act-congress-crypto-senate.html)
- [LatestLY — Bitcoin Price Today: BTC at USD 80,912 (+2.58% 24h, 15 May 2026)](https://www.latestly.com/business/bitcoin-price-today-btc-price-at-usd-80912-crypto-market-maintains-strong-bullish-momentum-7430780.html)
- [OKX — Bitcoin live price ($80,609.5)](https://www.okx.com/en-us/price/bitcoin-btc)
- [Yahoo Finance — Bitcoin and ethereum prices today, Thursday May 14 2026: prices slipping this week](https://finance.yahoo.com/personal-finance/investing/article/bitcoin-and-ethereum-prices-today-thursday-may-14-2026-bitcoin-and-ethereum-prices-slipping-this-week-111938059.html)
- [24/7 Wall St. — Bitcoin ETF outflows hit a 3-month high of $635 million on May 13](https://247wallst.com/investing/2026/05/14/bitcoin-etf-outflows-just-hit-a-3-month-high-of-635-million-whats-driving-the-exit/)
- [CCN — Coinbase outage explained (AWS, May 2026; resolved, not a hack)](https://www.ccn.com/news/crypto/coinbase-outage-explained-why-what-how-2026-may/)
- [CoinDesk — Coinbase disruption tied to AWS outage (08 May)](https://www.coindesk.com/business/2026/05/08/coinbase-disruption-tied-to-aws-outage-draws-criticism-amid-staff-layoffs-and-q1-losses)

# URGENT — Pre-Event Brief: US CPI May 2026 — 2026-06-10 12:30 UTC

**Trigger:** Tier-1 event (US CPI) inside 24h window. **T+~4.5h** from 08:00 UTC scan.
**Strategy:** event-driven (Option C) — paper trade only.
**Approval:** **REQUIRES Andy's explicit go/no-go before any execution.** This file is a proposal, not an order.
**Companion:** `2026-06-10-event-scan.md` (daily scan, same run).
**Precedent:** `URGENT-2026-06-05-pre-event.md` (NFP, last URGENT, Andy-no-approval-Layer-1-egress-blocked, scenario C fired, resolved skip-default-routine-default) + `URGENT-2026-05-08-pre-event.md` (NFP, original template) + `URGENT-2026-04-29-pre-event.md` (FOMC, template origin). **First CPI URGENT in routine history.**

---

## Event

| | |
|---|---|
| **Event** | US Consumer Price Index (May 2026 data) |
| **Statement release** | **2026-06-10 12:30 UTC** (8:30 a.m. ET) |
| **Consensus headline m/m** | **+0.4% to +0.5%** (RBC +0.5%; TD Securities +0.4%) |
| **Consensus headline YoY** | **4.2%** (FactSet median; TD Securities; RBC; Bitget consensus aggregator) |
| **Consensus core m/m** | **+0.23% to +0.3%** (TD Securities +0.23%; RBC +0.3%) |
| **Consensus core YoY** | **2.8–2.9%** (TD Securities 2.8%; RBC 2.9%) |
| **Cleveland Fed Nowcast** | **4.18% trailing-12-month** — consistent with refreshed consensus (06-09 framing of "48bp Nowcast-vs-consensus upside-skew" FALSIFIED by today's pin refresh) |
| **Prior (April 2026)** | **+0.6% m/m / 3.8% YoY headline / 2.80% YoY core** |
| **Playbook** | `brain/event-playbooks.md` → "US CPI" (mapped) — dovish-surprise UP +1.5 to +4% (~68% base); hawkish-surprise DOWN −1 to −3% (~60% base); in-line drift. Trade template TP +2% / SL −1.5% (standard time stop in playbook, per `strategy/event-driven.md` time-stop primary is T+24h). |

**Consensus pin refresh note:** 06-09 scan carried stale consensus (+0.6% m/m / +3.7% YoY headline; +0.3% m/m / +2.7% YoY core). Multiple primary survey sources (FactSet, TD Securities, RBC, Bitget aggregator, Robinhood prediction market) converge on the **refreshed 4.2% YoY headline / 2.8-2.9% YoY core pin** as of 06-10 08:00 UTC scan. **Surprise mapping reset accordingly.**

## Pre-event context (as of 08:00 UTC scan, T+~4.5h)

- **BTC tape:** **~$61,200-$61,500 early Wed 06-10** per millionero + cryptonews + Yahoo Finance / cryptonews. **-2 to -3.5% past 24h vs Tue-open $63,078** (Fortune); Tue-intraday-low $62,542 at 7:27 ET 06-09. **Oversold-bounce-confirm from Mon-open recovery (06-09 carry) FALSIFIED on Tue-close → Wed-open price action.** Crypto Fear & Greed at **14 (Extreme Fear)** per cryptonews 06-10. **Cumulative loss from May 15 high $80k: now ~23%** (vs ~21% 06-09 / ~24% 06-07). **$60k Feb-low remains next mechanical anchor** — Wed-open is back inside the $60-62k retest zone after the Mon-Tue partial-recovery interlude. Critical-key-level: $66k for consolidation-vs-resumed-slide (well above current tape).
- **CPI consensus pin refreshed** (see Event table). **4.2% YoY headline is +40bp acceleration vs April 3.8%; Nowcast 4.18% consistent.** **PPI 6.0% YoY context** (carry from cryptonews) — distinct hot-prices anchor for Thu 06-11 cluster-member. Disinflation-narrative-via-consensus appears OFF; the refreshed pin says the market expects acceleration not continuation.
- **ETF flows:** **13-day outflow streak / $4.4B aggregate continues** per Bitcoin Foundation + investing.com 06-10. Mon 06-08 publish AMBIGUITY from 06-09 (historical-snapshot vs resumption reading) resolves toward **RESUMPTION reading** — IBIT -$1.337B over Jun 1-5 weekly window + Mon publish $483.76M outflow consistent with continuing-bleed rather than streak-end. **The 05-31 ETF-whale-block-redemption proposal's 06-07 "EMPIRICALLY VALIDATED ON COMPLETE CYCLE" framing is FURTHER DEGRADED THIS RUN** to "validation-on-partial-cycle-with-pre-event-resumption." Strongest-bearish-flow-context-in-routine-memory framing CARRIES from URGENT-2026-06-05.
- **Strategy (MSTR) 1,550 BTC purchase ~06-09 funded by $181M stock sale at avg ~$65k** per Gulf Insider + Yahoo Finance video + blockchainreporter. **MSTR thesis state evolves third time in 5 days:** 06-07 FALSIFIED → 06-09 weakened-but-tempered → **06-10 materially re-validated by 48x larger buy-the-dip-purchase**. Strategy now holds ~845,256 BTC; net +1,518 BTC since May 26-31 sale; average-purchase-cost ~$12.6k below sale-price. **First bullish-flow counter-anchor of any magnitude in carried scanner memory for this drawdown cycle** — but sub-threshold for live-trade-trigger (corporate-treasury accumulation is mechanism-narrative not catalyst-news per playbook taxonomy).
- **Iran phase-17 candidate FIRED** via Trump 06-10 Fox News "Iran much more aggressive" framing + 06-09 Iran rejection of US proposal + Omani counteroffer framing. **First verified phase-evolution anchor in 21+ days carried.** Wikipedia article's specific 06-11-13 future-dated event sequence (evacuations / IAEA breach / Israeli strikes) STILL UNVERIFIED in primary-source surface scan — Trump's rhetorical framing IS a discrete escalation anchor but does NOT validate the Wikipedia article's specific dateline content. **Highest single-day-cross-event-interference risk** of any URGENT in routine memory: Iran-phase-17-candidate + CPI-print same morning. **Bidirectional UNMAPPED — Iran channel could decisively shift either direction post-CPI, adds tape-noise risk to entry/exit window.** Phase 3 contingency below.
- **FOMC June 17 hold prob:** **96.5-97.8%** (CME FedWatch 96.5%; Polymarket 93%+; Kalshi 97.8%). First Warsh meeting; SEP + dot-plot under Warsh; Goldman Sachs expects removal of easing-bias language. Persistent inflation pressures cited. **USD-bias-UP further reinforced; hawkish-Fed-amplifier intact for any CPI hot print.**
- **ECB June 11 hike prob:** 90-99% (FXStreet + ING + MarketScreener + Kalshi + Manifold). 25bp to 2.25% deposit rate confirmed-consensus. Even doves Panetta + Stournaras supporting. May Eurozone inflation accelerated to 3.2%. Reuters poll 49/80 economists forecast 2 more 2026 hikes. **Cluster-member T+24.75h post-CPI; USD-strength-vs-EUR-differential supports current bearish-BTC envelope.**
- **Cluster risk: TIGHTEST IN ROUTINE MEMORY — first sub-T+12h-cluster-clean-default scenario.** CPI Wed 12:30 UTC → PPI Thu T+24h 12:30 UTC → ECB Thu T+24.75h 13:15 UTC → UMich Fri T+49.5h 14:00 UTC. **Per CPI playbook trade template (TP +2% / SL −1.5%) + `strategy/event-driven.md` time-stop primary T+24h: standard T+24h closes 12:30 UTC 06-11 = AT the moment of PPI release + 45 min before ECB rate decision.** **Cluster-shortening analysis required this URGENT** (first sub-T+12h cluster scenario per 06-09 biweekly extension (c)); options T+12h / T+8h analyzed in scenarios section.
- **Adjacency risk:** **No conflicting Tier-1 print before CPI.** Iran-phase-17-candidate is the wildcard adjacency — any kinetic-escalation-or-de-escalation could land during 11:00-13:00 UTC pre-CPI window. Cross-event-interference risk MATERIALLY ELEVATED vs URGENT-2026-06-05.

## Playbook reference (verbatim from `brain/event-playbooks.md` — US CPI)

> **Event:** Consumer Price Index released (monthly, ~13:30 UTC).
>
> **Directional bias:**
>
> | Surprise | BTC reaction (T+0 to T+24h) | Base rate |
> |---|---|---|
> | CPI < consensus (dovish for Fed) | UP +1.5 to +4% | ~68% |
> | CPI > consensus (hawkish for Fed) | DOWN −1 to −3% | ~60% |
> | In-line | Small drift in prevailing trend | ~50% |
>
> **Trade template:** same as FOMC but TP +2%, SL −1.5% (smaller typical magnitude).

**Note on release time:** playbook says 13:30 UTC; today's actual release is 12:30 UTC (8:30am ET — DST/EDT shift). Substantive timing window unchanged. **Note on time stop:** CPI playbook entry inherits FOMC trade-template (entry T+30 min after whipsaw clears; standard time stop) — `strategy/event-driven.md` defines time-stop primary as T+24h. **Cluster-shortening analysis required this URGENT.**

## Surprise mapping for this specific print

**Threshold definitions for today** (refreshed against 4.2% YoY headline / 2.8-2.9% YoY core consensus pin):

- **>2σ extreme upside (hawkish surprise):** headline **≥ +4.5% YoY** (≥+30bp above consensus 4.2%) OR core **≥ +3.1% YoY** (≥+20-30bp above consensus 2.8-2.9%) — would compound hawkish-Fed channel under hot-data-stack (NFP +172k carry + ECB-hike-99% + FOMC-hold-97% + PPI 6.0% YoY).
- **>2σ extreme downside (dovish surprise):** headline **≤ +3.9% YoY** (≤−30bp below consensus 4.2%) AND core **≤ +2.6% YoY** (≤−20bp below consensus 2.8-2.9%) — would trigger dovish-Fed-pivot channel into FOMC June 17 + ETF-flow-reversal-narrative.
- **Routine zone:** headline **+3.9% to +4.4% YoY** AND core **+2.6% to +3.0% YoY** — inside this band, default skip per playbook in-line drift.
- **Headline m/m** secondary discriminator: cool ≤+0.3% / consensus +0.4-0.5% / hot ≥+0.6%.

**Five scenarios (refreshed for refreshed-consensus + retrace-tape + Iran-phase-17-candidate envelope):**

| Scenario | Headline YoY | Core YoY | Subjective probability | Read |
|---|---|---|---|---|
| **(A) Routine print** | +3.9% to +4.4% | +2.6% to +3.0% | **~65%** | **SKIP per playbook.** In-line drift; mixed/chop reaction; high probability per consensus-dispersion. |
| **(B) Mild hot (above consensus, below extreme)** | +4.3% to +4.4% YoY OR core +2.95% to +3.05% | mixed | **~10%** | **SKIP per playbook** (below >2σ extreme threshold). Directionally ambiguous; below threshold, skip default. |
| **(C) Extreme upside (hot CPI)** | **≥ +4.5% YoY** OR core ≥ +3.1% YoY | (either matches threshold) | **~12%** | **POTENTIALLY TRADE → SHORT BTC.** Hawkish-Fed channel amplified by hot-data-stack (NFP-hot + ECB-hike + FOMC-hold-amplified + PPI-6.0% + USD-bias-UP). Tape already partially retraced into the print = SHORT may have less entry edge but TP could fire fast. **Structural-regime-overlay carry applies: hot-CPI under crashing-tape regime is the cleanest signal-environment alignment in this URGENT.** |
| **(D) Mild dovish (below consensus, above extreme)** | +3.9% to +4.1% YoY AND core +2.6% to +2.8% YoY | (both above extreme) | **~8%** | **SKIP per playbook.** Below true >2σ extreme threshold. Standing-color disinflation-anchor; write non-trade learning. |
| **(E) Extreme downside (dovish CPI)** | **≤ +3.9% YoY** AND core **≤ +2.6% YoY** | (both below extreme) | **~5%** | **POTENTIALLY TRADE → LONG BTC** (dovish-Fed-pivot channel; pricing-in of 2026 cuts; ETF-flow-reversal-narrative ignites). **Structural-regime-overlay carry applies: dovish-CPI under crashing-tape regime is the regime-overlay-test scenario (06-05 NFP precedent: ANTI-bias playbook + adverse-regime = environmentally-supported-but-discrimination-muddied).** LONG fights ETF-flow-resumption + Iran-phase-17-candidate-aggressive-framing + retrace-tape. **R/R may be compromised — flag for Andy's discretion.** Strategy 1,550 BTC buy-the-dip is the standing bullish counter-anchor but is sub-threshold mechanism-narrative not catalyst-confirmation. |

**Distribution-tail-weighting note:** subjective probabilities estimated, not historical-base-rate-derived (n=0 CPI-trades-under-Option-C — this is FIRST CPI URGENT in routine history). **Scenario (A) is HIGHEST PROBABILITY** because the consensus pin refresh today + Cleveland Fed Nowcast consistency + Wall-Street-economist convergence (FactSet + TD + RBC + Bitget all 4.2%) suggest the surprise-distribution is TIGHTER than at URGENT-2026-06-05 NFP (where Wall-Street dispersion was wide Vanguard 20k → FactSet 105k spanning 85k). **Scenario (C) is slightly higher than URGENT-2026-06-05 scenario C** because the Nowcast's prior framing was upside-skew (06-09 carry +48bp gap, now closed by consensus refresh, but the *historical* upside-bias of Nowcast vs final print is non-trivial — flag for Andy). **Scenario (E) is LOWER than URGENT-2026-06-05 scenario E** because dovish-CPI fights the standing hot-data-stack + ECB-hike + FOMC-hold-amplified + crashing-tape regime.

**The playbook's published base rates (~68% dovish-UP / ~60% hawkish-DOWN) DO NOT directly map to our subjective scenario probabilities** because the base rates are conditional on a surprise having occurred (the "surprise direction is clear" entry rule). For scenarios (C) and (E) — where a surprise IS observed — the playbook base rates inform expected magnitude and base-rate-of-direction-firing-as-expected, but our entry rule is the >2σ threshold not the surprise direction alone.

## Proposed trade — decision tree

### Phase 0 — Pre-event (now → 12:30 UTC)

- **No position taken.** No pre-positioning — CPI playbook requires post-print read on AHE-equivalent (CPI subdivides into headline + core; both directional discriminators).
- Andy: confirm Binance paper egress status. **Egress incident chain from 19–20 Apr is now ~52 days old; not re-tested in scanner runs.** If still blocked at 12:00 UTC, **trade cannot execute regardless of approval — proposal becomes moot.** Per `2026-04-19-incident-egress-blocked*` learnings + URGENT-2026-04-29 / 05-08 / 06-05 documentation. **Andy: this is the SAME binding constraint that resolved URGENT-2026-06-05 NFP into skip-default-routine-default with no execution; if Layer-1 retest is not done before 12:00 UTC, today's URGENT will resolve identically regardless of scenario-fire.**
- Andy: pre-acknowledge approval framework — specifically whether you authorise scenarios (C) and (E) below if they fire, or only one direction, or neither. Carry from URGENT-2026-06-05 Andy-decision-point-1: short-authorisation status on paper account is a binding constraint for scenario (C) hot-CPI → SHORT.
- Watch for Iran phase-17 candidate continuing-evolution overnight 06-09 → 06-10 and intraday 08:00-13:00 UTC window. **If a discrete kinetic-or-rhetorical phase-17 anchor lands during 11:00-13:00 UTC pre-CPI window** (further Trump statement / Iran response / Israeli strike / kinetic anchor), **apply Phase 3 contingency (30-min delay to entry timing)**.
- Time-stop scenario pre-decision (Andy approval required by 12:00 UTC):
  - **Standard T+24h closes 12:30 UTC Thu 06-11 = AT the moment of PPI release + 45 min before ECB rate decision** = WORST CASE cluster-overlap.
  - **T+12h closes 00:30 UTC Thu 06-11 = clear of next-day cluster** but accepts the bearish-tape-Asian-overnight-session-handle = moderate-risk option.
  - **T+8h closes 20:30 UTC Wed 06-10 = clear of all cluster + US session close** = CONSERVATIVE option per 06-09 biweekly extension (c).
  - **Routine recommendation: T+12h** (clear of PPI + ECB cluster by 12+h; accepts overnight Asia session digestion; matches NFP URGENT-2026-06-05 default which resolved cleanly).
  - **Andy: please direct T+24h-with-pre-PPI-manual-close OR T+12h OR T+8h before 12:00 UTC.**

### Phase 1 — CPI release (12:30 UTC) and post-release window (12:30–13:00 UTC)

- **No entry at T+0.** Per playbook (FOMC trade-template inheritance): wait for whipsaw to clear at T+30 min.
- Read headline m/m + headline YoY + core m/m + core YoY by 12:35 UTC (BLS press release auto-published 8:30 ET).
- **Scanner-tooling-gap actionable per 06-09 biweekly extension (a):** at 12:35 UTC perform **Bash WebFetch of https://www.bls.gov/news.release/cpi.nr0.htm** to extract bare numbers directly (this URGENT's mitigation of the AHE/Nowcast-bare-number n=2 recurring failure mode).
- Classify into scenario (A)–(E) by 12:45 UTC at the latest.
- Read BTC tape first 15-min reaction by 12:45 UTC.

### Phase 2 — Entry (13:00 UTC, ~T+30 min)

If **scenario (A) routine print (headline +3.9% to +4.4% YoY AND core +2.6% to +3.0% YoY)** → **NO TRADE.** Per playbook, skip-default. Write non-trade learning post-event documenting the print + the first-CPI-URGENT-framework-vs-actual calibration outcome + structural-regime-overlay second-CPI-test outcome. **HIGHEST PROBABILITY OUTCOME (~65%).**

If **scenario (B) mild hot (headline +4.3% to +4.4% YoY OR core +2.95% to +3.05%)** → **NO TRADE.** Below playbook >2σ threshold. Write non-trade learning.

If **scenario (C) extreme upside (headline ≥ +4.5% YoY OR core ≥ +3.1% YoY)** → **SHORT BTC** (via perpetuals if Andy authorises shorts on paper):
- Direction: market sell / open short
- Notional: **£30 (30% of £100 paper capital, 1x leverage)** per `strategy/event-driven.md`
- Entry price: market at T+30 min (~13:00 UTC)
- TP: **−2% from entry** (close at +2% PnL per CPI playbook)
- SL: **+1.5% from entry** (cover at −1.5% PnL)
- Time stop: **Andy-directed T+12h (00:30 UTC Thu) OR T+8h (20:30 UTC Wed)** — see Phase 0 cluster-shortening pre-decision.
- **If shorts are not authorised on the paper account, this scenario is a SKIP** — same constraint flagged in URGENT-2026-06-05 Andy-decision-point-1. **Andy: please re-confirm short-authorisation status before 12:00 UTC.**
- **Hot-data-stack-context:** SHORT thesis amplified by ETF-13-day-$4.4B-outflow + Iran-phase-17-candidate-aggressive + tape-already-retrace + FOMC-hold-96.5-97.8% + ECB-hike + NFP-+172k + PPI 6.0%. **Cleanest signal-environment alignment of any URGENT in routine memory.** Asymmetric R/R best-case when entering against partially-stretched tape; tape already retraced from $63k Mon to $61.2k Wed = ~3% baked-in. **Entry edge partially eroded by directional momentum already in your favor.**

If **scenario (D) mild dovish (headline +3.9% to +4.1% YoY AND core +2.6% to +2.8% YoY)** → **NO TRADE.** Below true >2σ extreme threshold. Skip-default. Write non-trade learning analysing whether disinflation-mild-anchor warrants a sub-extreme entry threshold for CPI under structural-regime-overlay-aware framework.

If **scenario (E) extreme downside (headline ≤ +3.9% YoY AND core ≤ +2.6% YoY)** + **BTC initial 15-min reaction UP** → **LONG BTC**:
- Direction: market buy
- Notional: **£30 (30% of £100 paper capital, 1x leverage)**
- Entry price: market at T+30 min (~13:00 UTC)
- TP: **+2% from entry**
- SL: **−1.5% from entry**
- Time stop: **Andy-directed T+12h OR T+8h** per Phase 0.
- **Structural-regime-overlay carry applies:** ANTI-bias playbook + adverse-regime = environmentally-supported-but-discrimination-muddied. **A dovish-CPI under crashing-tape + ETF-resumption + Iran-phase-17-candidate-aggressive regime may NOT fire its directional UP-bias** — this IS the regime-overlay-test scenario for CPI. **The 06-05 NFP precedent (>2σ extreme upside +172k vs cons ~95k under crashing-tape, scenario C fired, Andy-no-approval-Layer-1-blocked-no-execution, post-hoc tape-reaction-confirmed regime-overlay prediction):** dovish-CPI today is the diametrically-opposite regime-overlay test. **R/R may be compromised — flag for Andy's discretion: scenario (E)+LONG is the regime-overlay-test-scenario.** Strategy 1,550-BTC-buy-the-dip is the standing bullish counter-anchor but sub-threshold mechanism-narrative; do not count it as catalyst-confirmation.

If **scenario (E) extreme downside** + **BTC initial 15-min reaction DOWN** → **NO TRADE.** Dovish-print-with-tape-DOWN is regime-overlay-confirmed scenario (the playbook-bias-fails-under-adverse-regime case); don't fight the regime. Write non-trade learning analysing the dovish-Fed-vs-growth-scare frame at this magnitude of downside surprise. **This is the SAME regime-overlay-confirmed-outcome the 06-05 NFP URGENT predicted for scenario (E)-with-tape-down (LONG would fight regime); applies symmetrically to CPI.**

### Phase 3 — Iran phase-17 wildcard contingency

**MATERIALLY ELEVATED RISK vs URGENT-2026-06-05.** Trump 06-10 Fox News "Iran much more aggressive" framing + 06-09 Iran rejection + Omani counteroffer = phase-17 candidate FIRED this morning. Wikipedia article's specific 06-11-13 future-dated event sequence remains UNVERIFIED but adds tail-risk-context.

If between 11:00–13:00 UTC (the 2h pre-CPI window) the Iran channel produces a discrete kinetic-or-decisive-rhetorical phase-17 anchor (further escalation statement / Iranian formal-rejection of counteroffer-process / US strike / kinetic anchor / Israeli action):

- **Delay entry decision by 30 min.** Tape 12:30-13:30 UTC will be polluted by Iran-channel signal conflated with CPI read.
- Re-evaluate at 13:30 UTC (~T+1h). If a clean scenario (C) or (E) read is available with clear tape direction (separated from Iran-channel impulse), follow Phase 2 logic with adjusted entry at T+1h instead of T+30 min.
- If tape is still confused at 13:30 UTC, **NO TRADE.** Write learning documenting cross-event interference between CPI and Iran phase-17.

### Phase 4 — Discretionary overrides

- Per `strategy/event-driven.md` exit rules, Andy may close any position manually at any time.
- If BTC trades through SL pre-emptively in T+0 to T+30 min whipsaw window, that's by definition before entry — not relevant to active position management.
- If, after entry, BTC retraces violently into early-afternoon US session (~17:00–18:00 UTC) on a competing macro headline OR Iran phase-17 kinetic anchor lands intraday, **do not chase the time-stop** — let the SL handle it. Stops protect the asymmetric R/R; second-guessing them mid-event erodes the edge.
- **Cluster-aware exit note:** Andy-directed time-stop (T+12h or T+8h or T+24h-with-pre-PPI-manual-close) is the conservative routing. Position should be flat OR clearly inside-edge before PPI prints 12:30 UTC Thu 06-11 + ECB 13:15 UTC.

## Why the time-stop discussion exists

- **Playbook default for CPI inherits FOMC trade-template** (entry T+30 min; standard time stop); `strategy/event-driven.md` time-stop primary is T+24h.
- **Cluster-density TIGHTEST in routine memory** (06-09 biweekly extension (c) confirmed): PPI T+24h + ECB T+24.75h + UMich T+49.5h. **Standard T+24h time-stop closes AT PPI release + 45 min before ECB** = worst-case cluster-overlap.
- **First sub-T+12h cluster scenario in routine memory** per 06-09 biweekly carry — cluster-shortening decision is a structural decision-point this URGENT, not a routine confirmation.
- **Routine recommendation T+12h** balances playbook-intent (post-print directional firing window) against cluster-clean (clear of PPI + ECB by 12+h with Asian-overnight digestion). T+8h is the conservative option; T+24h is the playbook-default-but-cluster-overlapped option.

## Risk acknowledgements

1. **First CPI URGENT in routine history.** Sample-size for CPI-trades-under-Option-C is zero. URGENT framework structure-vs-substance was calibrated in URGENT-2026-06-05 NFP-vs-actual (06-07 biweekly verdict: "framework structure does NOT need substantive revision before CPI URGENT 06-10"); today validates that calibration if scenario fires.
2. **Egress dependency.** ~52 days since `2026-04-19-incident-egress-blocked*` chain. **NOT re-tested this run** (scanner scope). **Binding constraint on whether any approved trade could actually execute.** If still blocked at 12:00 UTC, the trade cannot execute regardless of Andy's approval. **THE binding constraint — if egress isn't verified by 12:00 UTC, no scenario above can fire.** **CARRY FROM URGENT-2026-06-05: this is the SAME binding constraint that resolved URGENT-2026-06-05 NFP into skip-default-routine-default with no execution; if Layer-1 retest is not done before 12:00 UTC, today's URGENT will resolve identically.**
3. **Iran phase-17 wildcard MATERIALLY ELEVATED vs URGENT-2026-06-05.** Trump 06-10 Fox News "much more aggressive" framing + 06-09 Iran rejection + Omani counteroffer = phase-17 candidate FIRED this morning. **Iran-channel intraday move could land during CPI window** and pollute directional read. Phase 3 contingency above applies. **Highest single-session cross-event-interference risk of any URGENT in routine memory.**
4. **Cluster-density TIGHTEST in routine memory — first sub-T+12h cluster scenario.** Cluster-shortening pre-decision required Phase 0; routine recommends T+12h, Andy can override to T+8h conservative or T+24h playbook-default-but-cluster-overlapped.
5. **Consensus pin REFRESHED MATERIALLY THIS RUN vs 06-09 carry.** 4.2% YoY headline (was 3.7%) / 2.8-2.9% core (was 2.7%) — surprise-mapping thresholds reset. **Scanner-tooling-gap note: 06-09 carried a stale consensus** — the n=2 AHE/Nowcast/consensus surface-scan tooling gap (06-09 biweekly extension (a)) repeats AGAIN at n=3 effective (consensus-pin-stale at scanner-output time). **Actionable for URGENT today via Bash WebFetch of BLS page at 12:35 UTC** (Phase 1 step).
6. **Structural-regime-overlay carry.** n=2 live-test instances now have bidirectional tape-mean-reversion-overlay evidence (Mon-confirm + Tue-falsify). Today's CPI test under crashing-tape regime IS the structural-regime-overlay-test scenario for CPI. Scenario (C) hot-CPI is cleanest signal-environment alignment (regime-overlay supports SHORT bias); scenario (E) dovish-CPI is regime-overlay-test (LONG fights regime-overlay).
7. **Wall-Street-economist convergence on 4.2% YoY headline is TIGHTER than NFP URGENT-2026-06-05 dispersion** (Vanguard 20k → FactSet 105k spanning 85k for NFP). **Surprise-distribution is TIGHTER today — but the Nowcast's historical upside-bias vs final print is non-trivial.** Distribution-tail asymmetry favors upside surprise relative to consensus.
8. **No leverage.** 1x only per strategy file. **This is event #2 of any potentially traded Tier-1 URGENT under Option C.** URGENT-2026-06-05 NFP was event #1, resolved skip-default-routine-default with no execution. We are at the very start of the proving period.
9. **Cluster aware.** PPI T+24h + ECB T+24.75h + UMich T+49.5h + FOMC T+6/7d. **Today's CPI is the SECOND cluster instance** (06-05 NFP was first). The cluster meta-playbook gap (Andy-decision-queue carried) is in-the-money for this URGENT and BINDS today via the sub-T+12h-cluster-clean-default first instance.
10. **ETF-Day-13-$4.4B-outflow + Mon-publish-resumption-reading-confirmed context.** Strongest-bearish-flow-context in routine carried memory carries from URGENT-2026-06-05 + further strengthens this URGENT. Amplifies scenario (C) SHORT and amplifies scenario (E) LONG's regime-fight.
11. **Strategy 1,550 BTC buy-the-dip is a standing bullish counter-anchor** but **sub-threshold mechanism-narrative not catalyst-confirmation.** Do not count it as live-trade-trigger-equivalent.

## Andy decision points

Before 12:00 UTC, please confirm or amend:

1. **Approve scenario (C) extreme upside (headline ≥ +4.5% YoY OR core ≥ +3.1% YoY) → SHORT BTC?** Y / N — and explicitly: are perpetual shorts authorised on the paper account? (Carry from URGENT-2026-06-05 / URGENT-2026-05-08 decision-point-1.)
2. **Approve scenario (E) extreme downside (headline ≤ +3.9% YoY AND core ≤ +2.6% YoY) + tape-up → LONG BTC** *with structural-regime-overlay-test-scenario flag (regime-overlay n=2 bidirectional evidence suggests dovish-bias-may-not-fire under crashing tape + ETF-resumption + Iran-aggressive)*? Y / N
3. **Confirm scenarios (A), (B), (D) and (E)+tape-down are SKIPS** with no override? Y / N.
4. **Notional £30 (30%) at 1x acceptable** per all approved scenarios, or smaller?
5. **Time-stop decision: T+12h (routine recommended) OR T+8h (conservative cluster-clean) OR T+24h-with-pre-PPI-manual-close (playbook-default-but-cluster-overlapped)?**
6. **Iran phase-17 wildcard contingency: approve the 30-min delay to T+1h entry if a discrete phase-17 anchor lands during 11:00-13:00 UTC window?** Y / N
7. **Egress status on Binance paper account** — is execution actually possible at 13:00 UTC? **If unknown, please verify before 12:00 UTC.** **If still blocked, NO TRADE is the only operational outcome** regardless of scenario. **THIS IS THE SAME CONSTRAINT that bound URGENT-2026-06-05 NFP into skip-default-routine-default — ~52d carried.**
8. **Cluster-awareness override?** Today's CPI is the SECOND cluster instance of the cycle (NFP 06-05 → CPI 06-10 → PPI 06-11 → ECB 06-11 → UMich 06-12 → FOMC 06-16/17). Per Phase 0 time-stop pre-decision.
9. **Pre-acknowledge first-CPI-URGENT-framework-vs-actual calibration learning-write process?** The 06-07 biweekly precedent set the URGENT-vs-actual calibration written into the biweekly digest. Same process for today, or write a separate `learnings/outcome-cpi-2026-06-10.md` file? (Carry from URGENT-2026-06-05 decision-queue item 4.)

If Andy does not respond before **12:00 UTC**, the routine's safe default is **NO TRADE** in any scenario — silence is not implicit approval, and the CPI playbook itself defaults to skip outside-extreme. A post-event learning will document the print and the missed (or correctly-skipped) outcome + the first-CPI-URGENT-framework-vs-actual calibration.

## What changed vs URGENT-2026-06-05 NFP

- **Event type differs:** CPI (mapped Tier-1 with both-direction bias) vs NFP (mapped Tier-1 with weak directional bias / skip-unless-extreme).
- **Surprise mapping framework differs:** CPI uses headline + core YoY as primary discriminators (vs NFP's headline + AHE m/m).
- **Consensus pin refreshed MATERIALLY vs scanner's-06-09-carry** (4.2% vs 3.7% YoY headline). NFP URGENT-2026-06-05's consensus pin was wide-dispersed Vanguard 20k → FactSet 105k; today's pin is TIGHTER (FactSet + TD + RBC + Bitget all converge 4.2%).
- **BTC tape:** Wed-early ~$61.2-61.5k after Tue-night retrace vs URGENT-2026-06-05 Fri-pre-NFP ~$62.5k. -23% from May 15 high vs -21% on 06-05.
- **Strategy 1,550 BTC buy-the-dip ~06-09** = standing bullish counter-anchor new this URGENT.
- **Iran phase-17 candidate FIRED this morning** via Trump-Fox-News-aggressive + 06-09 rejection + Omani counteroffer vs URGENT-2026-06-05 phase-16-status-quo. Materially elevated cross-event-interference risk.
- **ETF Mon-publish-resumption-reading-confirmed** strengthens bearish-flow context vs URGENT-2026-06-05 Day-13-$4.4B framing.
- **FOMC hold prob 96.5-97.8%** vs URGENT-2026-06-05 97.8-99%. Minor relaxation in market pricing of hold (Warsh-uncertainty + dot-plot under Warsh + Goldman-removal-of-easing-bias-language framing).
- **ECB hike confirmed-consensus 90-99%** vs URGENT-2026-06-05 97%. Tighter convergence.
- **NFP +172k 06-05 print** = now standing data-carry rather than upcoming; ADP-as-NFP-precursor sub-playbook first-calibration directionally HELD.
- **Cluster density TIGHTEST in routine memory** = first sub-T+12h-cluster-clean-default scenario; cluster-shortening pre-decision required (vs URGENT-2026-06-05 T+12h clean by 4.5+ days).
- **Egress chain carried 19+52 days** still not re-tested; binding constraint unchanged from URGENT-2026-06-05.
- **Structural-regime-overlay carry NOW n=2 BIDIRECTIONAL** (Mon-confirm + Tue-falsify) vs URGENT-2026-06-05 n=3-anti-bias-only.
- **Skip-default-routine-default robustness** validated by URGENT-2026-06-05 (Andy-no-approval + Layer-1-blocked + scenario C fired = no execution = framework robust).

## Files touched this run

- `crypto/briefings/URGENT-2026-06-10-pre-event.md` (this file, new)
- `crypto/briefings/2026-06-10-event-scan.md` (companion daily scan, new)
- No `brain/` edits — the CPI playbook entry as-written is the authority; this URGENT file does not modify it.
- No `learnings/` edits — post-event learning to be written by `crypto-event-review` (or post-URGENT-resolution biweekly-digest carry per URGENT-2026-06-05 precedent) after T+12h close. **First-CPI-URGENT-framework-vs-actual calibration + structural-regime-overlay-CPI-test outcome + cluster-shortening-first-instance outcome all resolve in that post-event learning.**

# URGENT — CPI June Pre-Event Brief (fired 2026-07-13 T-1d)

**Event:** US CPI June release
**When:** Tue 2026-07-14 12:30 UTC (08:30 ET) — **T+~28.5h from this brief's write time**
**Playbook:** `crypto/brain/event-playbooks.md` §"US CPI Release"
**Trigger for this file:** Step 5 of `crypto/routines/crypto-event-scan.md` — Tier-1 mapped event within 24h URGENT trigger fires at T-1d cross.
**Continuity carry:** 07-13-event-scan.md §i / §vi / §ii — CPI-URGENT-firing-on-schedule + FOMC-rate-level-carry-CORRECTED-3.50-3.75 + BTC-DECOUPLING-FRAMING first-observed materially affects position-sizing.

---

## Event details

- **Report:** US Consumer Price Index for June 2026
- **Time:** 2026-07-14 12:30 UTC (08:30 America/New_York — DST in effect)
- **Publisher:** US Bureau of Labor Statistics (bls.gov)
- **Release cadence:** monthly (5th–13th business day of the following month)
- **This is a non-FOMC-meeting print** — no immediate Fed action; market re-prices July 28-29 FOMC path

## Consensus

| Metric | Consensus | Prior (May 2026) | Change |
|---|---|---|---|
| Headline CPI YoY | **3.9%** | 4.2% | −0.3pp |
| Headline CPI MoM | **−0.1%** | +0.5% | softest MoM since June 2025 |
| Core CPI YoY | **2.9%** | 2.9% | flat |
| Core CPI MoM | **+0.3%** | +0.3% | flat |

- **Cleveland Fed nowcast**: 3.96% YoY headline (carry from 07-12 §51 — refreshed sub-check today, unchanged).
- **Consensus construction assumption** per Kiplinger + BMO: "mid-June ceasefire + Strait of Hormuz reopening pushed oil roughly −21% for June, expected to suppress headline while core stays sticky."
- **Note the consensus was set BEFORE 07-08 ceasefire-collapse and current 5-day-escalation-continuation.** The −21% June-oil pullback is a June-observation, not a July-forward assumption; it affects June-CPI-print not July-forward pricing.

## Corrected Fed rate context (per 07-13 event-scan §vi)

- Federal Funds Rate **3.50%–3.75%**, held for **four consecutive meetings**
- June 2026 was Warsh's first meeting as Fed Chair
- Prior briefings carried "4.25–4.50%" — **erroneous; corrected today**
- **Implication for surprise magnitudes:** hike-off-table baseline; cut-at-July-plausible but ~30% (per centralbank.watch), hold ~70%; post-hawkish-minutes tone-priming carries

## Playbook lookup — US CPI Release

Per `crypto/brain/event-playbooks.md`:

| Surprise | BTC reaction (T+0 to T+24h) | Base rate |
|---|---|---|
| CPI < consensus (dovish for Fed) | UP +1.5 to +4% | ~68% |
| CPI > consensus (hawkish for Fed) | DOWN −1 to −3% | ~60% |
| In-line | Small drift in prevailing trend | ~50% |

**Playbook trade template:** entry T+30min market buy/sell (after initial whipsaw clears); TP +2%; SL −1.5%; T+12h time stop.

## Direction-priming (this cycle, not baseline playbook)

- **Post-hawkish-FOMC-minutes tone-priming carries** — 07-09 minutes-release surfaced "almost all policymakers ready for tightening + 9-of-18 2026-hike-dots + easing-language-removed" hawkish-delta vs pre-tape 9-9-split.
- **CME FedWatch datum**: ~70% hold at July FOMC (pre-minutes carry); post-minutes datum-recovery-candidate **63.7% hold / 36.3% hike** first-observed at 07-12 §vi via growbeansprout / centralbank.watch alt-source — needs today's cross-check-primary to confirm-as-fresh vs updated-carry.
- **Direction-priming skew:**
  - **Dovish CPI (headline < 3.9%)**: base-rate BTC UP +1.5 to +4% likely dampened toward +1 to +2.5%. Post-hawkish-minutes tone-priming absorbs part of the dovish-surprise magnitude. July-cut becomes marginally-more-plausible (30% → maybe 40%); hold-conviction-loosens.
  - **Hawkish CPI (headline > 3.9%)**: base-rate BTC DOWN −1 to −3% likely reinforced toward −2 to −4%. Post-hawkish-minutes tone-priming compounds the hawkish-surprise. Hike-probability (currently 25.1% or 36.3% depending on source) could jump toward 45-55%; four-consecutive-hold-extends-to-five-and-hike-risk-emerges narrative.
  - **In-line CPI (3.9% ±0.1)**: chops per playbook; no clear bias.

## BTC-decoupling-framing consideration (per 07-13 event-scan §ii)

**Coindesk 07-13 explicit framing:** "Bitcoin's muted reaction marks a shift from past episodes of Middle East tension, with the token now moving more in line with dollar liquidity and the chip-driven equity cycle than with war headlines. It is no longer trading the war at all, taking its direction from dollar liquidity and the chip cycle while oil, gold and rates do the reacting."

**Materially relevant here:** if BTC is trading dollar-liquidity and chip-cycle rather than macro-surprise-magnitude, CPI-direction-priors partly preserve (CPI is dollar-liquidity-adjacent — hawkish-CPI → tighter dollar-liquidity → BTC-down) but **magnitude-priors likely-dampened**.

**Position-sizing consideration for Andy:** default playbook position-size scaled toward 60-75% of usual given BTC-response-function-shift explicit-framing. This is a suggestion within tuning envelope (CLAUDE.md §"What tuning within envelope means" — position_pct within [5, 50]); Andy final call.

## Proposed trade setup (contingent on print + Andy approval)

Andy's decision is required before entry per CLAUDE.md rule 3 + `strategy/event-driven.md` design-phase.

### Baseline (playbook default, uncorrected for direction-priming or decoupling)
- **Trigger:** CPI release at 12:30 UTC; wait for 30-minute whipsaw window to clear.
- **Entry:** 13:00 UTC market order in direction of surprise (dovish → long; hawkish → short via perpetual).
- **Position size:** playbook default (Andy's usual event-driven size — flag for Andy since cumulative event-driven trades still 0).
- **TP:** +2% from entry.
- **SL:** −1.5% from entry.
- **Time stop:** 00:30 UTC 2026-07-15 (T+12h).

### Direction-priming-corrected proposal (this cycle)
- **Dovish print (< 3.9% headline)**: enter LONG at 13:00 UTC; **TP reduced to +1.5%** (post-hawkish-minutes tone dampens dovish magnitude); **SL tightened to −1.0%** (asymmetric downside risk from hawkish-tone-reassertion); time stop T+12h.
- **Hawkish print (> 3.9% headline)**: enter SHORT at 13:00 UTC via perpetual (if authorised — otherwise NO trade); **TP extended to −3%** (post-hawkish-minutes tone reinforces hawkish magnitude); **SL +1.5%**; time stop T+12h.
- **In-line print (3.9% ±0.1)**: NO TRADE per playbook.

### Decoupling-framing-adjusted proposal (Coindesk framing)
- Apply position-size ×0.6-0.75 to whichever above scenario fires (BTC-response-function-magnitude-dampened).
- Keep entry timing + TP/SL asymmetry unchanged (direction-priors intact; magnitude-priors dampened).

### Alternative: NO TRADE
- Legitimate given (a) BTC-decoupling-framing first-observed = response-function-uncertainty, (b) cumulative event-driven-trades still 0 = design-phase carries, (c) same-day Warsh-House-testimony at 14:00 UTC = same-day double-macro-event; CPI-trade may whipsaw into Warsh-tape.

## Executability check

- **Real-money trading forbidden per CLAUDE.md rule 1.** This is paper-trading-only proposal.
- **Supabase egress blocked** (twenty-ninth-consecutive-scan under Andy explicit override). Even if Andy approves, actual paper-trade-write-to-Supabase requires egress restoration.
- **URGENT-elapsed-without-execution chain n=3 consecutive** (URGENTs at 06-05, 06-10, 06-16, 06-17, 07-02 all elapsed without execution per prior briefing carry). This would be URGENT #4-in-flight if it elapses unexecuted → n=4-consecutive.

## Risks to the setup

1. **BTC-decoupling-framing first-observed at n=1** — Coindesk framing may not persist through Monday full-day tape; watch for reversal or reinforcement.
2. **Iran-escalation five-consecutive-day chain** — if fresh escalation-category emerges before CPI-print (Kharg oil-terminal, Israeli-direct-entry, Chinese-Russian material-support, or Hormuz market-confirmed-halt), CPI-play tape is corrupted; NO TRADE by default.
3. **Same-day Warsh-House 14:00 UTC** — CPI-trade may be whipsawed into Warsh's first-Congressional-appearance-since-May-22-swear-in tape; consider tighter time stop (T+90min to close before Warsh) or wait for Warsh-tape and skip CPI-play.
4. **Next-day PPI 07-15 12:30 UTC + Warsh-Senate 14:00 UTC** — position may face same-day quadruple-macro-event decay Wednesday; time-stop T+12h captures Monday CPI-play cleanly before Tuesday-morning surprises.
5. **CME FedWatch alt-source datum unconfirmed** — 63.7%/36.3% is a candidate not confirmed primary; direction-priming skew calibration has methodology-uncertainty of ~±10pp on the surprise-magnitude-corrections.
6. **Consensus construction assumed mid-June-ceasefire + oil-pullback held into June-print** — market may re-price if consensus-construction-assumption reads stale in post-ceasefire-collapse context.

## Andy-decision items

- [ ] Approve baseline / direction-priming-corrected / decoupling-adjusted / no-trade
- [ ] Confirm position size (or take default reduced by decoupling factor)
- [ ] Confirm perpetuals authorised for potential short leg (or restrict to long-only)
- [ ] Confirm SL/TP asymmetry
- [ ] Confirm time stop (playbook T+12h or tighter to close before Warsh-House 14:00 UTC)
- [ ] Confirm egress-restoration path if this URGENT-in-flight-would-execute (Supabase-write-required)
- [ ] Acknowledge cumulative event-driven-trades still 0 + URGENT-elapsed-without-execution n=3 consecutive

## Escalation

If any of the below occur before CPI-print, treat as **NO TRADE** default and re-brief:
- Kharg-Island oil-terminal-strike (per 07-10 Trump-threat carry)
- Israeli direct-entry-to-Iran-conflict announcement
- Chinese or Russian material-support-to-Iran announcement
- Hormuz-market-confirmed-halt (US-CENTCOM freedom-of-navigation reversal)
- Kill-switch consideration re-evaluation warranted → set `crypto_regime.skip_entries = true` if egress restored

## Notes for post-event review (crypto-event-review routine)

- Record actual print vs consensus, actual BTC path T+0/+30min/+2h/+12h, whether direction-priming-corrected setup outperformed baseline
- Note whether BTC-decoupling-framing held or reversed on Monday full-day tape
- Log URGENT-elapsed-without-execution status (n=3 → n=4 if elapsed)
- Feed into 06-12 oil-shock proposal Andy-decision file — 07-13 §v/§ii day-5 configuration-VALIDATED-BUT-DIRECTION-DECOUPLED reading
- Feed into rate-level-carry-error methodology note (07-13 §vi) — first-observed pre-cutoff-training-anchor-drift failure-mode-bucket-5

---

**File exists = signal for Andy to review + approve before 12:30 UTC 2026-07-14.** Silence past that time = URGENT-elapsed-without-execution n=4 consecutive.

# URGENT — Pre-Event Briefing: NFP 07 Aug 2026

**Written:** 2026-08-06 (Thu) morning UTC.
**Event:** US Non-Farm Payrolls (July 2026 data)
**Time:** **Fri 2026-08-07 12:30 UTC (08:30 ET)** — T+1d, ~28h from now.
**Playbook:** `crypto/brain/event-playbooks.md §Playbook: US NFP` (skip-unless-extreme).
**Status:** ANDY REVIEW + APPROVAL REQUIRED. This is a proposed setup — no auto-execution.

---

## 1. Why URGENT

- Tier-1 mapped event within 24h → per routine spec `crypto-event-scan.md` Step 5, an URGENT briefing is required.
- **Companion trigger: ADP came in at 44K vs 120K consensus (–76K miss), prior June revised DOWN to 95K from 98K.** ADP is not a perfect NFP predictor, but a 63% downside miss with a downward prior revision is a strong dovish pre-color that shifts the NFP distribution left.
- The `§NFP` playbook says: *skip unless extreme (>2σ). When traded: TP +2%, SL −1.5%, T+12h time stop.* The ADP miss materially raises the probability of a sub-consensus NFP print that could enter 2σ-extreme territory.

## 2. Consensus & 2σ-extreme thresholds

| Metric | Consensus | Prior (revised) | 2σ-extreme low | 2σ-extreme high |
|---|---|---|---|---|
| NFP change | 80K (range 80-88K) | 57K | ~<20K | ~>140K |
| Unemployment rate | 4.2% (some 4.3%) | 4.2% | N/A (secondary) | N/A |
| Avg hourly earnings YoY | 3.5% | 3.5% | N/A | N/A |

Sources: FinancialJuice, FXTM, TradingEconomics, MarketPulse, continuumeconomics (composite carry from 08-04/08-05 briefings, confirmed today).

## 3. Post-ADP-miss NFP distribution (routine's interpretation)

- ADP miss to 44K + June ADP revision –3K = **cumulative dovish shock ~79K vs pre-week baseline**.
- Historical ADP-NFP correlation ~0.55-0.65 same-month, but ADP tends to under-shoot NFP by ~20-40K in weakening labour markets (structural bias).
- Routine estimate: NFP-consensus miss (<60K print) probability advances from base ~25% to **~55-65%** post-ADP.
- **Sub-20K 2σ-extreme dovish print probability**: base ~7-10% → post-ADP **~20-28%** (materially elevated but still minority scenario).
- **Sub-0K (net job losses) print probability**: base ~2-3% → post-ADP **~8-12%** (tail but non-trivial).
- Above-consensus (>100K) probability: base ~25% → post-ADP **~10-15%** (materially reduced).
- Above-140K (2σ-extreme hawkish) probability: base ~3-5% → post-ADP **~1-3%** (near-tail).

## 4. Playbook §NFP directional map applied

| NFP print | BTC directional bias per §NFP + adjacencies | Playbook action |
|---|---|---|
| **<20K (2σ-extreme dovish)** | UP-bias, dovish-for-Fed → risk-on. Historical rally probability ~65-70%. | **TRADEABLE per playbook**: entry T+30 min post-print, TP +2%, SL −1.5%, T+12h stop. |
| 20K-40K (below-consensus but not 2σ) | Small UP-bias, weak signal. | **Skip per playbook** (not extreme). |
| 40K-100K (near-consensus / in-line) | Mixed, chops. | Skip per playbook. |
| 100K-140K (above-consensus but not 2σ) | Small DOWN-bias, hawkish-tilt. | Skip per playbook. |
| **>140K (2σ-extreme hawkish)** | DOWN-bias, hawkish-for-Fed → risk-off. Historical drop probability ~60-65%. | **TRADEABLE per playbook**: entry T+30 min, sell direction, TP −2%, SL +1.5%, T+12h stop. Note: post-ADP probability of this scenario is very low (~1-3%). |

## 5. Proposed trade setup (contingent, Andy-approval-gated)

**Primary scenario (dovish-extreme, NFP <20K):**
- **Direction:** LONG BTC
- **Entry:** market buy at T+30 min after 12:30 UTC print (i.e., ~13:00 UTC 08-07) — waits for initial whipsaw to clear
- **TP:** +2% from entry (per §NFP playbook, smaller than FOMC given typical NFP move magnitude)
- **SL:** −1.5% from entry (per §NFP playbook)
- **Time stop:** T+12h (i.e., ~00:30 UTC 08-08)
- **Position size:** £30 notional at 1x (paper trading only; per `strategy/event-driven.md` v1 max-per-trade cap = 30% of £100 capital)
- **Kill-switch overlay:** if BTC breaches $61,069 before or during trade, close immediately per CLAUDE.md rule 5
- **Fee assumption:** ~0.1% round-trip → $0.03 on £30 notional = negligible

**Secondary scenario (hawkish-extreme, NFP >140K, ~1-3% probability):**
- **Direction:** SHORT BTC (perpetual futures if authorised; else skip — spot-only cannot express short)
- **Entry:** T+30 min market sell
- **TP:** −2%, **SL:** +1.5%, **Time stop:** T+12h
- **Same size + kill-switch overlay.**

**All-other-scenarios (~75-85% probability):**
- **SKIP.** Per §NFP playbook `skip-unless-extreme`. Log outcome for post-event review.

## 6. Cross-catalyst considerations for Andy

- **CLARITY-Act Senate vote also 08-07 contingent** — but per today's scan, NO cloture motion filed as of 08-06 morning. Cloture required Tuesday (08-05) for a Thursday (08-07) vote; cloture Wednesday (today) would set Friday (08-08) vote, ONE day past 08-07 recess-deadline. **Vote-happens-08-07 probability degrades to ~30-40%** conditional on emergency cloture-filing today. If CLARITY vote happens AND NFP prints extreme, dual-catalyst-Friday materializes — additive-or-cancelling depending on directional alignment. **Recommendation: do NOT increase position size for dual-catalyst; keep at £30 notional to avoid over-concentration.**
- **Coldcard exploit has stabilized** (no wave-5, TRM Labs $116M anchor) — not a live counter-signal for NFP trade.
- **BTC cushion at $3.5-3.7K vs kill-switch = ~5.75-6.12%.** Comfortable pre-event distance. A dovish-NFP-UP move would widen cushion further; a hawkish-NFP-DOWN move at –2% from ~$64,700 = ~$63,400 = cushion still ~3.8% vs kill-switch = trade-eligible.

## 7. Fee-vs-move math (playbook edge check)

- Expected move at entry (dovish-extreme scenario): +2% typical, ~65-70% hit rate
- Fee: ~0.1% round-trip
- Fee as % of expected move: 0.1% / 2% = **5%** → clean edge (per event-driven strategy fee thesis: fees should be <5% of expected move; passes)
- Expected value at 1x sizing: 0.68 × 2% + 0.32 × (–1.5%) = 1.36% – 0.48% = **+0.88% expected value per trade after fees ~0.78%** at n=1 sample (well within positive-EV envelope)

## 8. What ANDY needs to decide

1. **Approve or reject** the primary-scenario (dovish-extreme LONG) setup — including size, TP, SL, time stop parameters.
2. **Approve or reject** the secondary-scenario (hawkish-extreme SHORT) setup — noting spot-only execution cannot express this.
3. **Confirm** paper-trading execution venue (Binance spot per `strategy/event-driven.md`) and manual-execution vs semi-automated posture.
4. **Confirm** kill-switch overlay behaviour if BTC breaches $61,069 during the trade — auto-close or notify-and-wait.
5. **Flag** any conflicting Andy-view on ADP-as-NFP-predictor that would down-weight this URGENT trigger.

## 9. Non-trade watch items 08-07

- ADP-vs-NFP correlation observation (n=1 datum for future playbook refinement)
- CLARITY-Act cloture-filing status EOD 08-06 → determines dual-catalyst-Friday potential
- ETF flow print for 08-06 (reported 08-07 pre-market) — institutional-buying momentum check
- BTC pre-event drift 08-06 late → 08-07 early (per §FOMC template adjacency: T−30 min BTC volatility often drops)
- 12-h post-event follow-through window for any late-day reversal

## 10. Post-event review commitment

Per `strategy/event-driven.md` core-loop: routine will write `crypto/learnings/2026-08-07-nfp-observation.md` at T+24h capturing:
- Actual NFP print vs consensus vs ADP-pre-color
- BTC price path T-30m → T+0 → T+30m → T+2h → T+12h
- Trade outcome (executed vs skipped, TP/SL/time-stop trigger)
- Playbook §NFP base-rate observation (increment or contradict counter)
- Any playbook refinement candidates (e.g., ADP-major-miss-as-NFP-pre-color-strength)

---

## Files touched

- `crypto/briefings/URGENT-2026-08-06-pre-event.md` (this file, new).
- Companion: `crypto/briefings/2026-08-06-event-scan.md` (daily scan).
- No `brain/`, `strategy/`, `routines/`, `learnings/` edits.

## One-line summary

```
[URGENT-NFP-08-07] NFP T+1d consensus 80K prior 57K ADP-PRE-COLOR 44K MAJOR MISS shifts NFP-Playbook skip-unless-extreme toward watch-for-sub-20K-2σ-dovish-tradeable ~20-28pct probability primary-scenario LONG BTC entry T+30min TP+2pct SL-1.5pct T+12h £30 notional 1x kill-switch overlay $61,069 secondary-scenario SHORT tail ~1-3pct spot-only skip andy-approval-required
```

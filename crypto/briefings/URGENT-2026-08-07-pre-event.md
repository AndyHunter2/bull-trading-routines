# URGENT — Pre-Event Briefing: NFP 07 Aug 2026 (SAME-DAY FIRE)

**Written:** 2026-08-07 (Fri) morning UTC.
**Event:** US Non-Farm Payrolls (July 2026 data)
**Time:** **Fri 2026-08-07 12:30 UTC (08:30 ET)** — T+HOURS AWAY (fires TODAY).
**Playbook:** `crypto/brain/event-playbooks.md §Playbook: US NFP` (skip-unless-extreme).
**Status:** ANDY REVIEW + APPROVAL REQUIRED. Proposed setup, no auto-execution.
**Supersedes:** `URGENT-2026-08-06-pre-event.md` (T+1d version) — this file is the T+0d refresh.

---

## 1. What changed since yesterday's URGENT

- **CLARITY-Act DEFINITIVELY DEAD FOR AUGUST** (CoinDesk 08-06 authoritative). Dual-catalyst-Friday narrative COLLAPSES to NFP-only. **Removes: cross-catalyst position-size damping recommendation.** No CLARITY-Act interference with NFP trade sizing or direction — you can size purely to §NFP playbook.
- **BTC cushion slightly compressed vs 08-06** (mid ~5.3% vs 08-06 mid ~5.9%), still comfortable pre-event. Dovish-extreme NFP UP-move would widen further; hawkish-extreme DOWN-move at −2% from ~$64,311 = ~$63,024 = cushion still ~3.2% vs kill-switch = trade-eligible with margin.
- **08-06 ETF flow print +$128.69M net-inflow** (IBIT +$128.33M dominant) confirms Coldcard-inverse-flow n=2 fill — background institutional-bid persists into NFP-fire.
- **Coldcard media-anchor drift to $130M+** (Bloomberg-tier coverage) but Galaxy forensic count unchanged at $114M; **not a live counter-signal for NFP trade.**
- **ADP-pre-color 44K miss unchanged** — still the primary edge-input for NFP distribution skew.

## 2. Consensus & 2σ-extreme thresholds (refreshed 08-07 morning)

| Metric | Consensus | Prior (Jun 2026) | Range | 2σ-extreme low | 2σ-extreme high |
|---|---|---|---|---|---|
| NFP change | 80K | 57K | 40K–157K | ~<20K | ~>140K |
| Unemployment rate | 4.2% | 4.2% | 4.1–4.3% | N/A | N/A |
| Avg hourly earnings YoY | 3.5% | 3.5% | 3.4–3.6% | N/A | N/A |

Sources: FinancialJuice 08-03, TradingKey July NFP Preview, Cannon Trading 08-07, Continuum Economics 08-05, TradingEconomics BLS anchor.

## 3. Post-ADP-miss NFP distribution (routine interpretation, refreshed)

- ADP came in 44K vs 120K consensus 08-05 (−76K miss) + prior revised to 95K from 98K = cumulative dovish shock ~79K vs pre-week baseline (unchanged from URGENT-08-06).
- Historical ADP-NFP correlation ~0.55-0.65 same-month; ADP tends to under-shoot NFP by ~20-40K in weakening labour markets (structural bias).
- **Sub-20K 2σ-extreme dovish probability**: base ~7-10% → post-ADP ~20-28% (**materially elevated** but still minority scenario).
- **Sub-0K (net job losses) tail**: base ~2-3% → post-ADP ~8-12%.
- **Consensus-miss (<60K print) probability**: base ~25% → post-ADP ~55-65%.
- **Above-consensus (>100K)** base ~25% → post-ADP ~10-15%.
- **Above-140K (2σ-extreme hawkish)** base ~3-5% → post-ADP ~1-3% (near-tail).

## 4. Playbook §NFP directional map applied

| NFP print | BTC directional bias | Playbook action |
|---|---|---|
| **<20K (2σ-extreme dovish)** | UP-bias (dovish-for-Fed → risk-on). Rally probability ~65-70%. | **TRADEABLE**: LONG BTC entry T+30min, TP +2%, SL −1.5%, T+12h stop. |
| 20K-40K (below-consensus, non-2σ) | Small UP-bias, weak signal. | **Skip** (not extreme). |
| 40K-100K (near-consensus / in-line) | Mixed, chops. | Skip. |
| 100K-140K (above-consensus, non-2σ) | Small DOWN-bias, hawkish-tilt. | Skip. |
| **>140K (2σ-extreme hawkish)** | DOWN-bias (hawkish-for-Fed → risk-off). Drop probability ~60-65%. | **TRADEABLE**: SHORT BTC entry T+30min, TP −2%, SL +1.5%, T+12h stop. (Spot-only cannot express — perpetuals authorization required else skip.) |

## 5. Proposed trade setup (contingent, Andy-approval-gated)

**Primary scenario — DOVISH-EXTREME (NFP <20K, ~20-28% post-ADP probability):**
- **Direction:** LONG BTC
- **Entry:** market buy at T+30min after 12:30 UTC print (≈13:00 UTC 08-07) — waits for whipsaw to clear
- **TP:** +2% from entry
- **SL:** −1.5% from entry
- **Time stop:** T+12h (≈00:30 UTC 08-08)
- **Position size:** £30 notional at 1x (paper-trading only; per `strategy/event-driven.md` v1 max-per-trade = 30% of £100 capital)
- **Kill-switch overlay:** if BTC breaches $61,069 before or during trade, close immediately (CLAUDE.md rule 5)
- **Fee assumption:** ~0.1% round-trip → $0.03 on £30 notional = negligible

**Secondary scenario — HAWKISH-EXTREME (NFP >140K, ~1-3% post-ADP probability):**
- **Direction:** SHORT BTC (perpetuals if authorised; else SKIP — spot-only cannot express)
- **Entry:** T+30min market sell
- **TP:** −2%, **SL:** +1.5%, **Time stop:** T+12h
- Same size + kill-switch overlay

**All-other-scenarios (~70-85% probability):**
- **SKIP.** §NFP `skip-unless-extreme` remains operating rule. Log outcome for post-event review.

## 6. Cross-catalyst considerations (refreshed 08-07)

- **CLARITY-Act OFF THE TABLE** — CoinDesk 08-06 confirms Senate won't vote before summer recess; vote slips to Sept 15-16. **Dual-catalyst-Friday collapses to NFP-only. No cross-catalyst size damping needed.**
- **Coldcard exploit** — media anchor drift to $130M+ (Bloomberg-tier coverage) but Galaxy forensic count stable at $114M and 4 confirmed waves (NO confirmed wave-5). Not a live counter-signal for NFP.
- **08-06 ETF net-inflow +$128.69M** — institutional-bid backdrop supports dovish-UP-tail scenario (concurrent buying pressure); marginally reduces hawkish-DOWN-tail follow-through risk.
- **BTC cushion pre-event mid ~5.3%** ($64,311 vs $61,069 kill-switch $3,242 above trigger). Dovish-UP move widens cushion further; hawkish-DOWN at −2% from entry = ~$63,024 = cushion still ~3.2% vs kill-switch = trade-eligible with margin.

## 7. Fee-vs-move math (playbook edge check, unchanged from URGENT-08-06)

- Expected move at entry (dovish-extreme): +2% typical, ~65-70% hit rate
- Fee: ~0.1% round-trip
- Fee as % of expected move: 0.1% / 2% = **5%** → clean edge (event-driven strategy fee-thesis threshold: <5% of expected move; passes at boundary)
- Expected value at 1x sizing: 0.68 × 2% + 0.32 × (−1.5%) = 1.36% − 0.48% = **+0.88% pre-fee, ~+0.78% after-fee EV** per trade (positive-EV envelope holds)

## 8. What ANDY needs to decide (refreshed)

1. **Approve/reject** primary-scenario (dovish-extreme LONG) — size / TP / SL / time-stop parameters.
2. **Approve/reject** secondary-scenario (hawkish-extreme SHORT) — noting spot-only execution cannot express this direction.
3. **Confirm** paper-trading venue (Binance spot per `strategy/event-driven.md`) and manual-execution vs semi-automated posture.
4. **Confirm** kill-switch overlay behaviour if BTC breaches $61,069 during trade — auto-close or notify-and-wait.
5. **Flag** any conflicting Andy-view on ADP-as-NFP-predictor that would down-weight this URGENT trigger.

## 9. Non-trade watch items 08-07

- ADP-vs-NFP correlation observation (n=1 datum for future playbook refinement)
- CLARITY-Act formal-confirmation-of-recess-with-no-vote (CoinDesk 08-06 authoritative but any 08-07 fresh statement watched)
- ETF flow print for 08-07 (reported 08-08 pre-market) — Coldcard-inverse-flow-to-ETF deceleration check (three-print sequence 07-30 $233M → 08-04 $170M → 08-06 $128M continues?)
- BTC pre-event drift 08-07 early → 12:30 UTC (§FOMC template adjacency: T−30min BTC volatility often drops)
- 12h post-event follow-through window for late-day reversal
- Coldcard wave-5 possible-but-unlikely (Bloomberg-media-inflation more probable explanation for $130M+ headlines)

## 10. Post-event review commitment

Per `strategy/event-driven.md` core-loop: routine will write `crypto/learnings/2026-08-07-nfp-observation.md` at T+24h (or T+12h if trade fires) capturing:
- Actual NFP print vs consensus vs ADP-pre-color
- BTC price path T−30min → T+0 → T+30min → T+2h → T+12h
- Trade outcome (executed vs skipped, TP/SL/time-stop trigger)
- Playbook §NFP base-rate observation (increment or contradict counter)
- Playbook refinement candidates (e.g., `ADP-major-miss-as-NFP-pre-color-strength` sub-template)
- CLARITY-Act off-table clean-signal isolation (single-catalyst-NFP-move measurable free of CLARITY noise)

---

## Files touched

- `crypto/briefings/URGENT-2026-08-07-pre-event.md` (this file, new; supersedes URGENT-2026-08-06-pre-event.md).
- Companion: `crypto/briefings/2026-08-07-event-scan.md` (daily scan).
- No `brain/`, `strategy/`, `routines/`, `learnings/` edits.

## One-line summary

```
[URGENT-NFP-08-07-SAME-DAY-FIRE] NFP T+HOURS 12:30 UTC consensus 80K prior 57K UR 4.2pct wages 3.5pct range 40-157K 2σ-thresholds ~<20K or >140K ADP-pre-color 44K MAJOR MISS unchanged shifts NFP-Playbook skip-unless-extreme toward watch-for-sub-20K-2σ-dovish-tradeable ~20-28pct probability primary-scenario LONG BTC entry T+30min TP+2pct SL-1.5pct T+12h £30 notional 1x kill-switch overlay $61,069 secondary-scenario SHORT tail ~1-3pct spot-only skip; CLARITY-Act DEFINITIVELY DEAD FOR AUGUST dual-catalyst-Friday COLLAPSES to NFP-only no cross-catalyst size-damping needed; BTC $63,820-$64,996 mid $64,311 cushion mid ~5.3pct hawkish-DOWN -2pct = $63,024 cushion still ~3.2pct trade-eligible with margin; 08-06 ETF net-inflow +$128.69M IBIT dominant institutional-bid backdrop supports dovish-tail; Coldcard media-anchor drift $130M+ Bloomberg but Galaxy forensic $114M unchanged 4 confirmed waves NO wave-5 not-live-counter-signal; andy-approval-required
```

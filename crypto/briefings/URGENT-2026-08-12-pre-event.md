# URGENT — Pre-Event Briefing: CPI Wed 12 Aug 2026 (T-24h TRIGGER)

**Written:** 2026-08-11 (Tue) 08:00 UTC.
**Event:** US CPI (July 2026 data).
**Time:** **Wed 2026-08-12 12:30 UTC (08:30 ET)** — **T+~28h from write** (crosses inside T+24h at ~12:30 UTC today).
**Playbook:** `crypto/brain/event-playbooks.md §Playbook: US CPI Release` (surprise-directional, TP +2%, SL −1.5%).
**Status:** ANDY REVIEW + APPROVAL REQUIRED. Proposed setup, no auto-execution.
**Supersedes:** none (first URGENT for this CPI print; 08-10 pre-committed to write today).
**Companion:** `crypto/briefings/2026-08-11-event-scan.md` (daily scan).

---

## 1. What changed vs prior scans (consensus lock cycle)

- **Consensus DEFINITIVELY LOCKED per today's Dow Jones read: 3.4% headline YoY / 2.5% Core YoY; MoM +0.1% headline / +0.32% Core.** Prior June: 3.5% headline / 2.6% Core.
  - This SUPERSEDES 08-10's flagged 2.8% headline / 3.0% Core (MEXC/analyst — off-vintage / stale).
  - This SUPERSEDES 08-09's 3.5–3.6% headline prediction-market spread (either stale or different question framing).
  - Dual-source confirmation: Kiplinger 08-10 + Markets Today (X) 08-10 + Robinhood prediction market 08-10 + CNBC 08-10.
- **Prediction markets skew "tame"** (CNBC 08-10: "prediction markets show tame inflation") — suggests directional balance favors in-line-or-below-consensus outcomes, i.e., dovish-tail probability > hawkish-tail probability at this snapshot.
- **BIP-110 fork tail-risk RESOLVED** — 2.53% miner support vs 55% required, minority chain 26 blocks behind main, effectively dead. Removes cross-catalyst protocol-tail from the CPI-trade window. Clean event trade possible.
- **CLARITY-Act off-table until Sept 14+.** No dual-catalyst-Wednesday interference. Pure CPI print.
- **BTC cushion compressed to mid ~5.8%** (mid ~$64,600 vs $61,069 kill-switch) from 08-10's ~6.8%. Still comfortable pre-event; dovish-UP widens; hawkish-DOWN at −2% from $64,600 = $63,308 = cushion still ~3.7% vs kill-switch = trade-eligible with margin.
- **ETF flows deceleration continues** (n=4 confirmed: $233M → $170M → $128M → $101.7M → ~$98.9M). Institutional bid softening at the margin; consistent with today's mild BTC-price compression.

## 2. Consensus & 1σ-surprise thresholds (locked 08-11)

| Metric | Consensus | Prior (Jun 2026) | 1σ-surprise band (historical CPI vs consensus) |
|---|---|---|---|
| Headline CPI YoY | **3.4%** | 3.5% | ~±0.1–0.2pp → dovish-eligible ≤3.2%, hawkish-eligible ≥3.6% |
| Headline CPI MoM | +0.1% | −0.4% (June)* | ~±0.1pp → dovish ≤0.0%, hawkish ≥+0.2% |
| Core CPI YoY | **2.5%** | 2.6% | ~±0.1pp → dovish ≤2.3%, hawkish ≥2.7% |
| Core CPI MoM | +0.32% | flat | ~±0.1pp → dovish ≤+0.2%, hawkish ≥+0.4% |

*Note: MoM June headline print was −0.4% per Markets Today 08-10 excerpt, giving elevated base-effect for July's +0.1% consensus.

Sources: Kiplinger 08-10 (Dow Jones consensus), Markets Today X 08-10 (analyst-composite), CNBC 08-10 (prediction-market color), Robinhood prediction market 08-10, Polymarket 08-10.

Strategy entry rule 2 requires "actual vs consensus is outside 1σ" — 1σ ≈ 0.1–0.2pp for headline YoY historically.

## 3. Playbook §US CPI directional map applied

| Headline CPI print | Surprise | BTC directional bias | Playbook action |
|---|---|---|---|
| **≤3.2%** (≥0.2pp below consensus, dovish 1σ+) | Dovish surprise | UP +1.5 to +4% at ~68% base rate | **TRADEABLE**: LONG BTC entry T+30min, TP +2%, SL −1.5%, T+24h stop |
| 3.3% (below consensus, sub-1σ) | Small dovish | Small UP bias, weak signal | **Skip** (not outside 1σ per strategy rule 2) |
| 3.4% (in-line) | None | Chops, small drift | **Skip** |
| 3.5% (above consensus, sub-1σ) | Small hawkish | Small DOWN bias, weak signal | **Skip** |
| **≥3.6%** (≥0.2pp above consensus, hawkish 1σ+) | Hawkish surprise | DOWN −1 to −3% at ~60% base rate | **TRADEABLE**: SHORT BTC (perpetuals-only; spot-only sandbox → **SKIP**) |

Core-CPI cross-check: if Core deviates in same direction as headline (both dovish or both hawkish), signal strength increases. If Core diverges from headline (e.g. headline dovish but Core in-line/hawkish), signal weakens — skip unless headline is clearly 1σ+ AND Core is at least directionally consistent.

## 4. Proposed trade setup (contingent, Andy-approval-gated)

**Primary scenario — DOVISH-SURPRISE (headline ≤3.2%, Core ≤2.4%):**
- **Direction:** LONG BTC (spot)
- **Entry:** market buy at T+30min after 12:30 UTC print (≈13:00 UTC 08-12) — waits for whipsaw to clear per playbook
- **TP:** +2% from entry
- **SL:** −1.5% from entry
- **Time stop:** T+24h (≈12:30 UTC 08-13) — falls before PPI (08-13 12:30 UTC) so PPI does not cross-contaminate exit
- **Position size:** £30 notional at 1x (paper-trading only; per `strategy/event-driven.md` v1 max-per-trade = 30% of £100 capital)
- **Kill-switch overlay:** if BTC breaches $61,069 before or during trade, close immediately (CLAUDE.md rule 5)
- **Fee assumption:** ~0.1% round-trip → negligible on £30 notional

**Secondary scenario — HAWKISH-SURPRISE (headline ≥3.6%, Core ≥2.7%):**
- **Direction:** SHORT BTC (perpetuals only). Spot-only paper sandbox cannot express — **SKIP unless perpetuals authorised.**
- **If perpetuals authorised:** T+30min market sell, TP −2%, SL +1.5%, T+24h stop, £30 notional 1x, kill-switch overlay.

**All-other scenarios (in-line or sub-1σ surprise) — SKIP.** Strategy entry rule 2 requires outside-1σ surprise. Playbook §CPI in-line = "small drift in prevailing trend" — not tradeable at 1x paper stake.

## 5. Probability distribution (routine interpretation)

Given (i) prediction markets skew tame, (ii) June headline came in at 3.5% (already trending down), (iii) MoM June was −0.4% giving supportive base-effect for July's +0.1% consensus, (iv) CME FedWatch odds of Sept hike fell 55%→40% on the week suggesting market is pricing continued disinflation:

- **Sub-3.2% (dovish 1σ+ tradeable):** base ~20% → today ~22–28% (mildly elevated due to tame-skew prediction-market color)
- **3.3% (small dovish, non-tradeable):** ~15%
- **3.4% (in-line):** ~25% (largest single bin)
- **3.5% (small hawkish, non-tradeable):** ~15%
- **≥3.6% (hawkish 1σ+ tradeable):** ~15–20% (fatter tail than pure symmetry due to sticky-services-inflation risk always-present)
- **Core sub-2.4%:** ~18–22% (Core more sticky; dovish tail thinner)
- **Core ≥2.7%:** ~18–22%

**Tradeable-scenario aggregate probability: ~37–48%** (dovish 22–28% + hawkish 15–20%). Bulk of probability mass (~52–63%) is skip-territory.

## 6. Cross-catalyst considerations (08-11)

- **BIP-110 fork RESOLVED** — no protocol-level cross-catalyst noise. Clean CPI trade.
- **CLARITY-Act off-table until Sept 14+** — no legislative cross-catalyst.
- **PPI Thu 08-13 12:30 UTC (T+24h after CPI print)** — proposed T+24h time-stop lands **just before** PPI print. Exit before PPI to avoid post-trade cross-contamination. If Andy prefers T+12h stop to add margin, that's acceptable (playbook default is T+24h per §CPI; 08-07 NFP used T+12h due to lower-persistence event).
- **08-11 ETF flow print (reports 08-12 pre-market)** — will land right before the 12:30 UTC CPI print. If deceleration continues (flow ≤$80M) → mildly reinforces cushion-compression narrative; if flow re-accelerates (>$130M) → mildly reinforces dovish-UP-tail scenario. Not a trigger itself, just color.
- **Coldcard wallet movement (30.185 BTC to fresh address)** — attacker-hygiene, not fresh escalation. Not a live counter-signal for CPI trade.
- **BTCPay Lightning exploit** — small, non-major-exchange. Playbook §Major Exchange Hack does not trigger. Not a live counter-signal.
- **BTC cushion mid ~5.8%**: dovish-UP move widens; hawkish-DOWN at −2% = ~$63,308 = still ~3.7% above kill-switch = trade-eligible with margin.

## 7. Fee-vs-move math (edge check)

- Expected move at entry (dovish-surprise): +2% typical, ~68% hit rate
- Fee: ~0.1% round-trip
- Fee as % of expected move: 0.1% / 2% = **5%** → at fee-thesis boundary (event-driven strategy accepts <5% fee-of-move; passes at boundary)
- Expected value at 1x sizing (dovish path): 0.68 × 2% + 0.32 × (−1.5%) = 1.36% − 0.48% = **+0.88% pre-fee, ~+0.78% after-fee EV** per trade
- Positive-EV envelope holds. Consistent with 08-07 NFP calc (same playbook family).

## 8. What ANDY needs to decide

1. **Approve/reject** primary-scenario (dovish-surprise LONG at headline ≤3.2% AND Core ≤2.4%, or override Core requirement) — size / TP / SL / time-stop parameters.
2. **Approve/reject** secondary-scenario (hawkish-surprise SHORT) — noting spot-only execution cannot express this direction; requires perpetuals authorization.
3. **Confirm** paper-trading venue (Binance spot per `strategy/event-driven.md`) and manual-execution vs semi-automated posture.
4. **Confirm** kill-switch overlay behaviour if BTC breaches $61,069 during trade — auto-close or notify-and-wait.
5. **Confirm** T+24h time-stop (playbook default, lands just before PPI 08-13 12:30 UTC) vs T+12h (adds margin, lands ~00:30 UTC 08-13). Recommend **T+24h**: gives full playbook window and cleanly exits before PPI.
6. **Flag** any preferred dovish/hawkish trigger override (e.g. tighter Core-vs-headline requirement, or looser sub-1σ tradeability).

## 9. Non-trade watch items 08-11 → 08-12

- **Pre-CPI drift 08-11 afternoon → 08-12 12:30 UTC** (§CPI/§FOMC template adjacency: T−24h to T−30min often quiet-drift; compression toward $64K = normal; break below $63.5K pre-print = pre-CPI-hawkish-positioning signal).
- **08-11 ETF flow print** (reports 08-12 pre-market ~08:00 ET) — deceleration continues or reverses.
- **Any fresh Coldcard-attacker on-chain move** beyond the 30.185 BTC transfer.
- **PPI consensus firming** into 08-12/08-13 (currently unfirmed).
- **Any late-breaking Fed-speak** into CPI print (blackout period typically limits, but ad-hoc commentary possible).
- **12h post-event follow-through window** for late-day reversal per §CPI template.

## 10. Post-event review commitment

Per `strategy/event-driven.md` core-loop: routine will write `crypto/learnings/2026-08-12-cpi-observation.md` at T+24h (or T+12h if trade fires and closes early) capturing:
- Actual CPI print (headline + Core, YoY + MoM) vs consensus vs prediction-market skew
- BTC price path T−30min → T+0 → T+30min → T+2h → T+24h
- Trade outcome (executed vs skipped, TP/SL/time-stop trigger, or skip-reason)
- Playbook §CPI base-rate observation (increment or contradict counter)
- Playbook refinement candidates (e.g., prediction-market-skew-as-CPI-pre-color sub-template, dovish-side base-effect enhancement)
- Cross-check vs PPI print at T+24h (secondary confirmation of CPI-implied disinflation trajectory)

---

## Files touched

- `crypto/briefings/URGENT-2026-08-12-pre-event.md` (this file, new).
- Companion: `crypto/briefings/2026-08-11-event-scan.md` (daily scan, new same cycle).
- No `brain/`, `strategy/`, `routines/`, `learnings/`, `CLAUDE.md` edits (rule 6).

## One-line summary

```
[URGENT-CPI-08-12-T+28h] CPI Wed 12:30 UTC T+~28h consensus LOCKED Dow-Jones 3.4pct headline / 2.5pct Core YoY MoM +0.1pct headline / +0.32pct Core prior-June 3.5pct/2.6pct SUPERSEDES 08-10's 2.8pct off-vintage and 08-09's 3.5-3.6pct prediction-market-spread; prediction-markets skew-tame dovish-tail-fatter-than-hawkish; 1σ tradeable-thresholds headline ≤3.2pct dovish or ≥3.6pct hawkish Core cross-check required same-direction preferred; primary-scenario LONG BTC on dovish-surprise entry T+30min TP+2pct SL-1.5pct T+24h stop £30 notional 1x kill-switch $61,069 overlay ~22-28pct probability positive-EV +0.78pct after-fee; secondary-scenario SHORT on hawkish-surprise ~15-20pct probability spot-only-SKIP-unless-perpetuals-authorised; all-other-scenarios SKIP per strategy-rule-2 outside-1σ requirement; BIP-110 fork RESOLVED 2.53pct-vs-55pct dead removes protocol-tail-cross-catalyst clean CPI trade; CLARITY-Act off-table until Sept-14+; BTC mid ~$64,600 cushion mid ~5.8pct hawkish-DOWN-2pct = $63,308 cushion still ~3.7pct trade-eligible with margin; ETF flow deceleration continues n=4 institutional-bid softening at margin CME FedWatch Sept-hike 55→40pct market-pricing-continued-disinflation; T+24h stop lands before PPI 08-13 12:30 UTC clean-exit; andy-approval-required
```

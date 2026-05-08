# URGENT — Pre-Event Brief: US NFP April 2026 — 2026-05-08 12:30 UTC

**Trigger:** Tier-1 event (US NFP) inside 24h window. **T+~4.5h** from 08:00 UTC scan.
**Strategy:** event-driven (Option C) — paper trade only.
**Approval:** **REQUIRES Andy's explicit go/no-go before any execution.** This file is a proposal, not an order.
**Companion:** `2026-05-08-event-scan.md` (daily scan, same run).
**Precedent:** `URGENT-2026-04-29-pre-event.md` (FOMC) — Andy-approved template structure reused.

---

## Event

| | |
|---|---|
| **Event** | US Non-Farm Payrolls (April 2026 data) |
| **Statement release** | **2026-05-08 12:30 UTC** (8:30 a.m. ET) |
| **Consensus headline** | **~62k** (FXStreet, MarketPulse, Kiplinger). Range across analysts: ~50–65k median, **Fifth Third Commercial Bank outlier high at 120k**. Yesterday's heygotrade 49k pin migrated upward today. |
| **Consensus unemployment rate** | **4.3%** (unchanged from March) |
| **Consensus AHE m/m** | **+0.3%** to +0.4% |
| **Consensus AHE y/y** | **+3.8%** (rising from 3.5%) |
| **Prior (March 2026)** | **+178k headline**, 4.3% UE — widely framed as healthcare/strike-distorted; "healthcare payrolls expected to revert toward baseline" per Kiplinger |
| **Playbook** | `brain/event-playbooks.md` → "US NFP" (mapped) — **"Less consistent than CPI. Skip unless extreme surprise (>2σ). When traded: TP +2%, SL −1.5%, T+12h time stop."** |

## Pre-event context (as of 08:00 UTC scan, T+~4.5h)

- **BTC tape:** $82,500 high tagged early-afternoon ET 06 May → ~$80,900 overnight low → $81,022 at 07 May 09:15 ET → **Asia session 08 May printing $81,820 above $80,800 open** per MEXC. **Coiling continued** — yesterday's range matched but no decisive break. **Babypips frames NFP today as the breakout-or-bull-trap directional inflection.**
- **ADP precursor (RESOLVED 06 May):** **109k actual vs ~118k consensus = mild miss.** Largest monthly print since Jan 2025 but undershot the whisper number. **NEUTRAL signal for NFP central tendency** — does not push toward either >2σ extreme. ADP-NFP correlation is loose; today is the first calibration test point for the carried ADP-as-NFP-precursor sub-playbook proposal.
- **ETF flows:** **9-day inflow streak intact, $2.7B cumulative — first $1B+ week since January.** Wed 06 May breadth narrowed: IBIT-only +$134.6M, FBTC −$38.95M, BITB −$25M. **Net flow signal still bullish but narrowing breadth is a watch-flag.** Strongest pro-bull-bias context for any LONG candidate today.
- **Iran/Hormuz:** Ceasefire holds; **both sides exchanging proposals toward memo to end war** per CNN. CENTCOM "self-defense strikes" on Iranian targets after USS destroyers came under fire (none struck). **De-escalation trajectory; flip-back risk reduced from 06 May framing but not eliminated.** Diffuse-channel impact; not a discrete trigger.
- **Coinbase AWS outage TODAY (08 May):** AWS US-EAST-1 thermal event causing 2+hr Coinbase exchange degraded performance. **NOT a hack, infrastructure-only.** **Timing within the day unclear at 08:00 UTC scan** — if it lands during/around 12:30 UTC NFP window, the cross-event noise complicates entry timing. **Decision-tree contingency added below for this case.**
- **CME futures cash-settled BTC vol launch 01 Jun pending regulatory approval** — out-of-window, no pre-event interaction.
- **Cluster risk T+3 days:** 11 May = Warsh Senate floor confirmation vote + CLARITY Act Senate Banking markup window opens. 12 May = CPI. **Default playbook T+12h time stop closes 00:30 UTC 09 May (Sat) — clean of 11 May cluster by ~2.5 days, with weekend digestion buffer in between. No time-stop shortening required for cluster dodge** (unlike URGENT-2026-04-29 which had to shorten from T+24h to T+12h).
- **Adjacency risk:** **No conflicting Tier-1 event within ±48h of NFP.** ADP already resolved 06 May; CPI not until 12 May (T+96h post-NFP). Clean event window.

## Playbook reference (verbatim from `brain/event-playbooks.md` — US NFP)

> **Event:** Monthly employment report (first Friday, 13:30 UTC).
>
> **Directional bias:** Less consistent than CPI. Jobs-strong can be risk-on (UP) or hawkish-for-Fed (DOWN) depending on context.
>
> **Trade template:** skip unless extreme surprise (>2σ). When traded: TP +2%, SL −1.5%, T+12h time stop.

**Note on release time:** playbook says 13:30 UTC; today's actual release is 12:30 UTC (8:30am ET). The 1-hour discrepancy is the DST/EDT vs EST shift; the substantive timing window is unchanged. T+12h time stop closes 00:30 UTC 09 May regardless.

## Surprise mapping for this specific print

The playbook's "skip unless extreme surprise (>2σ)" is the central decision. **Surprise direction has structural ambiguity** (jobs-strong = risk-on UP vs hawkish-Fed DOWN; jobs-weak = dovish-Fed UP vs growth-scare DOWN), so even when the print is extreme, the directional bet requires reading the AHE component + initial tape reaction together.

**Threshold definitions:**

- **>2σ extreme upside ≈ ≥ 140k headline** (would be "March-like" surprise; ~78k above 62k consensus). Fifth Third 120k outlier is below this threshold — high but not extreme.
- **>2σ extreme downside ≈ ≤ −15k or negative headline** (recession-onset signal; ~77k below 62k consensus).
- **Routine print zone: ~30k to 100k headline** — inside this band, default skip per playbook.

**Five scenarios:**

| Scenario | Headline | UE | AHE m/m | Subjective probability | Read |
|---|---|---|---|---|---|
| **(A) Routine print** | 30k–100k | 4.2–4.4% | 0.2–0.4% | **~70%** | **SKIP per playbook.** Inside-routine outcome; mixed/chop reaction expected. |
| **(B) Hot upside (jobs-strong)** | 100k–140k | 4.1–4.3% | 0.3–0.5% | **~12%** | **SKIP per playbook** (below >2σ threshold). Directionally ambiguous (risk-on vs hawkish-Fed); below threshold, skip default. |
| **(C) Extreme upside (jobs-very-strong)** | ≥ 140k | ≤ 4.2% | ≥ 0.4% | **~6%** | **POTENTIALLY TRADE.** Direction depends on AHE: if AHE ≥ 0.5% m/m → hawkish-Fed channel dominant → **SHORT**; if AHE in-line/cool ≤ 0.3% m/m → risk-on channel dominant → **LONG**. |
| **(D) Soft downside (jobs-weak)** | 0k–30k or 0 to −10k | 4.3–4.5% | 0.1–0.3% | **~10%** | **SKIP per playbook** (likely above >2σ threshold but below true extreme). Dovish-Fed channel modest; growth-scare channel modest. |
| **(E) Extreme downside (jobs-collapse)** | ≤ −15k or sustained negative | ≥ 4.5% | ≤ 0.2% | **~2%** | **POTENTIALLY TRADE.** Direction depends on tape's first 30-min read: if BTC initial reaction up (dovish-Fed dominates) → **LONG** at T+30 min; if BTC initial reaction down (recession-fear dominates) → **SKIP** (don't chase a growth-scare short into already-falling tape). |

The playbook's ambiguity about NFP directional bias means **scenarios (C) and (E) require post-print confirmation from AHE + tape** before any entry. Pre-positioning on the headline alone is off-strategy.

## Proposed trade — decision tree

### Phase 0 — Pre-event (now → 12:30 UTC)

- **No position taken.** No pre-positioning — NFP playbook is skip-default.
- Andy: confirm Binance paper egress is functional (egress incident chain from 19–20 Apr is now 19 days old; if still blocked, **trade cannot execute regardless of approval — proposal becomes moot**).
- Andy: pre-acknowledge approval framework — specifically, whether you authorise scenarios (C) and (E) below if they fire, or only one direction, or neither.
- Watch for Coinbase AWS outage timing: if it materialises during 11:30–13:30 UTC window (around NFP release), cross-event tape noise compromises the post-print read. **Add 30-min delay to entry timing if Coinbase outage is active in NFP window.**

### Phase 1 — NFP release (12:30 UTC) and post-release window (12:30–13:00 UTC)

- **No entry at T+0.** Playbook says wait for whipsaw to clear at T+30 min. Honour that.
- Read the headline number, UE, and AHE m/m by 12:35 UTC.
- Classify into scenario (A)–(E) by 12:45 UTC at the latest.
- Read BTC tape's first 15-min reaction by 12:45 UTC.

### Phase 2 — Entry (13:00 UTC, ~T+30 min)

If **scenario (A) routine print** → **NO TRADE.** Per playbook, skip-default. Write a non-trade learning post-event documenting the routine print and confirming the ADP-as-NFP-precursor sub-playbook calibration test (mild ADP miss → non-extreme NFP).

If **scenario (B) hot upside, below extreme threshold** → **NO TRADE.** Below playbook >2σ threshold. Write a non-trade learning documenting the directional ambiguity and the threshold logic.

If **scenario (C) extreme upside (≥140k)** + **AHE ≥ 0.5% m/m** → **SHORT BTC** (via perpetuals if Andy authorises shorts on paper):
- Direction: market sell / open short
- Notional: **£30 (30% of £100 paper capital, 1x leverage)** per `strategy/event-driven.md`
- Entry price: market at T+30 min (~13:00 UTC)
- TP: **−2% from entry** (close at +2% PnL — per NFP playbook)
- SL: **+1.5% from entry** (cover at −1.5% PnL)
- Time stop: **T+12h (close ~00:30 UTC 09 May)** — playbook default, no shortening required (cluster is 2.5 days out).
- **If shorts are not authorised on the paper account, this scenario is a SKIP** — flag this back to Andy in the post-event learning.

If **scenario (C) extreme upside (≥140k)** + **AHE in-line/cool (≤ 0.3% m/m)** → **LONG BTC**:
- Direction: market buy
- Notional: **£30 (30% of £100 paper capital, 1x leverage)**
- Entry price: market at T+30 min (~13:00 UTC)
- TP: **+2% from entry** (per NFP playbook)
- SL: **−1.5% from entry**
- Time stop: **T+12h (close ~00:30 UTC 09 May)**

If **scenario (D) soft downside (0–30k or marginally negative)** → **NO TRADE.** Likely below true >2σ extreme threshold. Skip-default.

If **scenario (E) extreme downside (≤ −15k or sustained negative)** + **BTC initial 15-min reaction UP** → **LONG BTC** (dovish-Fed channel dominates):
- Direction: market buy
- Notional: **£30 (30% of £100 paper capital, 1x leverage)**
- Entry price: market at T+30 min (~13:00 UTC)
- TP: **+2% from entry**
- SL: **−1.5% from entry**
- Time stop: **T+12h (close ~00:30 UTC 09 May)**

If **scenario (E) extreme downside** + **BTC initial 15-min reaction DOWN** → **NO TRADE.** Don't chase a growth-scare short into already-falling tape — the asymmetric R/R favouring TP is compromised when entering on momentum already in your direction. Skip and write a post-event learning analysing whether the dovish-Fed-vs-growth-scare frame held with this magnitude of downside surprise.

### Phase 3 — Coinbase AWS outage contingency

If at 12:00–12:30 UTC the Coinbase AWS outage is **still active** (or fresh at that time):
- **Delay entry decision by 30 min.** Tape from 12:30–13:30 UTC will be polluted by exchange-availability concerns conflated with NFP read.
- Re-evaluate at 13:30 UTC (~T+1h). If a clear scenario (C) or (E) read is available with clean tape direction, follow Phase 2 logic with adjusted entry at T+1h instead of T+30 min.
- If tape is still confused at 13:30 UTC, **NO TRADE.** Write a learning documenting the cross-event interference.

### Phase 4 — Discretionary overrides

- Per `strategy/event-driven.md` exit rules, Andy may close any position manually at any time.
- If BTC trades through SL pre-emptively in the T+0 to T+30 min whipsaw window, that's by definition before entry — not relevant to active position management.
- If, after entry, BTC retraces violently into early-afternoon US session (~17:00–18:00 UTC) on a competing macro headline, **do not chase the time-stop** — let the SL handle it. Stops protect the asymmetric R/R; second-guessing them mid-event erodes the edge.

## Why the time stop is T+12h, not T+24h

- Playbook default for NFP IS T+12h (unlike FOMC default of T+24h). No shortening required.
- T+12h closes 00:30 UTC 09 May (Saturday). Cluster (Warsh floor vote + CLARITY markup + CPI) opens earliest 11 May Mon, ~2.5 days after time-stop closes. **Comfortable buffer; no cluster overlap risk.**
- Weekend tape (09–10 May) handles position digestion outside market hours; closing pre-weekend is the conservative routing.

## Risk acknowledgements

1. **NFP directional ambiguity is structural, not a parameter.** The playbook explicitly flags NFP as "Less consistent than CPI" and notes that jobs-strong can be risk-on UP or hawkish-Fed DOWN. The decision tree above resolves this by adding AHE as a secondary axis and tape reaction as a tertiary axis, but **the resolution is heuristic, not historical-base-rate-derived.** Sample-size for our routine-derived NFP decisions is zero; this is the first NFP URGENT trigger under Option C.
2. **Egress dependency.** The 19–20 Apr egress incident chain affected Binance + Supabase from this routine's environment. Scan-only routine works on WebSearch; paper-trade execution does not. **If egress is still blocked at 13:00 UTC, the trade cannot execute regardless of Andy's approval.** This file does not pretend otherwise. **Operationally, this is the binding constraint — if egress isn't fixed by 13:00 UTC, no scenario above can fire.**
3. **Coinbase AWS outage cross-event noise.** Today's outage timing is unclear at scan time; Coinbase Q1 results typically post-close (~21:00 UTC) which would be after our T+12h window. If the outage lands earlier (during NFP window), Phase 3 contingency applies. **The AWS-dependency-as-contagion-vector sub-question raised in today's daily scan becomes immediately relevant.**
4. **Consensus drift in 24h.** Yesterday's heygotrade 49k pin → today's FXStreet/Kiplinger 62k pin. **The +13k drift in consensus over 24h pre-print is itself a signal of unsettled expectations** — the >2σ thresholds above are calibrated against the 62k pin but if the "true" consensus is somewhere between 49k and 65k, the threshold moves a bit. Conservative reading: treat 62k as central, ±35k as 1σ-ish, so **>2σ is ~> +132k or ~< −8k**. The 140k upside threshold and −15k downside threshold I've used are conservative-to-strict.
5. **Cluster gap remains unaddressed.** The `cluster` meta-playbook proposal has been carried 16 consecutive scans. NFP T+12h closes 2.5 days before the 11 May cluster opens, so cluster overlap isn't an issue today — but next week's CPI URGENT (11 May 08:00 UTC scan, T+~28h pre-event) lands inside the cluster itself. **Andy direction on cluster meta-playbook is a blocker for next week's URGENT framing.**
6. **No leverage.** 1x only, per strategy file ("No leverage without 20+ trades of proven positive edge at 1x"). This is event #1 of any potentially traded NFP under Option C; counting from FOMC URGENT 29 Apr (which is the only prior URGENT that was potentially-traded), we're at the very start of the proving period.
7. **Fifth Third 120k outlier.** One analyst projection (Fifth Third Commercial Bank) sits at 120k headline — well above the 62k median but below the 140k extreme threshold. **If the actual print lands at 100k–135k, the read is "Fifth Third was right"** — directionally hawkish-leaning but not extreme enough to fire scenario (C). Skip-default per playbook.

## Andy decision points

Before 12:00 UTC, please confirm or amend:

1. **Approve scenario (C) extreme upside + hot AHE → SHORT BTC?** Y / N — and explicitly: are perpetual shorts authorised on the paper account?
2. **Approve scenario (C) extreme upside + cool AHE → LONG BTC?** Y / N
3. **Approve scenario (E) extreme downside + tape-up → LONG BTC?** Y / N
4. **Confirm scenarios (A), (B), (D) and (E) + tape-down are SKIPS** with no override? Y / N
5. **Notional £30 (30%) at 1x acceptable** per all approved scenarios, or smaller? (per strategy max is 30% / £30)
6. **T+12h time stop acceptable** (playbook default; no cluster overlap risk)?
7. **Coinbase AWS outage contingency: approve the 30-min delay to T+1h entry if outage lands in NFP window?** Y / N
8. **Egress status on Binance paper account** — is execution actually possible at 13:00 UTC? **If unknown, please verify before 12:00 UTC.** **If still blocked, NO TRADE is the only operational outcome** regardless of scenario.

If Andy does not respond before **12:00 UTC**, the routine's safe default is **NO TRADE** in any scenario — silence is not implicit approval, and the NFP playbook itself defaults to skip. A post-event learning will document the print and the missed (or correctly-skipped) outcome.

## Files touched this run

- `crypto/briefings/URGENT-2026-05-08-pre-event.md` (this file, new)
- `crypto/briefings/2026-05-08-event-scan.md` (companion daily scan, new)
- No `brain/` edits — the NFP playbook entry as-written is the authority; this URGENT file does not modify it. NFP-Less-Consistent-Than-CPI ambiguity flagged for Andy in daily scan only.
- No `learnings/` edits — post-event learning to be written by `crypto-event-review` (or this routine's post-mortem follow-up) after T+12h close at 00:30 UTC 09 May.

# URGENT — Pre-Event Brief: FOMC 2026-04-29 18:00 UTC

**Trigger:** Tier-1 event (FOMC rate decision) inside 24h window. T+~10h from 08:00 UTC scan.
**Strategy:** event-driven (Option C) — paper trade only.
**Approval:** **REQUIRES Andy's explicit go/no-go before any execution.** This file is a proposal, not an order.
**Companion:** `2026-04-29-event-scan.md` (daily scan, same run).

---

## Event

| | |
|---|---|
| **Event** | FOMC rate decision (April 2026) |
| **Statement release** | **2026-04-29 18:00 UTC** (14:00 ET) |
| **Press conference** | **2026-04-29 18:30 UTC** (Powell, ~14:30 ET) |
| **Current target rate** | 3.50–3.75% |
| **Consensus** | **Hold at 3.50–3.75%** — CME FedWatch **100%**, Polymarket **99.9%** |
| **Meeting type** | Non-SEP (no dot plot, no updated economic projections) |
| **Narrative** | **Powell's final FOMC** (succession likely Kevin Warsh) — forward guidance wording is the dominant variable |
| **Playbook** | `brain/event-playbooks.md` → "FOMC Rate Decision" (mapped) |

## Pre-event context (as of 08:00 UTC scan)

- **BTC tape:** $76,342 (28 Apr 9am ET) → $76,582 (28 Apr 9:56pm ET). Down 1.6% from Monday's $78,661 open. Three-day streak of $78k+ opens broken. Support being tested at **$77k and $76k**; defended zone $75,674–76,000. **Pre-event drift is bearish-leaning** — flipped from the "approaching $80k" read on 27 Apr.
- **ETF flows:** 9-day inflow streak **ended 27 Apr with $263M net outflow** (FBTC-led). April monthly net still **+$2.43B**. First session of net selling in over a week.
- **BoJ aftermath (28 Apr 03:00 UTC):** Hawkish-hold (held 0.75%, **6–3 vote with 3 dissents calling for 1.0% hike** — most contentious split since Ueda). Yen rose, BTC fell. Yen-funding-trade unwind risk a background driver.
- **Macro inflation backdrop:** March CPI **3.3% YoY** (highest since May 2024) on oil/energy re-acceleration from Iran war shock. Q4 2025 GDP just **+0.5%** annualised. Sets up a "stagflation-lite" framing in the statement.
- **Regulatory backdrop (non-trigger):** SEC Chair Atkins announced **"Project Crypto"** at Bitcoin 2026 Conference 28 Apr — token-taxonomy reform, most digital assets to be classified non-securities. Constructive but not a trade trigger today.
- **Cluster risk T+17–18h:** 30 Apr 11:00–12:30 UTC — **BOE rate decision + ECB rate decision + US Q1 GDP advance + US Core PCE** all stacked in 90 min. Default playbook 24h time stop overlaps the entire cluster — must be shortened.
- **Adjacency risk T+~4h before FOMC:** 29 Apr **~14:00 UTC Bank of Canada rate decision**. Cross-asset USD/CAD vol could distort BTC pre-event drift between 14:00 and 18:00 UTC.

## Playbook reference (verbatim from `brain/event-playbooks.md`)

| Surprise | Historical BTC reaction (T+0 to T+24h) | Approx base rate |
|---|---|---|
| Dovish surprise (cut > consensus, or hold when hike expected) | UP +2 to +5% | ~72% |
| Hawkish surprise (hike > consensus, or hold when cut expected) | DOWN −1 to −4% | ~64% |
| In-line (as expected) | Mixed, often chops, no clear bias | ~50% |

**Default trade template:** entry at T+30 min (after initial whipsaw), TP +3%, SL −2%, time stop T+24h.

## Surprise mapping for this specific meeting

The rate number itself is essentially priced (~99% hold). The "surprise" axis runs through **statement wording + Powell Q&A** rather than the headline rate. Three scenarios:

1. **In-line hold + neutral wording (~80–85% subjective):** statement repeats March language (data-dependent, balanced risks, no commitment to cuts), Powell defers to data. **Playbook: in-line, ~50% mixed/chops, no directional edge.** **Recommend SKIP.**
2. **Hold + dovish wording / parting-gift framing (~7–10%):** Powell's final meeting nudges toward optionality on cuts later in 2026, downplays sticky inflation, emphasises labour-market softening. Treat as **dovish surprise** per playbook → **LONG**.
3. **Hold + hawkish wording (~7–10%):** statement explicitly endorses higher-for-longer, cites CPI re-acceleration, closes 2026 cut path. Treat as **hawkish surprise** per playbook → **SHORT** (perpetuals).

The **call between scenarios 1/2/3 cannot be made before the statement and the first ~15 min of the press conference.** Pre-positioning at T−0 is off-strategy because the surprise direction is unknowable until release.

## Proposed trade — decision tree

### Phase 0 — Pre-event (now → 14:00 UTC)

- **No position taken.** No pre-positioning.
- Andy: confirm Binance paper egress is functional (the egress incident chain from 19–20 Apr is 10 days old; if still blocked, this trade cannot execute regardless of approval — proposal becomes moot).
- Andy: pre-acknowledge approval framework — specifically, whether you authorise scenarios 2 and 3 below, or only one of them, or neither.

### Phase 1 — BoC adjacency clearance (14:00 → 14:30 UTC)

- BoC rate decision at ~14:00 UTC.
- **Wait for BoC release + 30 min** to absorb cross-asset USD/CAD impulse before considering any BTC entry.
- If BoC delivers a **non-consensus surprise** that meaningfully moves USD index, **delay all FOMC trade entry decisions until 17:00 UTC at earliest** so the cross-asset noise doesn't contaminate FOMC entry timing.

### Phase 2 — FOMC release (18:00 UTC) + Powell (18:30 UTC)

- **No entry at T+0.** Default playbook says wait for whipsaw to clear at T+30 min. Honour that.
- Read the statement at T+0–15 min, then read tone of Powell's first ~15 min of Q&A.
- Classify into scenario 1, 2, or 3 by **18:30 UTC** at the latest.

### Phase 3 — Entry (18:30 UTC, ~T+30 min)

If **scenario 1 (in-line + neutral)** → **NO TRADE.** Per playbook, mixed/chops 50% base rate is below this strategy's threshold. Skip and write a non-trade learning post-event.

If **scenario 2 (dovish wording)** → **LONG BTC**:
- Direction: market buy
- Notional: **£30 (30% of £100 paper capital, 1x leverage)** per `strategy/event-driven.md`
- Entry price: market at T+30 min (~18:30 UTC)
- TP: **+3% from entry** (per FOMC playbook)
- SL: **−2% from entry** (per FOMC playbook)
- **Time stop: T+12h (close ~06:00 UTC 30 Apr)** ⚠️ — shortened from playbook default T+24h to clear the 30 Apr 11:00–12:30 UTC cluster (BOE + ECB + GDP + PCE) before it opens. Holding through that cluster on a single-event template is uncalibrated risk per the existing `cluster` meta-playbook gap.

If **scenario 3 (hawkish wording)** → **SHORT BTC** (via perpetuals if Andy authorises shorts on paper):
- Direction: market sell / open short
- Notional: **£30 (30% of £100 paper capital, 1x leverage)**
- Entry price: market at T+30 min (~18:30 UTC)
- TP: **−3% from entry** (close at +3% PnL)
- SL: **+2% from entry** (cover at −2% PnL)
- Time stop: **T+12h (close ~06:00 UTC 30 Apr)** — same cluster-dodge logic.
- Note: if shorts are not authorised on the paper account, this scenario is a **skip** as well — flag this back to Andy in the post-event learning.

### Phase 4 — Discretionary overrides

- Per `strategy/event-driven.md` exit rules, Andy may close any position manually at any time.
- If BTC trades through SL pre-emptively in the T+0 to T+30 min whipsaw window, that's by definition before entry — not relevant to active position management.
- If, after entry, BTC retraces violently into Powell tail-end Q&A (~19:00–19:30 UTC) on a tone-shift, **do not chase the time-stop** — let the SL handle it. Stops protect the asymmetric R/R; second-guessing them mid-event erodes the edge.

## Why the time stop is T+12h, not the playbook's T+24h

- Default playbook T+24h closes ~18:00 UTC 30 Apr.
- 30 Apr **11:00–12:30 UTC** holds 4 unmapped Tier-1 catalysts: BOE rate decision, ECB rate decision, US Q1 GDP advance estimate, US Core PCE.
- Holding the FOMC trade through that cluster means absorbing variance from 4 events whose **individual base rates aren't documented** in `brain/event-playbooks.md`, never mind their **joint distribution**.
- The strategy file is explicit: "**No conflicting event within 48h**" is one of the 5 entry qualifications. The 30 Apr cluster is an in-window conflict; we don't get to skip it, but we *can* shrink our exposure window so the FOMC trade exits before it opens.
- T+12h closes ~06:00 UTC 30 Apr, **5h before** the cluster opens. Comfortable buffer.

## Risk acknowledgements

1. **Sample-of-one regime change.** Powell's "final meeting" framing has no historical precedent in the playbook base rates. If markets read the statement as a Powell legacy / dovish-tilted parting gesture, the dovish-surprise UP magnitude could exceed the +2 to +5% playbook range. Conversely, if Powell frames stability and continuity for Warsh, the in-line scenario probability rises and skip-bias strengthens.
2. **Egress dependency.** The 19–20 Apr egress incident chain affected Binance + Supabase from this routine's environment. A scan-only routine can ride WebSearch, but a paper-trade execution cannot. **If egress is still blocked at 18:30 UTC, the trade cannot execute regardless of Andy's approval.** This file does not pretend otherwise.
3. **Pre-event drift flip.** As recently as 27 Apr, BTC was approaching $80k and the briefing flagged that as compressing dovish-surprise upside. Two days later the tape has retraced to mid-$76k. The asymmetry has flipped back toward classical playbook geometry, but the speed of that flip is itself a sign of jumpy positioning — execution slippage in the T+0 whipsaw could be larger than typical.
4. **Cluster gap remains unaddressed.** The `cluster` meta-playbook proposal has been carried forward 8 consecutive scans. Today's URGENT file works around the gap (T+12h time stop). If a `cluster` playbook is added to `brain/` later, this URGENT file's parameter choices should be revisited then, not retroactively.
5. **No leverage.** 1x only, per strategy file ("No leverage without 20+ trades of proven positive edge at 1x"). This is event #1 of any potentially traded event under Option C; we're at the very start of the proving period.

## Andy decision points

Before 14:00 UTC, please confirm or amend:

1. **Approve the scenario 2 (LONG, dovish wording) trade?** Y / N
2. **Approve the scenario 3 (SHORT, hawkish wording) trade?** Y / N — and explicitly: are perpetual shorts authorised on the paper account?
3. **Confirm scenario 1 (in-line + neutral) is a SKIP** with no override? Y / N
4. **Notional £30 (30%) at 1x acceptable** or smaller? (per strategy max is 30% / £30)
5. **T+12h time stop acceptable**, or prefer T+8h (cluster-dodge with even more margin) or T+24h (accept cluster overlap)?
6. **Egress status on Binance paper account** — is execution actually possible at 18:30 UTC? If unknown, please verify before 14:00 UTC.

If Andy does not respond before **14:00 UTC** (BoC release), the routine's safe default is **NO TRADE** in any scenario — silence is not implicit approval. A post-event learning will document the missed opportunity.

## Files touched this run

- `crypto/briefings/URGENT-2026-04-29-pre-event.md` (this file, new)
- `crypto/briefings/2026-04-29-event-scan.md` (companion daily scan, new)
- No `brain/` edits.
- No `learnings/` edits — post-event learning to be written by `crypto-event-review` (or this routine's post-mortem follow-up) after T+12h close on 30 Apr.

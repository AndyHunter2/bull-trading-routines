# Event Scan — 2026-08-11 (Tue)

**Window:** 2026-08-11 → 2026-08-18. **Source:** WebSearch only. **Prior:** `2026-08-10-event-scan.md`.

**Headline:** CPI Wed 2026-08-12 12:30 UTC is now **T+~28h** (crosses inside the T+24h URGENT trigger window at ~12:30 UTC today) — **URGENT-2026-08-12-pre-event.md written this cycle** per 08-10 pre-commit. **Consensus lock (this scan is the definitive-lock cycle):** Dow Jones consensus **3.4% headline YoY / 2.5% Core YoY**, MoM +0.1% headline / +0.32% Core — this is a *different* consensus vintage from 08-10's flagged 2.8% headline (MEXC/analyst read) and 08-09's 3.5–3.6% prediction-market spread. Treat today's Dow Jones read as authoritative (mainstream sell-side); the 2.8% figure was likely off-vintage / stale. BTC $63,979–$65,209 today (source spread; mid ~$64,600), cushion vs $61,069 kill-switch **mid ~5.8%** (compresses from 08-10's ~6.8% — Coldcard-inverse-flow bid softening at the margin). **BIP-110 fork tail-risk RESOLVED** — signaling closed with 2.53% miner support vs 55% required, minority chain 26 blocks behind main and effectively dead (per crypto.news / KuCoin 08-10, cryptonomist 08-09). Removes yesterday's sleeper-risk flag. Two lightweight new items: (i) Coldcard-hack-wallet moved 30.185 BTC to fresh address (on-chain tracking event, not a fresh forensic escalation); (ii) BTCPay Lightning restricted after an exploit (not a major exchange, monitor-only).

---

## Scheduled events next 7 days

### Tier-1 mapped, within 24h (URGENT triggered)
- **Wed 2026-08-12 12:30 UTC (T+~28h) — US CPI (July 2026).** Playbook `§US CPI Release`. Consensus firmed at **3.4% headline YoY / 2.5% Core YoY** (Dow Jones, Kiplinger, Markets Today X 08-10). MoM: +0.1% headline / +0.32% Core. Prior June: 3.5% headline / 2.6% Core. Prediction markets (Polymarket, CNBC 08-10) point at "tame inflation" — directional read consistent with 3.4% or slightly below. **URGENT-2026-08-12-pre-event.md written this cycle** with pre-trade setup + Andy-approval-gate. Trigger fires at exactly T+24h (≈12:30 UTC today) per strict reading; briefing runs at 08:00 UTC so URGENT written proactively per 08-10 pre-commit.

### Tier-1 mapped, in window (>24h out)
- **Thu 2026-08-13 12:30 UTC (T+~52h) — US PPI (July 2026).** BLS-confirmed 08:30 ET Thursday. Consensus still not firmed today (search returned historical July-15 report + upcoming-date confirmation only, no fresh forecast digest). Secondary confirmation channel for CPI direction. Not URGENT-window-triggering until 08-12 evening scan (post-CPI).

### Tier-2 / unmapped, in window
- **Tue 2026-08-11 today — no major scheduled US data.** Pre-CPI positioning day.
- **Fri 2026-08-15 (T+4d) — US Retail Sales + UoM Consumer Sentiment prelim.** Neither in playbook; monitor-only.
- **EU: Wed 08-12 Germany Current Account; Thu 08-13 ZEW; Thu 08-14 Q2 GDP + Industrial Prod; Fri 08-15 Balance of Trade.** All unmapped for BTC, monitor-only.

### Tier-1 mapped, tracked (outside window)
- **Tue–Wed 2026-09-15/16 (T+35/36d) — FOMC + SEP + dot plot.** Decision Wed 09-16 18:00 UTC (2 PM ET) per federalreserve.gov / FedRateCalc. Dual-catalyst carry with CLARITY-Act post-recess floor-vote window (Sept 14+).
- **BOE mid-September (TBD).**

---

## Crypto-specific last 24h

- **BTC price:** $63,979 (Robinhood/prediction-market snap early morning EDT 08-11), $65,046 (crypto.news mid-morning 08-11 wrap), $65,209 (cointelegraph 08-11 Iran-Oman-Hormuz-easing headline). Mid ~$64,600. **Cushion vs $61,069 kill-switch: mid ~5.8%** (compresses from 08-10's ~6.8%). Still comfortably above RED-alert. Modest pre-event drift-down (typical §FOMC/§CPI template: T-24h volatility often quiet, small bleed-off common).

- **BIP-110 fork tail-risk — RESOLVED (removes 08-10 flag).** Mandatory signaling period began 08-09 at block 961,632; only **51 of 2,016 blocks (2.53%) signaled** for BIP-110 vs 55% required (crypto.news 08-10, cryptonomist 08-09, KuCoin 08-10). Minority chain produced only 2 blocks then stalled at 961,633, now **26 blocks behind main chain and effectively dead.** Low miner participation makes lasting rival chain unlikely. **Removes yesterday's sleeper-risk flag.** No `proposal-add-protocol-fork-playbook.md` warranted (fork failed cleanly, no traded event). Log for later `crypto-event-review` as a "protocol-tail-flagged-then-resolved-without-market-impact" observation — useful reference for future controversial-fork situations.

- **Coldcard hack — wallet movement (NEW datum, not escalation).** Coldcard hack wallet moved **30.185 BTC to a new address** per crypto.news / cointelegraph 08-11 wrap. Analysts tracking possible movement of stolen funds. **Not a fresh forensic escalation** (Galaxy authoritative loss count remains ~$130M / no confirmed wave-5). Reads as attacker on-chain hygiene / laundering-prep, not new attack activity. Continues the 08-10 reframing (story is now "supply reallocation into ETFs" not "hack panic"). Monitor but no trade implication.

- **BTCPay Lightning exploit — NEW small item.** BTCPay Server restricted Lightning access after an exploit (cointelegraph 08-11 "what happened in crypto today"). **Not a major exchange.** Payment-processor / self-hosted-node ecosystem story, not a top-10 exchange event. Playbook §Major Exchange Hack/Outage does NOT trigger (not a top-10 exchange, no confirmed exchange-scale fund loss). Monitor for whether this expands into a broader Lightning-ecosystem trust event.

- **ETF flows update:** Sixth straight day of net inflows per yellow.com 08-11 wrap. **Weekly aggregate ~$1B / $853M** (best week since April holds). IBIT captured $690M of that (~80% share). Daily prints slowing from Thu $128.7M → Fri $98.9M (crypto-economy.com 08-08). **Sequence extends 07-30 $233M → 08-04 $170M → 08-06 $128M → 08-07 $101.7M → 08-08 ~$98.9M** — daily-print deceleration continues at 08-08 (n=4 confirmed). Coldcard-inverse-flow-to-ETF hypothesis holds but softening at the margin (consistent with today's BTC price compression). CME FedWatch odds of a September rate hike fell 55% → 40% on the week (crypto-economy.com 08-08) — CPI print is now the operative September-Fed-path input.

- **CLARITY-Act:** unchanged from 08-10. September floor-vote window (post-recess Sept 14+). Market already priced in.

- **No new confirmed major exchange hack (top-10 scale)**, no new major regulatory action, no fresh SEC decision beyond items previously flagged (Truth Social BTC ETF postponed to Oct 8; altcoin ETFs to late Oct).

- **Non-catalyst color:** Iran-Oman deal talk eased Hormuz concerns (cointelegraph 08-11) — geopolitical mild-risk-on backdrop pre-CPI, supports mild-BTC-bid interpretation but not tradeable independent of CPI.

---

## Recommended posture this week

- **CPI 08-12 T+~28h is THE operative event.** Consensus firm at 3.4% headline / 2.5% Core (Dow Jones authoritative). Prediction markets skew "tame" — this reads as **directional balance of probability tilts modestly toward in-line-or-below-consensus** (i.e., dovish tail is fatter than hawkish tail per today's read). Playbook §US CPI historical priors: sub-3.4% headline (dovish) = UP +1.5 to +4% at ~68% base rate; above-3.4% (hawkish) = DOWN −1 to −3% at ~60%; in-line = drift.

- **URGENT-2026-08-12-pre-event.md written this cycle.** Andy review + approval required for proposed trade setup. See that file for entry/TP/SL/size.

- **BIP-110 tail RESOLVED** — removes 08-10's sleeper flag. Reduces overall week's uncertainty budget; CPI can be traded without protocol-level cross-catalyst noise.

- **Cushion compressed to ~5.8%** from 08-10's ~6.8%. Still comfortable but worth noting: dovish-UP-outcome widens further; hawkish-DOWN at −2% from $64,600 mid = $63,308 = cushion still ~3.7% vs kill-switch. Trade-eligible with margin.

- **Coldcard wallet movement + BTCPay Lightning exploit** — both minor / monitor-only. Neither shifts the CPI setup.

- **Watch for:**
  - (i) Pre-CPI positioning drift 08-11 afternoon → 08-12 12:30 UTC (§CPI template: T-24h to T-30min often quiet-drift)
  - (ii) 08-11 ETF flow print (reports 08-12 pre-market) — Coldcard-inverse-flow deceleration continues or reverses
  - (iii) Any fresh Coldcard-attacker on-chain move beyond the 30.185 BTC transfer
  - (iv) PPI consensus firming into 08-12/08-13
  - (v) BTC price behavior into CPI print (compression toward $64K = normal; break below $63.5K pre-print = pre-CPI-hawkish-positioning signal worth noting)

- **Next briefing:** 2026-08-12 08:00 UTC (T+~4.5h to CPI print — final URGENT refresh window).

---

## Events not currently in playbook (Andy to review)

No new unmapped items today. 08-10's two flagged items resolve/carry:

1. **BIP-110 fork — RESOLVED.** No playbook addition needed (failed cleanly, no traded event). Log observation for `crypto-event-review` archive when that routine exists.

2. **Coldcard on-chain LTH exodus (210K BTC 1-week, largest since Dec 2024)** — carries from 08-10. Still a candidate observation for `§Major Exchange Hack / Outage` playbook refinement (hardware-wallet-hack sub-modality, on-chain-supply-reallocation channel). Not writing today per rule 6 (proposal-only route).

---

## Files touched

- `crypto/briefings/2026-08-11-event-scan.md` (this file, new).
- `crypto/briefings/URGENT-2026-08-12-pre-event.md` (URGENT pre-CPI, new — CPI Wed T+~28h crosses T+24h trigger at 12:30 UTC today).
- No `brain/`, `strategy/`, `routines/`, `learnings/`, `CLAUDE.md` edits (rule 6).

## Output summary

```
[EVENT SCAN] 1 Tier-1 within 24h URGENT-written (CPI Wed 08-12 12:30 UTC T+~28h consensus LOCKED Dow-Jones 3.4pct headline / 2.5pct Core YoY MoM +0.1pct headline / +0.32pct Core prior-June 3.5pct/2.6pct prediction-markets skew-tame today's 3.4pct SUPERSEDES 08-10's 2.8pct off-vintage and 08-09's 3.5-3.6pct prediction-market-spread), 1 Tier-1 in window (PPI Thu 08-13 12:30 UTC T+~52h BLS-confirmed consensus not firmed secondary-CPI-confirmation-channel), 3 Tier-2 unmapped (08-11 no data pre-CPI positioning; 08-15 Retail Sales + UoM Sentiment T+4d unmapped; EU cluster German-CA/ZEW/Q2GDP/BoT all unmapped), 5 crypto items (BTC $63,979-$65,209 mid ~$64,600 cushion mid ~5.8pct compresses from 08-10's 6.8pct still comfortable modest pre-event drift-down; BIP-110 fork RESOLVED signaling closed 2.53pct miner support vs 55pct required minority chain 26 blocks behind main effectively dead removes 08-10 sleeper-flag no playbook addition needed; Coldcard wallet moved 30.185 BTC to fresh address on-chain tracking not fresh forensic escalation attacker-laundering-prep-not-new-attack Galaxy $130M unchanged; BTCPay Lightning exploit restricted Lightning access NOT major exchange payment-processor-scale playbook does not trigger monitor for Lightning-ecosystem-trust expansion; ETF flows 6-straight-days-inflows weekly ~$1B/$853M IBIT $690M/80pct share daily deceleration continues 08-08 ~$98.9M sequence n=4 confirmed CME FedWatch Sept-hike-odds 55→40pct CPI is operative September-Fed-path input), URGENT-2026-08-12-pre-event.md written andy-approval-gated, no trade action from this scan, urgent=YES
```

# Event Scan — 2026-05-01

**Scan window:** 2026-05-01 → 2026-05-08 (macro next 7 days) + crypto news last 24h.
**Source:** WebSearch only (per routine instruction; Binance/Supabase egress remains presumed blocked per 2026-04-19 incident chain, untested this run — out of scope for a scan-only routine).
**Continuity:** Yesterday's run wrote `2026-04-29-event-scan.md` + `URGENT-2026-04-29-pre-event.md`. No briefing was written for 2026-04-30 (the FOMC + cluster day itself). **This scan picks up at FOMC T+~14h and 30 Apr cluster T+~12h** — both events have closed; the post-event picture is captured below as context.
**URGENT file this run:** **NO.** No Tier-1 mapped event (FOMC / CPI / NFP / confirmed ETF decision) inside the 24h window. Next Tier-1 mapped is **NFP 2026-05-08 12:30 UTC** at T+~7 days — well outside the URGENT threshold.

## Scheduled events next 7 days

### Tier-1 (high impact, playbook mapped)

- **2026-05-08 12:30 UTC — US NFP (April 2026 data)** (T+~7 days). **First NFP fully covering the post-tariff April employment month.** No firm Bloomberg/Reuters consensus number yet in the WebSearch coverage at this hour — March print was **+178k vs +60k forecast** (large beat); April consensus will firm over the coming days. **Playbook: US NFP** (mapped) — playbook says **skip unless extreme surprise (>2σ)**, TP +2% / SL −1.5% / T+12h time stop when traded. Will surface again in 02–05 May scans with sharper consensus and pre-event drift framing; currently outside any URGENT trigger window.

### Tier-1 cluster in window (mostly unmapped)

- **2026-05-01 14:00 UTC — US ISM Manufacturing PMI (April)** (TODAY, T+~6h from 08:00 UTC scan). ISM consensus **53.2** per yesterday's briefing carry-over. **NOT in `event-playbooks.md`** — unmapped. Same-day signal-density risk vs Labor Day thin liquidity (see Tier-2). **Inside 24h, but NOT a Tier-1 mapped event** — does not trigger an URGENT file. Single-event PMI surprises rarely move BTC >0.5%; carry as awareness only.
- **2026-05-05 14:00 UTC — US ISM Services PMI (April)** (T+~4 days). **NOT in `event-playbooks.md`** — unmapped. Services component is the larger share of US output and historically a bigger market mover than Manufacturing PMI, but still well below NFP/CPI/FOMC for direct BTC impact.

### Tier-1 closed yesterday (FOMC outcome — context for NFP setup)

- **2026-04-29 18:00 UTC — FOMC rate decision — DONE.** Held at **3.50–3.75%** (in-line, as priced ~99%). **8–4 vote — most dissents at any FOMC since 1992.** Miran wanted **−25bp cut**; Hammack, Kashkari, Logan dissented against inclusion of an **easing bias** in the statement. Powell confirmed in his press conference: **his term as chair ends May 15** (succession to Warsh) and he will remain on the Fed Board after stepping down as chair. **BTC reaction: classical "sell the news" — fell from ~$77,000 to $74,914 within hours of the press conference**, dropping below the 20-day MA. This is BTC's drop after **9 of the last 10 FOMC meetings going back to July 2025**. Outcome retroactively maps to **`URGENT-2026-04-29-pre-event.md` scenario 1 (in-line + neutral wording / mixed-hawkish dissent split)**: the URGENT file's recommended action under that scenario was **SKIP** — which appears to have been the correct read. A formal post-mortem belongs in a `learnings/` write by the `crypto-event-review` routine (not this scanner).

### Tier-1 cluster closed yesterday (30 Apr — context)

- **2026-04-30 ~11:00 UTC — BOE rate decision — DONE.** Held bank rate at **3.75%** (in-line, expected 8–1 split, Pill the only hawkish dissenter expected). Still **unmapped** in `brain/event-playbooks.md`.
- **2026-04-30 ~11:15 UTC — ECB rate decision — DONE.** Held deposit facility at **2.0%** (note: the 29 Apr scan had consensus at 2.15% deposit facility — actual print was 2.0%; either consensus shifted intraday or the 29 Apr scan referenced a stale number; flagged as a **data-quality note for Andy**). **Eurozone April HICP flash spiked to +3.0%** on Iran-war energy passthrough. Lagarde framed outlook as "highly uncertain, depends on length of Middle East war." Some economist coverage now flagging **June ECB meeting** as the watch point for a possible +25bp move to 2.25%. Still **unmapped**.
- **2026-04-30 12:30 UTC — US Q1 GDP advance — DONE.** Came in **+2.0% QoQ vs +2.3% expected** (vs the 29 Apr scan's +2.2% consensus). **Mild downside miss.** Still **unmapped**.
- **2026-04-30 12:30 UTC — US March Core PCE — DONE.** Came in **+3.5% YoY vs +3.5% expected** (in-line on the YoY headline; MoM print not surfaced in this scan's coverage). Still **unmapped**.

> **Cluster day completed without a single-event template trade.** The `URGENT-2026-04-29-pre-event.md` T+12h time-stop logic — close FOMC trade by 06:00 UTC 30 Apr, before the 11:00–12:30 UTC stack opens — would have been the right shape if scenario 2 or 3 had triggered. Scenario 1 (skip) was the actual call so the cluster-dodge logic was not load-bearing this cycle. **The `cluster` meta-playbook gap remains** (now 9 consecutive scans).

### Tier-2 (monitor, in window)

- **2026-05-01 (TODAY) — Labor Day (EU / Japan / China closed).** Thinner liquidity into the weekend. Not a catalyst but **execution-quality concern** — slippage on any urgent trade today and into the 03–04 May weekend will be larger than baseline. ISM at 14:00 UTC lands inside the thin tape.
- **2026-05-01 13:45 UTC — S&P Global Final Mfg PMI (April).** Unmapped, low impact.
- **2026-05-02 (Sat) — weekly fund flow tallies publish through the weekend.** Watch for whether FBTC/IBIT outflows of 28–29 Apr extended into the 30 Apr session.
- **2026-05-06 — China Caixin Services PMI** (Asia session). Low BTC impact in normal times; relevant only if extreme miss given thin US session crossover.
- **2026-05-07 — UK / Asia trading data, EU producer prices** — unmapped, low impact.

### Not in window (next-cycle surfacing)

- **US CPI (April data)** — provisional **2026-05-12 12:30 UTC** — outside the 7-day window today; will surface in 2026-05-05 scan.
- **Next FOMC** — **2026-06-16/17** (with SEP / dot plot). Powell's term as chair ends 2026-05-15 — **June FOMC will be Warsh's first meeting as chair if confirmed.** Out of window for 6 weeks but a structural overhang on every BTC trade between now and then.

## Crypto-specific last 24h

- **BTC tape: post-FOMC sell-the-news played out cleanly.** Apr 28 close **$76,582** → FOMC release Apr 29 18:00 UTC → low **$74,914** within hours of Powell press conference (T+~3h) → **partial recovery to $76,500–77,000 range** by 01 May 02:47 EDT (~$76,988 spot). Trading **above $76,200 (23.6% Fib retracement support)**; consolidation range now **$76,240–$79,000**, breakdown risk to **$73,500**. **Kalshi: 64% probability BTC holds >$76,000 by 5pm EDT today.** Sell-the-news pattern is the **dominant FOMC reaction signal** at this point (9 of 10 meetings since Jul 2025) — candidate for an explicit **post-FOMC short** template addition or amendment to the existing FOMC playbook (Andy review). **Not a routine-side rule change; flagging only.**
- **ETF flows: outflows continuing.** Apr 29 = **−$137.77M net outflow** (FBTC-led; revision: 28 Apr scan reported $263M outflow which referenced the 27 Apr session — both sessions are now in the books and consistent with a regime shift from inflow streak to net selling). Full week **−$490.62M**. **April monthly net still +$2.4B inflow** — **best month of 2026 so far** despite the late-month reversal. BlackRock's **IBIT** holds ~809–812k BTC (~$62B AUM); Morgan Stanley Bitcoin Trust now active. **Watch May 02 weekend tallies for whether the streak-end is a one-week wobble or the start of a new outflow regime.**
- **April closed as worst single month for crypto hacks in industry history.** Defillama-confirmed **30 incidents, ~$629M total losses** (CertiK puts the figure at $650M). The two anchor events were **Drift Protocol $285M (Apr 1, Solana, social-engineering, Lazarus-linked)** and **KelpDAO $293M (Apr 18, LayerZero bridge message-spoof)**. Industry analysts flagging **bridge attacks + social engineering** as the dominant vectors. **>$14B TVL exited DeFi protocols in the days following KelpDAO.** **No new top-10 centralised exchange hacks, outages, or confirmed losses in the last 24h** — `Major Exchange Hack / Outage` playbook trigger remains inactive (requires 2+ reputable sources on a top-10 CEX). Background tape only.
- **No new BTC ETF approvals, rejections, or extensions** in the 24h window. SEC's NYSE Arca 85% asset-eligibility rule change comment period continues (opened 27 Apr) — structural, not triggerable. Goldman Sachs Bitcoin Premium Income ETF S-1 still in 75-day SEC review (decision earliest mid-June). **No `BTC Spot ETF News` playbook trigger today.**
- **No new major regulatory enforcement actions** in 24h. Project Crypto / SEC token-taxonomy reform (Atkins, 28 Apr Bitcoin 2026 Conference) remains the constructive backdrop — **still not triggerable** under `Major Regulatory Action` "pro-crypto regulatory clarity" template (no specific binding action).
- **Geopolitics:** Iran war / oil shock framing was explicitly cited by ECB (Lagarde) and BoJ (28 Apr forecast bumps) and is the dominant inflation driver across all 30 Apr macro coverage. **No fresh escalation in the 24h scan window**, but it is the structural overhang under every monetary-policy decision currently in flight.

## Recommended posture this week

- **NO URGENT TRADE TRIGGER ACTIVE.** Next mapped Tier-1 is **NFP 2026-05-08 12:30 UTC** at T+~7 days — outside the URGENT 24h threshold. Per `event-playbooks.md`, NFP is **skip unless extreme surprise (>2σ)**, so a trade is unlikely even at release.
- **Post-FOMC quiet week.** Macro calendar is dominated by ISM (Mfg today, Services 05 May) and second-tier data — none mapped, none individually liable to move BTC >1% on consensus prints. **Default posture: no event positioning; observe whether the 28–29 Apr ETF-outflow → post-FOMC sell-the-news regime extends or reverses.**
- **The 9-of-10 post-FOMC sell-the-news pattern is the most actionable observation this week** but it's **already played out** for the April meeting — too late to act on this cycle. Consider as input for a `proposal-fomc-post-event-short.md` learning if Andy wants the routine to draft one. **This run is not writing that proposal** — sample is large but the strategy file is explicit that scanner doesn't widen entry rules unilaterally.
- **Monitor ETF outflow continuation through the 02–04 May weekend.** A second consecutive week of net outflows would be a meaningful regime change vs the +$2.4B April aggregate. **No trade trigger from this signal alone** — context for the NFP setup at the end of the 7-day window.
- **Cluster gap (Andy action, 9th consecutive scan).** The 30 Apr cluster closed without a load-bearing trade, but the gap in `brain/` remains. With NFP standing alone in the next 7 days (no co-located catalysts in the 12h around 12:30 UTC 08 May per current calendars), the gap is **not on the critical path this week** — but it will be back when the next stacked-event week surfaces.
- **Egress incident chain.** Now 12 days since `learnings/2026-04-19-incident-egress-blocked*-hour[2-4]`. Out of scope for this routine; WebSearch is sufficient for scan-only. Flagging only because it remains the limiting factor on whether any approved trade can actually execute.
- **Next briefing:** 2026-05-02 08:00 UTC. Expected change: weekend ETF flow tallies, any 30 Apr post-mortem coverage, NFP consensus firming for 08 May.

## Events NOT currently in playbook (for Andy to review)

Carried forward, with two new candidate observations from this run:

- **Post-FOMC "sell-the-news" pattern (NEW candidate)** — BTC has dropped after **9 of the last 10 FOMC meetings since Jul 2025**, including the 29 Apr meeting under in-line/neutral conditions. Sample size is now large enough to merit consideration as either (a) an amendment to the existing FOMC playbook's "in-line" row (currently 50% mixed/chops; observed reaction is closer to 90% modest-DOWN), or (b) a new sub-template for an automatic post-FOMC short at T+30 min when no dovish surprise is observed. **Routine flagging only — strategy file changes are human-owned. Andy review required.**
- **30 Apr cluster aftermath: ECB downside surprise on rates (NEW data point)** — actual ECB deposit facility came in at **2.0%** vs the 29 Apr scan's documented consensus of **2.15%**. If consensus did genuinely shift between the 29 Apr scan being written and the 30 Apr release, it's a **scan-quality issue** (consensus snapshot stale by ~24h). If the 29 Apr scan misreported consensus at write time, it's a **citation issue**. Either way, future scans should pin consensus numbers to a **specific source + timestamp** to make this auditable. Andy review.
- **BoJ rate decisions** — 28 Apr hawkish-hold (carried from yesterday's scan); next instance **mid-June 2026**. Still unmapped.
- **BoC rate decisions** — 29 Apr hold-as-expected (no surprise; URGENT file's adjacency-clear gate was not load-bearing). Still unmapped.
- **ECB rate decisions** — 30 Apr hold (with downside surprise on the deposit facility number per above). Still unmapped.
- **BOE rate decisions** — 30 Apr hold (in-line). Still unmapped.
- **Cross-CB cluster days** — 30 Apr cluster closed cleanly under a skip outcome, but the meta-playbook gap remains. Highest-priority `brain/` gap.
- **US Q1 GDP advance estimate** — 30 Apr +2.0% (mild downside miss vs +2.3% consensus). Still unmapped.
- **US PCE / Personal Income & Outlays** — 30 Apr +3.5% YoY core (in-line). Still unmapped.
- **ISM Manufacturing PMI** — TODAY 14:00 UTC; ISM Services 05 May. Both unmapped; historically modest BTC reaction unless extreme surprise (>2σ) — same threshold logic as NFP playbook would probably apply if added.
- **Major non-BTC DeFi exploits ≥$100M** — `learnings/2026-04-19-proposal-non-btc-hack-contagion.md`, **12 days open**. April aggregate now confirmed at $629M / 30 incidents — strongest empirical case yet for a contagion clause in the regime classifier. No `brain/` action yet.

## Output summary

```
[EVENT SCAN] 4 scheduled in window (1 Tier-1 mapped NFP T+7d, 2 Tier-1 unmapped ISM Mfg today + ISM Services 05 May, Labor Day Tier-2 today), 4 crypto news (BTC sell-the-news played to $74,914 then recovered to $76.5–77k, ETF outflows continuing into week 2 watch, April crypto-hack-record month closed at $629M, no new CEX hacks / no new ETF decisions / no triggerable regulation), urgent=NO (no Tier-1 mapped event inside 24h)
```

## Files touched this run

- `crypto/briefings/2026-05-01-event-scan.md` (this file, new)
- No URGENT file (no Tier-1 mapped event inside 24h)
- No `brain/` edits (scanner is read-only on playbooks; observations carried in this briefing for Andy review only)
- No `learnings/` edits (sell-the-news proposal candidate flagged for Andy review only — not written unilaterally)

## Sources

- [Federal Reserve — FOMC statement 29 April 2026](https://www.federalreserve.gov/newsevents/pressreleases/monetary20260429a.htm)
- [Federal Reserve — Powell Press Conference Transcript 29 April 2026 (PDF)](https://www.federalreserve.gov/mediacenter/files/FOMCpresconf20260429.pdf)
- [The Fed — FOMC meeting calendar](https://www.federalreserve.gov/monetarypolicy/fomccalendars.htm)
- [CNBC — Fed interest rate decision April 2026, holds rates steady amid dissent](https://www.cnbc.com/2026/04/29/fed-interest-rate-decision-april-2026.html)
- [CNBC — Fed meeting recap: Powell to stay on board, Trump's legal attacks](https://www.cnbc.com/2026/04/29/fed-meeting-today-live-updates-warsh-powell.html)
- [CNN — Powell confirms he will step aside at the end of his term as chair](https://www.cnn.com/2026/04/29/business/live-news/federal-reserve-interest-rate)
- [Yahoo Finance — Fed live updates / Powell final meeting](https://finance.yahoo.com/economy/policy/live/fed-meeting-live-updates-federal-reserve-holds-interest-rates-steady-in-powells-final-meeting-as-chair-111906007.html)
- [Fox Business — Fed holds rates steady as Powell's chairmanship winds down](https://www.foxbusiness.com/economy/federal-reserve-interest-rate-decision-april-29-2026)
- [investingLive — BOE leaves bank rate unchanged at 3.75% in April meeting](https://investinglive.com/centralbank/boe-leaves-bank-rate-unchanged-at-375-in-april-meeting-as-expected-20260430/)
- [CNBC — European Central Bank keeps rates on hold in face of inflation threat (Apr 30 2026)](https://www.cnbc.com/2026/04/30/european-central-bank-april-2026-rate-decision-inflation-stagflation-risk-iran-war.html)
- [FXStreet — US GDP set to accelerate in Q1 (preview/post)](https://www.fxstreet.com/news/us-gdp-set-to-accelerate-in-q1-suggesting-economic-resilience-despite-iran-war-woes-202604300800)
- [Phemex — Bitcoin Drops After FOMC for 9th Time, Sell-the-News Pattern 2026](https://phemex.com/blogs/bitcoin-drop-fomc-sell-the-news-pattern)
- [CoinGabbar — Bitcoin Falls to $74,900 After Fed Speech](https://www.coingabbar.com/en/price-prediction/bitcoin-fomc-sell-the-news-crash-btc-price-2026)
- [CryptoSlate — Why Bitcoin is stuck below $80,000 and what Powell's FOMC did](https://cryptoslate.com/heres-why-bitcoin-is-stuck-below-80000-and-what-powells-fomc-meeting-did-for-btc-price/)
- [LatestLY — Bitcoin price today May 1 2026, BTC steady at USD 76,550](https://www.latestly.com/business/bitcoin-price-today-may-1-2026-btc-price-steady-at-usd-76550-following-slight-recovery-7414111.html)
- [Finbold — Crypto markets predict Bitcoin price for May 1 2026](https://finbold.com/crypto-markets-predict-bitcoin-price-for-may-1-2026/)
- [FX Leaders — Bitcoin ETFs see $2.4B in April inflows, 2026's strongest month](https://www.fxleaders.com/news/2026/04/30/bitcoin-etfs-see-2-4b-in-april-inflows-marking-2026s-strongest-month/)
- [Tokenist — Bitcoin ETF News April 2026 inflows institutional demand](https://tokenist.com/bitcoin-etf-news-april-2026-inflows-institutional-demand/)
- [CryptoNews — Morgan Stanley's Bitcoin ETF gains traction as IBIT loses $167M](https://cryptonews.net/news/bitcoin/32790533/)
- [Crypto Times — $629M Lost: April 2026 Marks Worst Month for Crypto Hacks](https://www.cryptotimes.io/2026/04/30/629m-lost-april-2026-marks-worst-month-for-crypto-hacks/)
- [The Block — Crypto hacks hit record high in April as exploits kept piling up](https://www.theblock.co/post/399666/crypto-hacks-hit-record-high-in-april-as-exploits-kept-piling-up)
- [Bitcoin.com News — Defillama confirms April 2026 as crypto's most-hacked month](https://news.bitcoin.com/defillama-confirms-april-2026-as-cryptos-most-hacked-month-with-30-incidents/)
- [Coinpedia — Crypto Hacks Hit $650M in April, Biggest Losses Since 2022 (CertiK)](https://coinpedia.org/news/crypto-hacks-hit-650m-in-april-biggest-losses-since-2022-certik/)
- [BLS — Schedule of Selected Releases 2026](https://www.bls.gov/schedule/2026/home.htm)
- [ISM World — Release Dates for ISM Manufacturing and Non-Manufacturing Reports](https://www.ismworld.org/supply-management-news-and-reports/reports/rob-report-calendar/)

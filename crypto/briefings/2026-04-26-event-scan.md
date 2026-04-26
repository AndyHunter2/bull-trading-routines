# Event Scan — 2026-04-26

**Scan window:** 2026-04-26 → 2026-05-03 (macro next 7 days) + crypto news last 24h.
**Source:** WebSearch only (per routine instruction; Binance/Supabase egress remains presumed blocked per 2026-04-19 incident chain, untested this run). All WebSearch queries returned normally.
**Note on cadence:** Last briefing in folder is 2026-04-24; 22/23/25 are missing. This scan does not retro-fill them — it only covers today's window.

## Scheduled events next 7 days

### Tier-1 (high impact, playbook mapped)

- **2026-04-29 18:00 UTC — FOMC rate decision** (T+3d 10h). Statement 18:00 UTC, Powell press conference 18:30 UTC. Current target **3.50–3.75%**. Polymarket implied **99.7% probability of hold**; CME FedWatch and J.P. Morgan Research concur. Non-SEP meeting (no dot plot, no updated SEP) — forward guidance lives entirely in statement wording + Powell Q&A. March CPI 3.3% YoY (Iran-conflict energy-driven re-acceleration) keeps the cut path closed. **Playbook: FOMC Rate Decision** (mapped). T-1 URGENT file fires on the 2026-04-28 scan.

### Tier-1 cluster in window (mostly unmapped)

- **2026-04-28 — Bank of Japan policy decision** (T+2d, time TBC, typically 03:00–04:00 UTC). **NEW surfacing in today's scan vs 2026-04-24** — was not flagged in prior briefings. Historically BoJ moves JPY first, BTC reaction is small/indirect via DXY. **NOT in `event-playbooks.md`** — unmapped.
- **2026-04-29 ~14:00 UTC — Bank of Canada rate decision** (T+3d 6h, ~4h before FOMC same day). **NEW surfacing in today's scan.** BoC normally low-impact for BTC, but landing inside FOMC pre-event drift window could amplify USD/CAD-driven cross-asset noise. **NOT in `event-playbooks.md`** — unmapped.
- **2026-04-30 ~12:00 UTC — BOE MPC rate decision** (T+4d 4h). Bank Rate currently 3.75%. **NOT in `event-playbooks.md`** — unmapped (5th consecutive scan).
- **2026-04-30 ~12:15 UTC — ECB monetary policy decision** (29–30 Apr meeting, Frankfurt, T+4d 4h). Deposit facility 2.00%. Reuters poll: just over half of economists expect hold; trader consensus prices **73.5% hold**. June meeting is where the next move (possible hike on war-driven inflation) is expected. **NOT in `event-playbooks.md`** — unmapped.
- **2026-04-30 12:30 UTC — US Q1 2026 GDP advance estimate** (BEA, T+4d 4h). **NOT in `event-playbooks.md`** — unmapped.
- **2026-04-30 12:30 UTC — US PCE + Personal Income & Outlays (March 2026)** (BEA, T+4d 4h). PCE is the Fed's preferred inflation gauge; reaction profile close to CPI but usually smaller magnitude. **NOT in `event-playbooks.md`** — unmapped.

> **30 April still carries FIVE catalysts (BOE, ECB, US GDP, US PCE, FOMC T+24h follow-through) inside a ~30-min window at 12:00–12:30 UTC.** Unchanged from 2026-04-24 framing. **New addition this scan: 28 Apr BoJ + 29 Apr BoC** make this a SEVEN-event week of central-bank/macro decisions, with three different central banks firing on FOMC day itself (BoJ T−1, BoC T−~4h, FOMC T+0).
>
> The 28 Apr URGENT file should still propose a **FOMC time-stop shortened to T+12h** to exit before the 30 Apr cluster opens, AND should explicitly flag that the BoC decision lands ~4 hours before FOMC, so any pre-event positioning at T−4h carries unusual cross-asset risk.

### Tier-2 (monitor, in window)

- **2026-04-28 ~14:00 UTC — Conference Board Consumer Confidence (Apr)** — unmapped. Individually low BTC impact; sits on FOMC T−1 and can shade positioning.
- **2026-04-28 — Eurozone bank lending survey** — unmapped, low BTC relevance.
- **2026-04-29 — Australia & Germany CPI (Mar/Apr)** — unmapped, low direct BTC impact; could shape ECB tone.
- **2026-05-01 — Labor Day, EU/Japan/China markets closed** — thinner crypto liquidity into the weekend; not a catalyst itself but worth noting for risk management around the 30 Apr cluster (positions held overnight 30 Apr → 1 May face a thinner spot venue book).
- **2026-05-01 13:45 UTC — S&P Global Final Mfg PMI** and **14:00 UTC — ISM Manufacturing PMI (Apr)** — unmapped, low individual BTC impact.

### Not in window (next-cycle surfacing)

- **US NFP (Apr data)** — 2026-05-08 12:30 UTC.
- **US CPI (Apr data)** — 2026-05-12 12:30 UTC (provisional).

## Crypto-specific last 24h

- **BTC price context (WebSearch only, no Binance egress):** BTC trading **$77,300–$77,500** (CoinDesk, 24/7 Wall St), range-bound between $77,500–$78,500 after a failed breakout near $80,000 mid-week. Eight straight days of spot ETF net inflows ($2.1B cumulative, BlackRock IBIT ~75% of flow); IBIT now holds 809,870 BTC. Friday 25 Apr inflow was a comparatively muted **$14.45M** (IBIT +$22.88M, FBTC −$1.69M) — first sign the institutional bid is cooling into FOMC week. BTC futures open interest **−6% in 24h** as leverage unwinds; funding rates negative in perps; rising demand for downside protection in options. Apr month-to-date **+13.71%** — within ~50bps of the strongest April since 2021. **Context only — not a trade trigger.**
- **No new top-10 exchange hacks, outages, or regulatory enforcement actions flagged in the last 24h.** Coverage searched for 25–26 Apr returned nothing meeting the `Major Exchange Hack / Outage` playbook threshold (top-10 exchange, confirmed loss, 2+ reputable sources).
- **Sub-threshold incidents reiterated, no escalation.** Carried from 2026-04-24 with no updates: Coinbase Arbitrum delays (resolved), Kraken QUAI gateway + Banking Circle EUR/GBP maintenance window (resolved). No fresh entries.
- **Flow blockchain $3.9M rollback proposal (NEW vs 2026-04-24, narrative-only).** Flow is proposing a controversial chain rollback to reverse a $3.9M exploit. Affects Flow ecosystem only; **not BTC-relevant**. Flagged because chain-rollback governance precedent is unusual and could feed broader "code is not law" debate, but no playbook trigger.
- **Grinex (Russia-linked exchange) drained ~$13.74M USDT on 15 Apr** — Chainalysis flags possible "false flag" exit scam. Stale (T+~11 days), well below top-10 threshold, **no playbook trigger**.
- **CoW Swap $1.2M domain-hijack on 14 Apr** — stale, sub-threshold, **no trigger**.
- **April 2026 aggregate hack losses $606M+ across ~13 protocols** — unchanged, dominated by Drift (T+~25 days) + KelpDAO (T+~8 days), both DPRK/Lazarus-attributed. Past all playbook time-stops; residual BTC weakness (if any) is regime, not event.
- **No new ETF approvals/rejections.** Goldman Sachs Bitcoin Premium Income ETF S-1 (filed 2026-04-14) still in 75-day SEC review (earliest decision mid-June). Morgan Stanley Bitcoin Trust (MSBT) trading. **No playbook trigger.**
- **SEC posture remains broadly pro-crypto, no fresh enforcement.** No new SEC enforcement announcement in last 24h. The pending "Regulation Crypto Assets" framework is reportedly under White House review but not yet published — would be a Tier-1 if/when it lands. **No playbook trigger today.**
- **Geopolitics:** Trump confirmed Israel/Lebanon ceasefire extended 3 weeks (risk-on tape support). No fresh Iran development this scan window. **Not an event-driven trigger; posture context only.**

## Recommended posture this week

- **No immediate trade action from this briefing.** FOMC at T+3d 10h is now well inside the 7-day window but still 2.5 days outside the URGENT trigger. **No `URGENT-…-pre-event.md` written today.** Tomorrow's 2026-04-27 scan will have FOMC at T+2d 10h (still no URGENT). The **2026-04-28 scan is the URGENT trigger** at FOMC T−1.
- **Cluster preparation is now critical (Andy action, 6th consecutive scan).** With BoJ (28 Apr) and BoC (29 Apr) added to the prior 5-event 30 Apr cluster, this week now contains **seven central-bank or top-tier macro decisions in 5 days**, three of them on FOMC day itself. Priority order unchanged: (a) draft a `cluster` meta-playbook before 28 Apr; (b) at minimum add a PCE playbook entry; (c) failing both, the 28 Apr URGENT file will propose a **FOMC time-stop shortened to T+12h** to exit before the 30 Apr 12:00–12:30 UTC cluster opens, and will additionally flag the BoC T−4h-to-FOMC adjacency as a reason to delay entry until after the BoC release.
- **BTC tape is cooling into FOMC.** Friday's $14M ETF inflow (vs $1.4B BlackRock contribution earlier in the streak), open interest −6%, negative perps funding, and a failed $80k breakout all point to leverage unwinding pre-event. This is **classic pre-FOMC quiet drift** consistent with the playbook's T−30 min pattern, just stretched out over multiple days. If the dovish/hawkish surprise materialises, the playbook's T+30 min entry is the right template; if the statement reads in-line, the historical base rate (~50% chop) plus the 30 Apr cluster ahead argues for skipping rather than fading.
- **Egress incident chain.** `learnings/2026-04-19-incident-egress-blocked*-hour[2-4]` — 7 days old. Out of scope for this routine. If the VPS scalper remains paused via Supabase dashboard, that pause is unaffected by anything this scanner does. Heading into a 7-event macro week, **paused remains the safer default regardless** of the egress incident's resolution status.
- **Next briefing:** 2026-04-27 08:00 UTC. Expected change: FOMC moves T+3 → T+2; cluster fully in window unchanged; Conference Board CC enters T-1.

## Events NOT currently in playbook (for Andy to review)

Carried forward from prior scans plus two new entries this run:

- **BoJ rate decisions (NEW in today's scan).** 28 Apr is the next instance. BoJ moves JPY/USD first; BTC reaction historically muted but non-zero on policy-shift surprises (2024 carry-trade unwind precedent). Worth a low-priority playbook entry with a "skip unless YCC/policy regime shift" rule.
- **BoC rate decisions (NEW in today's scan).** 29 Apr is the next instance. Lowest individual BTC impact of the listed CBs; the worry here is the **adjacency to FOMC same day** rather than BoC itself. A `cluster` meta-playbook would absorb this.
- **ECB rate decisions.** 30 Apr next instance (T+4d 4h). Historically milder BTC reaction than FOMC, directionally similar.
- **BOE rate decisions.** Same-day as ECB on 30 Apr. Lower BTC impact historically; may be skip-only but worth explicit documentation.
- **Cross-CB cluster days.** 28–30 Apr now confirmed at **SEVEN catalysts** (BoJ + BoC + FOMC + BOE + ECB + GDP + PCE). Single-event templates almost certainly misstate variance with this much stacking. A `cluster` meta-playbook with wider SL, smaller size, and shorter time-stop is the highest-priority gap heading into 28 Apr.
- **US Q1 GDP advance estimate.** 30 Apr next instance; still unmapped.
- **US PCE / Personal Income & Outlays.** 30 Apr next instance. PCE is the Fed's preferred inflation gauge; reaction profile close to CPI, magnitudes usually slightly smaller.
- **Major non-BTC DeFi exploits ≥$100M** — `learnings/2026-04-19-proposal-non-btc-hack-contagion.md`, 7 days open. April $606M aggregate (Drift + KelpDAO + others) remains the live exemplar; no `brain/` action yet.

## Output summary

```
[EVENT SCAN] 11 scheduled (1 Tier-1 in-window FOMC mapped, 6 Tier-1 unmapped cluster across 28-30 Apr [BoJ, BoC, BOE, ECB, GDP, PCE], 4 Tier-2), 4 crypto news (BTC tape, ETF streak cooling, Flow rollback, no new hacks), urgent=no
```

## Files touched this run

- `crypto/briefings/2026-04-26-event-scan.md` (this file, new)
- No `brain/` edits (scanner is read-only on playbooks).
- No `learnings/` edits (BoJ + BoC surfacing this run; both fold into the existing cluster-playbook proposal rather than warranting standalone learnings, raised visibly in this briefing instead).
- No URGENT file (FOMC T+3d 10h, outside the 24h trigger).

## Sources

- [The Fed — FOMC Meeting Calendars](https://www.federalreserve.gov/monetarypolicy/fomccalendars.htm)
- [The Fed — March 2026 SEP](https://www.federalreserve.gov/monetarypolicy/files/fomcprojtabl20260318.pdf)
- [CME FedWatch Tool](https://www.cmegroup.com/markets/interest-rates/cme-fedwatch-tool.html)
- [Polymarket — Fed decision in April](https://polymarket.com/event/fed-decision-in-april)
- [J.P. Morgan — What's The Fed's Next Move?](https://www.jpmorgan.com/insights/global-research/economy/fed-rate-cuts)
- [Kraken — FOMC decision, GDP, PCE, and Big Tech earnings (22 Apr 2026)](https://blog.kraken.com/economic-brief/april-22-2026)
- [LiteFinance — Forex Economic Calendar 27.04.2026–03.05.2026](https://www.litefinance.org/blog/analysts-opinions/weekly-economic-calendar-for-27042026-03052026/)
- [RTÉ — ECB may raise rates in June on war-driven inflation (24 Apr 2026)](https://www.rte.ie/news/business/2026/0424/1570011-ecb-rates-decision-preview/)
- [CNBC — ECB keeps markets guessing on rates with two weeks to go (16 Apr 2026)](https://www.cnbc.com/2026/04/16/ecb-interest-rates-hike-inflation-iran-washington.html)
- [BEA — Personal Consumption Expenditures Price Index](https://www.bea.gov/data/personal-consumption-expenditures-price-index)
- [BLS — Schedule of Selected Releases 2026](https://www.bls.gov/schedule/2026/home.htm)
- [CoinDesk — BTC price steady near $77,500 as derivatives signal cooling momentum (24 Apr 2026)](https://www.coindesk.com/markets/2026/04/24/bitcoin-stalls-below-at-usd77-500-as-volatility-cools-traders-unwind-leverage)
- [CoinDesk — BTC ETFs see $2 billion inflow in 8 days while short-term holders sell (24 Apr 2026)](https://www.coindesk.com/markets/2026/04/24/bitcoin-etfs-just-pulled-usd2-billion-in-8-days-while-short-term-holders-quietly-started-selling)
- [Blockhead — Bitcoin ETF Inflows Extend to Eight Days (24 Apr 2026)](https://www.blockhead.co/2026/04/24/bitcoin-etf-inflows-extend-to-eight-days-as-ethereum-funds-reverse-course/)
- [crypto.news — Bitcoin ETFs Log 8-Day $2.1B Inflow Streak](https://crypto.news/bitcoin-etfs-log-8-day-2-1b-inflow-streak/)
- [24/7 Wall St. — Bitcoin ETFs Just Turned Positive Across Every Timeframe (24 Apr 2026)](https://247wallst.com/investing/2026/04/24/bitcoin-news-bitcoin-etfs-just-turned-positive-across-every-timeframe/)
- [BeInCrypto — Bitcoin Could Hit a 6-Year Milestone In the Last Week of April](https://beincrypto.com/bitcoin-on-route-for-best-april-monthly-returns/)
- [openpr — Cryptocurrency News April 25 2026: Bitcoin Holds $77K](https://www.openpr.com/news/4488939/cryptocurrency-news-april-25-2026-bitcoin-holds-77k-as-new)
- [The Block — Flow's controversial planned rollback to undo $3.9M exploit](https://www.theblock.co/post/383808/flows-controversial-planned-rollback-to-undo-3-9-million-exploit-blindsided-some-partners)
- [crypto.news — April 2026 worst month for crypto hacks ($606M)](https://crypto.news/april-2026-worst-month-for-crypto-hacks/)
- [SEC — Enforcement Results FY2025](https://www.sec.gov/newsroom/press-releases/2026-34)
- [SEC — Clarifies Application of Federal Securities Laws to Crypto Assets](https://www.sec.gov/newsroom/press-releases/2026-30-sec-clarifies-application-federal-securities-laws-crypto-assets)
- [CoinDesk — 100+ crypto firms urge Senate to act on market structure bill (23 Apr 2026)](https://www.coindesk.com/policy/2026/04/23/more-than-100-crypto-firms-urge-senate-to-move-on-u-s-market-structure-bill)

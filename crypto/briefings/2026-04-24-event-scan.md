# Event Scan — 2026-04-24

**Scan window:** 2026-04-24 → 2026-05-01 (macro next 7 days) + crypto news last 24h.
**Source:** WebSearch only (per routine instruction; Binance/Supabase egress remains presumed blocked per 2026-04-19 incident chain, untested this run). All WebSearch queries returned normally.

## Scheduled events next 7 days

### Tier-1 (high impact, playbook mapped)

- **2026-04-29 18:00 UTC — FOMC rate decision** (T+5d 10h). Statement 18:00 UTC, Powell press conference 18:30 UTC. Current target **3.50–3.75%**. CME FedWatch / futures imply **~99% probability of hold**. J.P. Morgan Research concurs with hold, and expects holds for the rest of 2026 unless labour weakens sharply. March CPI re-accelerated to 3.3% YoY (from 2.4% Feb) on Iran-conflict energy costs — that's what killed the cut path. Non-SEP meeting (no dot plot) — forward guidance lives entirely in the statement wording + Powell Q&A. **Playbook: FOMC Rate Decision** (mapped).
  - First in-window Tier-1 this scan cycle. Base-rate reminder from the playbook: in-line holds typically chop (~50% no-clear-direction), so the trade only fires on a *surprise* — either dovish tilt in language (BTC up ~72%) or hawkish tilt (BTC down ~64%).
  - **URGENT file trigger:** the 2026-04-28 scan (FOMC T−1) will be the first to write `URGENT-2026-04-28-pre-event.md`. Not today.

### Tier-1 cluster in window (mostly unmapped)

- **2026-04-30 ~12:00 UTC — BOE MPC rate decision** (T+6d 4h). Bank Rate currently 3.75%. **NOT in `event-playbooks.md`** — unmapped (4th consecutive scan).
- **2026-04-30 ~12:15 UTC — ECB monetary policy decision** (29–30 Apr meeting, Frankfurt, T+6d 4h). Deposit facility 2.00%. Consensus: hold. **NOT in `event-playbooks.md`** — unmapped.
- **2026-04-30 12:30 UTC — US Q1 2026 GDP advance estimate** (BEA, T+6d 4h). **NOT in `event-playbooks.md`** — unmapped.
- **2026-04-30 12:30 UTC — US PCE + Personal Income & Outlays (March 2026)** (BEA, T+6d 4h). **NEW surfacing in today's scan — not flagged in 2026-04-20/21/22/23 briefings.** PCE is the Fed's preferred inflation gauge; reaction profile is close to CPI but usually smaller magnitude. **NOT in `event-playbooks.md`** — unmapped.

> **30 April now carries FIVE catalysts (BOE, ECB, US GDP, US PCE, and FOMC T+24h follow-through) inside a ~1-hour window at 12:00–12:30 UTC.** This is a heavier cluster than reported in prior scans (PCE was the missing piece). The 29 Apr URGENT file should flag that T+24h FOMC exit will land *inside* the ECB/BOE/GDP/PCE release window — i.e. time-stop exit at event+24h risks being stopped by a second catalyst, not BTC price action on the FOMC itself. **Recommendation for Andy: consider a `cluster` meta-playbook entry before 29 Apr; in its absence, the existing FOMC playbook's T+24h time-stop should be shortened on this occasion.**

### Tier-2 (monitor, in window)

- **2026-04-24 12:30 UTC — US Advance Durable Goods Orders** (Mar) — unmapped. Releases at/around the time this scan runs today.
- **2026-04-24 14:00 UTC — Michigan Consumer Sentiment (Final, Apr)** — unmapped, ~6h from scan.
- **2026-04-28 — Conference Board Consumer Confidence (Apr)** — unmapped, typical 14:00 UTC release. Individually low BTC impact; mentioned only because it lands on FOMC T−1 and can shade positioning into the statement.
- **2026-05-01 13:45 UTC — S&P Global Final Mfg PMI** and **14:00 UTC — ISM Manufacturing PMI (Apr)** — unmapped, low individual BTC impact; just clips the 7-day edge.

### Not in window (next-cycle surfacing)

- **US NFP (Apr data)** — 2026-05-08 12:30 UTC.
- **US CPI (Apr data)** — 2026-05-12 12:30 UTC (provisional).

## Crypto-specific last 24h

- **BTC price context (WebSearch only, no Binance egress):** BTC ~$77,500–$77,900 on 2026-04-23, after rallying from mid-$74ks to test $80,000 earlier in the week. Intraday high ~$79,500, now ~$77,480 after S&P gapped lower while Brent stayed near $93.96. 24h move modestly negative (~−0.5%); Fear & Greed ~46 (neutral). Drivers cited: **Trump Iran-ceasefire extension** (risk-on for BTC on 22 Apr) and **Strategy's 2026-04-22 purchase of 34,164 BTC for $2.54B** (largest Strategy buy since 2024, holdings now 815,061 BTC). Spot BTC ETFs logged 5 consecutive days of net inflows through 2026-04-20 (+$238M on 20 Apr, BlackRock IBIT +$256M). **Context only — not a trade trigger.**
- **Minor exchange incidents, sub-outage threshold (NEW vs yesterday).** On 2026-04-23 Coinbase reported delayed sends/receives on the Arbitrum network (resolved). Kraken had a Quai Network (QUAI) funding-gateway issue and a scheduled Banking Circle maintenance window (10:00 UTC) briefly impacting EUR/GBP deposits. **Neither is close to the `Major Exchange Hack / Outage` playbook threshold** (top-10 exchange, confirmed loss of funds or extended outage, 2+ reputable sources). No trade trigger.
- **Crypto market-structure legislative push (NEW vs yesterday, narrative-only).** Per CoinDesk (2026-04-23), 100+ crypto firms including Coinbase and Ripple are pressing the Senate Banking Committee to mark up the Clarity Act. Pro-crypto regulatory posture continues to build; playbook directional bias would be UP on enactment, but a lobbying letter is **not** a playbook trigger on its own.
- **SEC posture remains broadly pro-crypto, no fresh enforcement.** FY2025 enforcement report (2026-04-07, stale) formally ended the "regulation-by-enforcement" era and withdrew 7 prior crypto actions. No new SEC enforcement announcement in last 24h. **No playbook trigger.**
- **Kelp DAO + Drift hack fallout, now T+~5 days.** Kelp DAO ~T+120h, Drift ~T+140h — both far past the playbook's T+12h time-stop. Aggregate April crypto-hack losses still ~$606M across ~12–13 protocols, but **no fresh BTC trade trigger from the hacks themselves**; any residual BTC weakness is regime, not event-driven.
- **No new top-10 exchange hacks, outages, or regulatory enforcement actions flagged in the last 24h.**
- **No new ETF approvals/rejections.** Goldman Sachs Bitcoin Premium Income ETF S-1 (filed 2026-04-14) still in 75-day SEC review; earliest potential decision mid-June. Morgan Stanley Bitcoin Trust already trading. Institutional inflow backdrop supportive, not a triggerable event.

## Recommended posture this week

- **No immediate trade action from this briefing.** FOMC is T+5d 10h — inside the 7-day window (first time this cycle), but still 4+ days outside the URGENT trigger. **No `URGENT-…-pre-event.md` written today.**
- **Cluster preparation is now critical (Andy action, 5th consecutive scan).** BOE, ECB, US GDP, and **US PCE (newly surfaced today)** all fire at 12:00–12:30 UTC on 30 Apr — inside the FOMC T+24h time-stop window. The existing FOMC playbook's exit rule does not account for same-day second-leg catalysts. Three possible fixes, in priority order: (a) draft a `cluster` meta-playbook before 28 Apr; (b) at minimum, add a PCE playbook since PCE reaction is close to CPI; (c) if neither lands, the 28 Apr URGENT file will propose a **FOMC time-stop shortened to T+12h** to exit before the ECB/BOE/GDP/PCE cluster opens.
- **BTC regime tape.** Price is elevated vs last week's ~$74k trough, supported by Strategy's $2.54B buy and Iran-ceasefire extension. If ceasefire talks slip OR PCE surprises hawkish into FOMC, expect sharp two-way risk. The event-driven scanner does not trade geopolitical drift; flagging only for posture awareness.
- **Egress incident chain.** `learnings/2026-04-19-incident-egress-blocked*-hour[2-4]` — 5 days old, out of scope for this routine. If the VPS scalper is still paused via Supabase dashboard, that pause is unaffected by anything this scanner does. Andy: if egress has been restored and the scalper was re-enabled, nothing here changes; if not, **the paused state is the safer default into the 30 Apr cluster regardless.**
- **Next briefing:** 2026-04-25 08:00 UTC. Expected change: FOMC moves from T+5 to T+4; cluster fully inside window.

## Events NOT currently in playbook (for Andy to review)

Carried forward from prior scans plus one new entry:

- **ECB rate decisions.** 30 Apr is the next instance (now T+6d 4h). Historically milder BTC reaction than FOMC, directionally similar.
- **BOE rate decisions.** Same-day as ECB on 30 Apr. Lower BTC impact historically; may be skip-only but worth explicit documentation.
- **Cross-CB cluster days.** 29–30 Apr now confirmed at **FIVE catalysts** (FOMC + BOE + ECB + GDP + PCE). Single-event templates likely misstate variance with this much stacking. A `cluster` meta-playbook with wider SL, smaller size, and shorter time-stop would plug the gap.
- **US Q1 GDP advance estimate.** 30 Apr is the next instance; still unmapped.
- **US PCE / Personal Income & Outlays (NEW in today's scan).** 30 Apr is the next instance. PCE is the Fed's preferred inflation gauge and can move BTC similarly to CPI on surprise; historical magnitudes usually slightly smaller than CPI.
- **Major non-BTC DeFi exploits ≥$100M** — `learnings/2026-04-19-proposal-non-btc-hack-contagion.md`, 5 days open. Kelp + Drift + $606M April aggregate remain live exemplars; no `brain/` action yet.

## Output summary

```
[EVENT SCAN] 8 scheduled (1 Tier-1 in-window FOMC, 4 Tier-1 unmapped cluster on 30 Apr, 3 Tier-2), 3 crypto news (BTC price, minor exchange issues, Clarity Act push), urgent=no
```

## Files touched this run

- `crypto/briefings/2026-04-24-event-scan.md` (this file, new)
- No `brain/` edits (scanner is read-only on playbooks).
- No `learnings/` edits (PCE surfacing is a playbook gap, but the Apr 30 PCE gap is best folded into the existing cluster-playbook proposal rather than filed as a standalone; raising it visibly in this briefing).
- No URGENT file (FOMC is T+5d 10h, outside the 24h trigger).

## Sources

- [The Fed — FOMC Meeting Calendars](https://www.federalreserve.gov/monetarypolicy/fomccalendars.htm)
- [CME FedWatch Tool](https://www.cmegroup.com/markets/interest-rates/cme-fedwatch-tool.html)
- [J.P. Morgan — What's The Fed's Next Move?](https://www.jpmorgan.com/insights/global-research/economy/fed-rate-cuts)
- [Kraken — FOMC decision, GDP, PCE, and Big Tech earnings (22 Apr 2026)](https://blog.kraken.com/economic-brief/april-22-2026)
- [BEA — Release Schedule](https://www.bea.gov/news/schedule)
- [BEA — Personal Consumption Expenditures Price Index](https://www.bea.gov/data/personal-consumption-expenditures-price-index)
- [BLS — Schedule of Selected Releases 2026](https://www.bls.gov/schedule/2026/home.htm)
- [Kiplinger — What to Look Out for in Economic Data This Week (April 20-24)](https://www.kiplinger.com/investing/economy/this-weeks-economic-calendar)
- [CoinDesk — Bitcoin tops $78,000 on Trump ceasefire extension, Strategy's $2.5B buy](https://www.coindesk.com/markets/2026/04/22/bitcoin-climbs-to-usd77-500-on-trump-ceasefire-extension-strategy-s-usd2-5-billion-buy)
- [CoinDesk — Bitcoin tops $79,000 as crypto rally accelerates](https://www.coindesk.com/markets/2026/04/22/bitcoin-tops-usd79-000-as-crypto-rally-gathers-steam-circle-coinbase-strategy-lead)
- [Fortune — Current price of Bitcoin for April 23, 2026](https://fortune.com/article/price-of-bitcoin-04-23-2026/)
- [Blockchain Magazine — Crypto Market Today April 23: Bitcoin Holds $77K As Altcoins Face Corrections](https://blockchainmagazine.net/crypto-market-today-2026-04-23/)
- [CoinDesk — 100+ crypto firms urge Senate to act on market structure bill (23 Apr 2026)](https://www.coindesk.com/policy/2026/04/23/more-than-100-crypto-firms-urge-senate-to-move-on-u-s-market-structure-bill)
- [crypto.news — April 2026 worst month for crypto hacks since Feb 2025 ($606M)](https://crypto.news/april-2026-worst-month-for-crypto-hacks/)
- [SEC — SEC Clarifies Application of Federal Securities Laws to Crypto Assets](https://www.sec.gov/newsroom/press-releases/2026-30-sec-clarifies-application-federal-securities-laws-crypto-assets)
- [Kraken Status](https://status.kraken.com/)
- [Coinbase Status](https://status.coinbase.com/)

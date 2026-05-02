# Event Scan — 2026-05-02

**Scan window:** 2026-05-02 → 2026-05-09 (macro next 7 days) + crypto news last 24h.
**Source:** WebSearch only (per routine instruction; Binance/Supabase egress remains presumed blocked per the 2026-04-19 incident chain — out of scope for a scan-only routine, untested this run).
**Continuity:** Yesterday's `2026-05-01-event-scan.md` framed this as a **post-FOMC quiet week**, no URGENT trade trigger active, NFP at T+7d as the next mapped event. This run picks up at NFP T+~6d. Saturday weekend tape — thin liquidity baseline.
**URGENT file this run:** **NO.** No Tier-1 mapped event (FOMC / CPI / NFP / confirmed ETF decision) inside the 24h window. Next Tier-1 mapped is **NFP 2026-05-08 12:30 UTC** at T+~6 days — well outside the URGENT threshold.

## Scheduled events next 7 days

### Tier-1 (high impact, playbook mapped)

- **2026-05-08 12:30 UTC — US NFP (April 2026 data)** (T+~6 days, Fri). **Consensus firming: ~135k headline (FactSet) vs +178k March print** — meaningful step-down expected. Range across forecasters is wide: PNC's Faucher at +150k, EY's Boussour at +65k (the bear-case outlier). **Unemployment rate consensus 4.2% (vs 4.3% March).** This is the **first NFP fully covering the post-tariff April employment month** — payroll survey week was the week after the 2 Apr reciprocal tariff announcement, when uncertainty was elevated. Tail risk on either side of the headline is genuinely larger than a typical print. **Playbook: US NFP** (mapped) — **skip unless extreme surprise (>2σ)**, TP +2% / SL −1.5% / T+12h time stop when traded. With the current ~70k spread between the bull (PNC 150k) and bear (EY 65k) views, the bar for "extreme surprise" against any single forecaster is lower than usual; the bar against the consensus 135k is normal. **Will surface in the 05–07 May scans for tighter consensus + pre-event drift framing.**

### Tier-1 cluster in window (mostly unmapped)

- **2026-05-05 14:00 UTC — US ISM Services PMI (April)** (T+~3 days, Tue). **NOT in `event-playbooks.md`** — unmapped. March print was **54.0 (expansion)**; April consensus not surfaced in this scan's coverage (will tighten by 04 May). Services component is the larger share of US output and historically a bigger market mover than Manufacturing PMI (which printed yesterday); still well below NFP/CPI/FOMC for direct BTC impact. **Single-event unmapped → no URGENT trigger** even when inside 24h.
- **2026-05-01 14:00 UTC — US ISM Manufacturing PMI (April) — DONE yesterday.** Result not surfaced in the WebSearch coverage at this hour (release was at 14:00 UTC, ~10h before scan time). Will pick up post-print in tomorrow's scan if still relevant. Background only.

### Tier-2 (monitor, in window)

- **2026-05-02 (TODAY, Sat) — weekend tape.** Thin liquidity, broad-market venues closed. No catalysts scheduled. **Execution-quality concern** for any opportunistic trade today — slippage and spreads worse than weekday baseline.
- **2026-05-03 (Sun) — weekend tape continues.** Watch for weekly ETF flow tallies as US news cycle picks up Sunday evening.
- **2026-05-06 — China Caixin Services PMI** (Asia session). Low BTC impact in normal times; relevant only if extreme miss.
- **2026-05-07 — UK / EU second-tier data, EU producer prices.** Unmapped, low impact.
- **2026-05-09 (Sat) — possible BOE-related calendar item flagged** in one search source but **inconsistent with the standard ~6-week MPC cadence** (BOE met 30 Apr, next MPC would be ~mid-June 2026). **Treating as a likely false-positive / data-quality issue** rather than a real meeting; will recheck on Monday with better sources. Flagged for Andy review under the "scan citation discipline" follow-up from yesterday's briefing.

### Not in window (next-cycle surfacing)

- **2026-05-12 12:30 UTC — US CPI (April data)** — provisional. Outside the 7-day window today by 3 days; will surface in the **2026-05-05 scan** as a Tier-1 mapped event entering the window. **First post-tariff CPI** — this will be the next URGENT-eligible event after NFP.
- **~2026-05-20 — FOMC minutes (29 Apr meeting)** — three weeks after the policy decision per Fed convention. Not a primary playbook trigger, but the dissent split (8–4, the largest since 1992 per yesterday's briefing) means the minutes will be unusually market-moving. Out of window today.
- **2026-06-16/17 — Next FOMC** — with SEP / dot plot. Powell's term as chair ends 2026-05-15 → **June FOMC will be Warsh's first meeting as chair if confirmed.** Out of window for ~6 weeks.

## Crypto-specific last 24h

- **BTC tape: bid resumes, $80k attempt back on the table.** Yesterday's briefing closed with BTC at ~$76,500–77,000 in a $76,240–$79,000 consolidation range and a Kalshi 64% probability of holding >$76k by 5pm EDT 01 May. **BTC is now ~$78,324 (LatestLY snapshot 02 May ~02:40 UTC), up ~3% in the trailing 24h.** Coverage attributes the move to "rising stocks and dropping oil prices." Sell-the-news post-FOMC drawdown to $74,914 (29 Apr T+~3h) is now fully retraced; price has cleared the $76,240 (23.6% Fib) zone and is pressing toward the upper end of the consolidation range. **No event-driven trade trigger from this — pure price action recovery, no playbook fires on tape moves alone.** Flagging because the 9-of-10 sell-the-news pattern (carried from yesterday) didn't extend into a multi-day decline this cycle — partial mean-reversion within ~72h.
- **ETF flows: 3-day outflow streak through Apr 30 confirmed at ~$490M total** (Mon 27 Apr ~$263M, Tue 28 Apr ~$89.7M, Wed 29 Apr ~$137-138M; FBTC −$191M and IBIT −$167M among the largest contributors). **April 2026 closed as the strongest single inflow month of 2026 at +$2.1–2.44B net** despite the late-month reversal, with cumulative spot-BTC ETF inflows now ~$58.5B and AUM ~$102B. **No fresh Friday 01 May or weekend flow tally in the WebSearch coverage at this hour** — Friday's print and any 04 May Monday surfacing of the weekend picture is the next watch. **Watch whether the 3-day outflow streak extended to 4 (Fri 01 May print).** If it did, that's a stronger regime-shift signal worth flagging in tomorrow's scan; if Friday flipped to net inflow alongside the price recovery, the late-April outflow looks like profit-taking / pre-FOMC de-risking rather than a structural turn.
- **Regulatory: EU sanctions Russia/Belarus crypto ecosystem, effective 2026-05-24** as part of the 20th sanctions package — bans transactions with local providers, blacklists RUBx and the digital ruble. **Maps to `Major Regulatory Action` playbook (negative, jurisdiction-specific)**, but the effect-date is 22 days out and the BTC-specific exposure is indirect (Russia/Belarus on-ramps were already heavily restricted post-2022). **Not a triggerable event for this strategy** — directional impact on BTC marginal in normal market state. Carry as context.
- **Regulatory: Senator Bernie Moreno flags US crypto market structure legislation expected end of May 2026.** If passed, would map to `Major Regulatory Action` (pro-crypto regulatory clarity) — the playbook's UP +2 to +5%, ~60% base-rate row. **Not actionable today** — no specific binding action, no calendar lock. **Watch for binding committee/floor action mid-to-late May** as a higher-conviction catalyst entering scan windows.
- **Exchange / market structure: Gemini secured CFTC Derivatives Clearing Organization (DCO) license** for its Olympus unit — in-house clearing for futures, options, prediction markets. Constructive but **not a trigger** under any current playbook.
- **Hacks: NO new top-10 CEX hacks, outages, or confirmed losses in the last 24h.** `Major Exchange Hack / Outage` playbook trigger remains inactive (requires 2+ reputable sources on a top-10 CEX). DeFi side: April closed at the industry-record $629M / 30 incidents per yesterday's coverage — no new follow-on losses surfaced in the 24h window. **April hacks file is now closed**; May tape starts clean.
- **Legal: South Korean prosecutors requested 20-year sentence for Delio CEO Jeong Sang-ho** over alleged $168.5M embezzlement from the platform's 2023 withdrawal freeze. **Not playbook-relevant** — historical case, not a market-moving enforcement action.
- **Geopolitics: Iran war / oil shock framing — BTC tape today benefited from "dropping oil prices"** per coverage, suggesting some thaw in the energy-driven inflation overhang that dominated 30 Apr ECB / BoJ commentary. **No fresh escalation** in the 24h scan window. Structural overhang remains.

## Recommended posture this week

- **NO URGENT TRADE TRIGGER ACTIVE.** Next mapped Tier-1 is **NFP 2026-05-08 12:30 UTC** at T+~6 days. Per `event-playbooks.md`, NFP is **skip unless extreme surprise (>2σ)**. Given the wide forecaster spread (65k–150k around a 135k consensus, headline range ~85k), **the >2σ bar is materially harder to clear at release** than for a tight-consensus print — argues for a higher prior on "skip" than a normal NFP. **Will firm in the 05 May scan** as consensus tightens and pre-event drift develops.
- **Quiet calendar week.** Outside NFP at T+6d and ISM Services T+3d, the macro slate is second-tier. **Default posture: no event positioning; observe whether (a) the BTC bid through the weekend extends into Mon–Wed, (b) Friday 01 May ETF flow flipped to inflow on the price recovery, (c) the next BTC ETF SEC decision window opens ahead of NFP** (no pending decision flagged in the 24h window per searches; Goldman Sachs Bitcoin Premium Income ETF S-1 still in 75-day SEC review, decision earliest mid-June).
- **Post-FOMC sell-the-news pattern partially mean-reverted within 72h.** The 9-of-10 historical pattern is now 9-of-10 + a partial price recovery within 3 days for the 10th instance — doesn't invalidate the directional pattern, but suggests the playbook addition (if Andy adopts) should pair the T+30 short with a tight time stop (T+24h to T+72h, not T+24h alone). **Not writing a proposal this run** — flagging for Andy review, sample size still adequate at 9/10.
- **First post-tariff CPI is 2026-05-12 12:30 UTC**, entering the 7-day window in 3 days. Likely the most market-moving event of the next 14 days. **Pre-position the routine's mental model: this is the next URGENT-eligible Tier-1 after NFP, and surprise distribution is genuinely uncertain given the Apr 2 tariff regime change.**
- **Cluster gap (Andy action, 10th consecutive scan).** No co-located Tier-1s in the 7-day window — the gap remains off the critical path this week. Re-surfaces when CPI + ECB / BOE / Fed-speak stack up around 12 May.
- **Egress incident chain.** Now 13 days since `learnings/2026-04-19-incident-egress-blocked*-hour[2-4]`. WebSearch sufficient for scan-only; remains the binding constraint on whether any approved trade can actually execute.
- **Next briefing:** 2026-05-03 08:00 UTC. Expected change: weekend ETF flow tallies (Fri 01 May print), Sunday-evening macro setup pieces, ISM Services consensus firming.

## Events NOT currently in playbook (for Andy to review)

Carried forward, with one new candidate observation:

- **Post-FOMC "sell-the-news" pattern (CARRIED, refined)** — 9/10 since Jul 2025, including 29 Apr. **NEW data point this run:** the 29 Apr drawdown to $74,914 partially mean-reverted to ~$78.3k within ~72h on a benign tape. If the playbook gets a sub-template, it should specify a **shorter time stop (T+24h to T+48h)** rather than open-ended hold; otherwise the +5%-from-low recovery erodes the short edge. **Sample n=10 is now meaningful for a `proposal-fomc-post-event-short.md` learning** — Andy direction needed on whether the routine should draft.
- **Stale-consensus issue from 29–30 Apr (CARRIED)** — ECB deposit facility 29 Apr scan said 2.15% consensus, actual 30 Apr came 2.0%. **Yesterday's briefing committed to pinning consensus numbers to source + timestamp going forward.** This run: **NFP April consensus pinned to FactSet 135k headline / 4.2% UE**, sourced from Morningstar (writing today 02 May 2026). ISM Services April consensus **NOT pinned** (no source surfaced); will pin by 04 May.
- **BoJ rate decisions** — last 28 Apr hawkish-hold; next ~mid-June 2026. Still unmapped.
- **BoC rate decisions** — last 29 Apr hold-as-expected. Still unmapped.
- **ECB rate decisions** — last 30 Apr hold (with 2.0% deposit facility downside surprise vs 2.15% scan-cited consensus). Still unmapped.
- **BOE rate decisions** — last 30 Apr hold (in-line). **Possible 09 May calendar item flagged in one source today; flagged as likely false-positive against ~6-week cadence**. Still unmapped regardless.
- **Cross-CB cluster days** — 30 Apr cluster closed cleanly; meta-playbook gap remains. Re-surfaces with CPI cluster mid-May.
- **US Q1 GDP advance estimate** — 30 Apr +2.0% (mild downside miss). Still unmapped.
- **US PCE / Personal Income & Outlays** — 30 Apr +3.5% YoY core (in-line). Still unmapped.
- **ISM Manufacturing PMI** — printed yesterday 14:00 UTC; result not surfaced in this scan. **ISM Services PMI** — Tue 05 May 14:00 UTC. Both unmapped; the >2σ NFP-style threshold logic would probably apply if added.
- **Non-BTC DeFi exploits ≥$100M** — `learnings/2026-04-19-proposal-non-btc-hack-contagion.md`, **13 days open**. April aggregate confirmed at $629M / 30 incidents. No `brain/` action yet.

## Output summary

```
[EVENT SCAN] 3 scheduled in window (1 Tier-1 mapped NFP T+6d at 135k/4.2% consensus, 1 Tier-1 unmapped ISM Services T+3d, weekend Tier-2), 5 crypto news (BTC bid back to $78.3k recovering FOMC drawdown, 3-day Apr 27-29 ETF outflow streak confirmed at $490M with April still strongest +$2.4B inflow month of 2026, EU sanctions Russia/Belarus crypto effective 24 May, US market-structure legislation flagged for end-May, Gemini CFTC DCO license, no new CEX hacks/outages, no triggerable ETF decisions), urgent=NO (no Tier-1 mapped event inside 24h)
```

## Files touched this run

- `crypto/briefings/2026-05-02-event-scan.md` (this file, new)
- No URGENT file (no Tier-1 mapped event inside 24h)
- No `brain/` edits (scanner is read-only on playbooks; observations carried in this briefing for Andy review only)
- No `learnings/` edits (post-FOMC short proposal candidate flagged for Andy review only — not written unilaterally)

## Sources

- [Morningstar — April Jobs Report Forecasts: Stable Growth, Federal Layoffs and Tariffs Looms](https://www.morningstar.com/markets/april-jobs-report-forecasts-show-stable-growth-impact-federal-layoffs-tariffs-looms)
- [BLS — Schedule of Selected Releases 2026](https://www.bls.gov/schedule/2026/home.htm)
- [BLS — Employment Situation March 2026 (release archive)](https://www.bls.gov/news.release/archives/empsit_04032026.htm)
- [ISM World — Release Dates for ISM Manufacturing and Non-Manufacturing Reports](https://www.ismworld.org/supply-management-news-and-reports/reports/rob-report-calendar/)
- [ISM World — March 2026 ISM Services PMI Report (54.0)](https://www.ismworld.org/supply-management-news-and-reports/reports/ism-pmi-reports/services/march/)
- [PRNewswire — Services PMI at 54%; March 2026 ISM Services PMI Report](https://www.prnewswire.com/news-releases/services-pmi-at-54-march-2026-ism-services-pmi-report-302734026.html)
- [Federal Reserve — FOMC meeting calendar](https://www.federalreserve.gov/monetarypolicy/fomccalendars.htm)
- [LatestLY — Bitcoin Price Today, May 2, 2026: BTC Rises to USD 78,324](https://www.latestly.com/business/bitcoin-price-today-may-2-2026-btc-price-rises-to-usd-78324-as-market-momentum-strengthens-7414573.html)
- [Spoted Crypto — Bitcoin News Today May 2026: ETF & On-Chain](https://www.spotedcrypto.com/bitcoin-news-today-may-2026/)
- [Bitcoin.com News — Fidelity Pulls $150M From FBTC as Bitcoin ETF Flows Reverse After 9-Day Run](https://news.bitcoin.com/fidelity-pulls-150m-from-fbtc-as-bitcoin-etf-flows-reverse-after-9-day-run/)
- [FX Leaders — $490M Bitcoin ETF Outflows in 3 Days: Rally Losing Steam?](https://www.fxleaders.com/news/2026/05/01/490m-bitcoin-etf-outflows-in-3-days-rally-losing-steam/)
- [Coinglass — Bitcoin ETF Fund Flows](https://www.coinglass.com/etf/bitcoin)
- [Coin Edition — Latest Crypto Regulation News Today 2026](https://coinedition.com/news/crypto-regulation-news/)
- [Crypto Integrated — Crypto News May 1, 2026](https://www.cryptointegrat.com/p/crypto-news-may-1-2026)
- [PYMNTS — Goldman Sachs Seeks SEC Approval for New Bitcoin ETF](https://www.pymnts.com/cryptocurrency/2026/goldman-sachs-seeks-sec-approval-for-new-bitcoin-etf/)

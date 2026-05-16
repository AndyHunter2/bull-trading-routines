# Event Scan — 2026-05-16

**Scan window:** 2026-05-16 → 2026-05-23 (macro next 7 days) + crypto news last 24h.
**Source:** WebSearch only (per routine + task instruction; Binance/Supabase egress remains blocked per the 2026-04-19 incident chain — out of scope for a scan-only routine, not tested this run).
**Continuity:** Follows `2026-05-15-event-scan.md` (daily cadence restored after the 05-09→05-14 gap). One new resolved item the 05-15 catch-up missed: **PPI April (05-13) — +1.4% m/m / +6% y/y, hot.** The 05-15 gap remediation covered CPI 05-12 / Warsh 05-13 / CLARITY 05-14 but not the PPI print that landed the same day as the Warsh confirmation. Caught up below.
**URGENT file this run:** **NO.** No Tier-1 *mapped* event (FOMC rate decision / CPI / NFP / confirmed ETF binding decision) within 24h (2026-05-16 → 2026-05-17). The only Tier-1-context calendar item in window is **FOMC Minutes 05-20 (~4 days out)** — minutes are not the FOMC rate-decision playbook, no minutes playbook exists, not a discrete trigger. No URGENT trigger.

## Scheduled events next 7 days

### Tier-1 context, UNMAPPED as discrete trigger

- **2026-05-20 18:00 UTC — FOMC Minutes (April 28–29 meeting).** Confirmed via Federal Reserve calendar: released 2026-05-20, 2:00 p.m. ET = 18:00 UTC (EDT, UTC−4). Now **~4 days out** (was ~5 in the 05-15 scan). **No `event-playbooks.md` entry for FOMC *minutes*** — the FOMC playbook is scoped to the rate decision (T+0 release + presser), a different event with a different reaction profile. Carried amplifiers from 05-15: the 29 Apr decision carried an **8–4 dissent split** (most fractured vote of the cycle) **and these are the first minutes released after the chair transition** (Warsh took the seat 05-15). That combination makes this set materially more market-moving than a routine minutes release. **Treat as Tier-1 for situational awareness; NOT a discrete trade trigger** (unmapped event type, ~4 days out, no >2σ data-surprise mechanism). Becomes scan-central from the 05-18/19 scans. Carried gap for Andy: should `event-playbooks.md` add an FOMC-Minutes entry?

### No mapped scheduled Tier-1 trade trigger in window

No FOMC rate decision, US CPI, US NFP, ECB, or BOE decision falls in 2026-05-16 → 2026-05-23:

- **US CPI:** April data resolved 05-12. Next (May data) **2026-06-10** per BLS — out of window.
- **US NFP:** April data resolved 05-08. Next (May data) **2026-06-05** per BLS — out of window.
- **FOMC rate decision:** next **2026-06-16/17** (with SEP / dot plot; Warsh's first as chair) — out of window.
- **ECB:** next **2026-06-11** — out of window. **BOE:** next **2026-06-18** — out of window.

### Tier-2 (monitor, in/near window)

- **2026-05-24 — EU ban on Russia/Belarus-based crypto ecosystem takes effect.** Just *outside* window (window ends 05-23; effective 05-24). Maps to `Major Regulatory Action` *by analogy only* — but it is a **narrow sanctions action on a specific foreign ecosystem, not a broad domestic ban**, so the playbook's "Major country ban → DOWN −3 to −8%" channel does **not** fit; expected BTC impact is minimal. Monitor, not a trigger. Mapping nuance raised for Andy below.
- **Warsh first-statement-as-chair watch (CARRIED, LIVE).** In seat since 05-15. No substantive first policy statement found in the last 24h. Quasi-FOMC-equivalent forward-guidance channel; any substantive direction-setting remark 16–23 May is the soft Tier-1-equivalent item. No discrete trigger yet.
- **CLARITY Act floor path (no binding in-window date).** Still committee-passed (15–9, 05-14); not on the floor. Sen. Moreno publicly said market-structure legislation is "expected completed by end of May" (aspirational); Chair Scott targets Senate floor June/July; White House July 4 target (carried). No binding in-window date — not a trigger this week.
- **2026-05-16/17 (Sat/Sun)** — weekend tape under the persisting hawkish/ETF-outflow regime, digesting the PPI shock on top of hot CPI.

## Resolved during gap (catch-up — context only, not trade-actionable now)

- **PPI April (05-13, RESOLVED — NEW THIS RUN, missed by the 05-15 catch-up) — HOT, hawkish-for-Fed.** Final-demand PPI **+1.4% m/m** (largest since Mar 2022; consensus ~0.5%), **+6.0% y/y** (largest since Dec 2022). Goods +2.0% with ~¾ from a **+7.8% energy** jump (gasoline +15.6%, Iran-war energy-complex pressure, pump prices > $4/gal); services +1.2%. Market read: rate cuts priced out for the rest of 2026, **hike odds rose to ~39%**. **No PPI playbook entry** (PPI is named in `strategy/event-driven.md` as a scheduled-macro source but `event-playbooks.md` has no PPI template — closest analogue is the `US CPI` "hot → DOWN −1 to −3%, ~60%" channel). Stacks on hot CPI 05-12 (3.8% y/y) → the hawkish backdrop is now **stronger** than the 05-15 briefing portrayed. Post-trade attribution belongs to `crypto-event-review`, not this scanner.
- **Carry-closed from 05-15:** CPI April 05-12 (HOT +0.6% m/m / +3.8% y/y), Warsh confirmed 05-13 (54–45, Powell stays as governor), CLARITY Senate Banking markup 05-14 (15–9 bipartisan, reaction "measured not explosive"), Coinbase AWS outage 05-07/08 (closed, not a hack). No re-litigation here — see `2026-05-15-event-scan.md`.

## Crypto-specific last 24h

- **BTC tape:** **~$79,000** on 05-16 (Saturday; LatestLY $79,049 at 08:16 IST, 24h vol ~$38B). **Slipped below $80k** after digesting the 6% PPI surge — a continuation of the hot-CPI/PPI hawkish pressure, not a fresh catalyst. Support eyed $75–77k, resistance ~$81k; exchange reserves still declining (holders not distributing). Tape, not a trigger.
- **ETF — no binding decision in window; one forward decision now dated.** **BlackRock iShares Bitcoin *Premium Income* ETF — SEC final decision date 2026-05-30** (covered-call income product *on* IBIT; SEC took a 60-day extension from the 03-31 deadline). **Out of window** (~14 days out) but becomes scan-central from ~05-23/24. **Mapping nuance:** this is an options-income wrapper on an *already-approved* spot ETF, not a new spot-ETF approval/denial — the `BTC Spot ETF News` playbook's "+3 to +8% on approval" magnitude does **not** transfer; expected impact is far smaller. Flagged for Andy below. ETF *flow* regime: the 05-15 briefing's −$635M 05-13 record outflow still frames the week as caution/outflow — no fresh single-day flow figure in the last 24h.
- **Bhutan supply-overhang twist (CARRIED item, new development).** Bhutan says it "doesn't recall" selling any BTC, **disputing** Arkham's attribution of >$1B in BTC leaving Bhutan-tagged wallets over the past year. Sovereign-treasury supply narrative (standing carry) — unresolved attribution, not a discrete trigger; mild supply-overhang context.
- **Hacks / outages:** **No new top-10 CEX hack, confirmed fund loss, or extended outage in 24h.** Coinbase AWS outage (05-07/08) closed. A generic "2026: ~45 protocols / >$450M" industry stat appeared in results — not 24h, not BTC-specific, not actionable. No Binance incident. `Major Exchange Hack/Outage` playbook stays inactive.
- **Regulatory:** No binding US action in last 24h. CLARITY still pre-floor (above). EU Russia/Belarus crypto-ecosystem ban effective 05-24 (Tier-2 above).

## Recommended posture this week

- **No scheduled Tier-1 mapped trade trigger in the 7-day window. No URGENT file.** The only Tier-1-context item is FOMC Minutes 05-20 — unmapped as a discrete trigger, ~4 days out, situational-awareness only. It becomes scan-central from the 05-18/19 scans.
- **Macro backdrop is now MORE hawkish than the 05-15 read.** PPI +6% y/y (05-13, energy/Iran-war driven) stacks on hot CPI +3.8% (05-12): rate cuts priced out for 2026, hike odds ~39%, BTC slipped sub-$80k. The persisting ETF-outflow regime (−$635M 05-13) compounds it. **Any event-driven LONG candidate this week sits against a deteriorated rate-fear + outflow context** — directional-context bias remains caution (the inverse of the 05-08 pro-bull setup), and is more negative than 05-15 portrayed.
- **Briefing-gap residue:** the 05-15 catch-up missed the **PPI 05-13** print despite PPI being named in the strategy thesis. Reinforces the standing cron-reliability concern and a concrete playbook gap (no PPI template). Recommend Andy verify the daily cron and decide on a PPI playbook entry.
- **Egress incident chain.** ~27 days since `learnings/2026-04-19-incident-egress-blocked*`. WebSearch sufficient for scan-only; remains the binding constraint on whether any approved trade could actually execute. Status unchanged.
- **Next briefing:** 2026-05-17 08:00 UTC. Expected: weekend-tape under outflow/hawkish regime; FOMC-Minutes 05-20 pre-positioning begins ~05-18; any Warsh first-statement; CLARITY floor-path timeline; BlackRock Premium-Income ETF (05-30) enters T-7 from the 05-23 scan.

## Events NOT currently in playbook (for Andy to review)

- **PPI as a distinct playbook entry (NEW, ELEVATED THIS RUN).** PPI is named in `strategy/event-driven.md` as a scheduled-macro source but has **no `event-playbooks.md` template**. It just produced a 6% y/y surprise (05-13) that contributed to BTC slipping sub-$80k, and it was un-scanned in the 05-15 catch-up. Recommend Andy decide whether PPI warrants its own entry (likely a lighter-magnitude sibling of the CPI template). Andy direction needed.
- **FOMC Minutes as a distinct playbook entry (CARRIED, ELEVATED — now 4 days out).** In-window 05-20 with a dissent-split (8–4) + chair-transition amplifier and no playbook. Andy direction needed.
- **BlackRock Bitcoin *Premium Income* (covered-call) ETF decision 05-30 (NEW).** The `BTC Spot ETF News` playbook is scoped to spot approval/denial/extension. An options-income wrapper on an already-approved ETF is a different, lower-impact event class. Recommend Andy decide whether to add a "derivative/income ETF product decision" sub-note (likely sub-threshold for a trade). Andy direction.
- **Narrow foreign-ecosystem sanctions vs `Major Regulatory Action` "country ban" (REFINED).** EU Russia/Belarus crypto ban (eff. 05-24) is a narrow sanctions action, not a broad domestic ban — the −3 to −8% "country ban" channel over-states it. Sub-question: should the playbook distinguish broad-domestic-ban vs targeted-foreign-sanctions? Andy direction.
- **Standing carries (unchanged):** Fed-Chair-Transition / first-statement-as-chair (now live, thin priors); cluster meta-playbook gap (`proposal-cluster.md` still not written unilaterally per envelope rules); CLARITY multi-stage weighting (committee step spent, market muted — weight floor/House stages lower); post-FOMC "sell-the-news" (`proposal-fomc-post-event-short.md` carried); ADP-as-NFP-precursor (calibration deferred to `crypto-event-review`); BoJ/BoC/ECB/BOE rate decisions unmapped (all next-meetings out of window); US Q1 GDP / PCE / ISM unmapped; Strategy/MicroStrategy structural-supply stub; Bhutan sovereign-treasury supply (now with a disputed-attribution twist); non-BTC DeFi exploit ≥$100M contagion proposal (`learnings/2026-04-19-proposal-non-btc-hack-contagion.md`, now 27 days open, no BTC-relevant exploit this run).

## Output summary

```
[EVENT SCAN] 2026-05-16 | 0 Tier-1 MAPPED triggers in window; 1 Tier-1-context UNMAPPED (FOMC Minutes 2026-05-20 18:00 UTC, dissent-split 8-4 + Warsh chair-transition amplified, ~4d out, no minutes playbook — situational only); NEW catch-up the 05-15 gap-remediation missed: PPI April RESOLVED 05-13 +1.4%m/m/+6.0%y/y largest since Mar-2022 energy/Iran-war-driven hike-odds~39% hawkish-for-Fed (no PPI playbook — gap raised); crypto 24h: BTC slipped sub-$80k ~$79.0k digesting PPI shock support $75-77k resistance ~$81k, ETF-outflow regime persists (−$635M 05-13 carried, no fresh 24h figure), BlackRock iShares Bitcoin PREMIUM INCOME (covered-call) ETF SEC final decision 2026-05-30 ~14d OUT of window (options-income wrapper on approved IBIT — lower-impact than spot, mapping nuance raised), Bhutan disputes Arkham >$1B BTC-outflow attribution (supply-overhang carry), no new top-10 CEX hack/outage, no binding spot-ETF decision in window; EU Russia/Belarus crypto-ecosystem ban eff 05-24 (narrow sanctions, near-window, minimal-impact); macro backdrop hawkish-for-Fed and MORE negative than 05-15 (PPI stacks on hot CPI); urgent=NO (no Tier-1 mapped event within 24h)
```

## Files touched this run

- `crypto/briefings/2026-05-16-event-scan.md` (this file, new)
- No URGENT file (no Tier-1 mapped event within 24h; FOMC Minutes 05-20 is ~4d out and unmapped as a discrete trigger)
- No `brain/` edits (scanner is read-only on playbooks; PPI entry, FOMC-Minutes entry, Premium-Income-ETF sub-note, narrow-sanctions-vs-country-ban nuance all raised for Andy review only)
- No `learnings/` edits (PPI/CPI/Warsh/CLARITY post-event reviews belong to `crypto-event-review`, not this scanner; post-FOMC short proposal and cluster proposal carried per envelope rules)

## Sources

- [Federal Reserve — FOMC meeting calendars (April 28–29 2026)](https://www.federalreserve.gov/monetarypolicy/fomccalendars.htm)
- [Federal Reserve Board — Calendar: May 2026 (FOMC Minutes 20 May)](https://www.federalreserve.gov/newsevents/2026-may.htm)
- [Federal Reserve — April 28–29, 2026 FOMC meeting / press conference](https://www.federalreserve.gov/monetarypolicy/fomcpresconf20260429.htm)
- [BLS — Schedule of Releases for the Consumer Price Index (next CPI 2026-06-10)](https://www.bls.gov/schedule/news_release/cpi.htm)
- [BLS — Schedule of Releases for the Employment Situation (next NFP 2026-06-05)](https://www.bls.gov/schedule/news_release/empsit.htm)
- [BLS — Producer Price Indexes, April 2026 (PDF)](https://www.bls.gov/news.release/pdf/ppi.pdf)
- [CNBC — PPI inflation report April 2026](https://www.cnbc.com/2026/05/13/ppi-inflation-report-april-2026-.html)
- [BLS — Producer Price Index News Release, 2026 M04 results](https://www.bls.gov/news.release/ppi.nr0.htm)
- [LatestLY — Bitcoin Price Today, May 16 2026: BTC stable below $80,000 as market consolidates](https://www.latestly.com/business/bitcoin-price-today-may-16-2026-btc-price-stable-below-usd-80000-as-crypto-market-consolidates-7432391.html)
- [Fortune — Current price of Bitcoin for May 15, 2026](https://fortune.com/article/price-of-bitcoin-05-15-2026/)
- [MEXC — SEC delays decision on BlackRock’s new Bitcoin ETF (final date May 30, 2026)](https://www.mexc.com/news/898152)
- [PYMNTS — Goldman Sachs seeks SEC approval for new Bitcoin ETF](https://www.pymnts.com/cryptocurrency/2026/goldman-sachs-seeks-sec-approval-for-new-bitcoin-etf/)
- [Bloomberg — Coinbase resumes trading after seven-hour exchange outage (05-08, AWS, not a hack)](https://www.bloomberg.com/news/articles/2026-05-08/coinbase-resumes-trading-after-seven-hour-exchange-outage)
- [CNBC — Crypto industry scores win as Clarity Act clears Senate hurdle (15–9, 05-14)](https://www.cnbc.com/2026/05/14/clarity-act-congress-crypto-senate.html)
- [Bloomberg — Bitcoin surges past $80,000 as US crypto regulation bill advances in Senate](https://www.bloomberg.com/news/articles/2026-05-14/bitcoin-stalls-as-crypto-gains-ground-in-washington-wall-street)
- [CNBC — Kevin Warsh wins Senate confirmation as the next Federal Reserve chair (54–45)](https://www.cnbc.com/2026/05/13/kevin-warsh-wins-senate-confirmation-as-the-next-federal-reserve-chair.html)
- [SEC — SEC clarifies the application of federal securities laws to crypto assets](https://www.sec.gov/newsroom/press-releases/2026-30-sec-clarifies-application-federal-securities-laws-crypto-assets)

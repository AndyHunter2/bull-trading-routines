# Event Scan — 2026-04-21

**Scan window:** 2026-04-21 → 2026-04-28 (macro next 7 days) + crypto news last 24h.
**Source:** WebSearch only (per routine instruction; Binance/Supabase egress remains blocked per 2026-04-19 incident chain). All four queries returned normally.

## Scheduled events next 7 days

### Tier-1 (high impact, playbook mapped)

- **None inside the 7-day window.** FOMC is now **T+8** (2026-04-29 18:00 UTC) — one day outside lookahead. This is the last scan before FOMC enters the 7-day window; **tomorrow's 2026-04-22 scan will be the first to carry FOMC as an in-window Tier-1** at T+7, and the **2026-04-28 scan will trigger the first `URGENT-2026-04-28-pre-event.md`** at FOMC T−1. No URGENT file written today.

### Tier-1 cluster on the horizon (T+8 / T+9, just outside window)

- **2026-04-29 18:00 UTC — FOMC rate decision** (28–29 Apr meeting, statement 18:00 UTC, press conf 18:30 UTC). Current target 3.50–3.75%. CME FedWatch ~85% probability of hold. Non-SEP meeting (no dot plot) — forward guidance is entirely statement + Powell press conf. **Playbook: FOMC Rate Decision** (mapped).
- **2026-04-30 ~12:15 UTC — ECB monetary policy decision** (Frankfurt). Deposit facility 2.00%. **NOT in `event-playbooks.md`** — unmapped (carried from 2026-04-19/20 scans).
- **2026-04-30 ~12:00 UTC — BOE MPC rate decision**. Bank Rate 3.75% (last held 19 Mar 2026). **NOT in `event-playbooks.md`** — unmapped.
- **2026-04-30 12:30 UTC — US Q1 2026 GDP advance estimate** (BEA). **NOT in `event-playbooks.md`** — unmapped.

> The 29–30 April cluster (FOMC + ECB + BOE + US GDP) remains the dominant upcoming catalyst. 2026-04-29's scan should produce a single `URGENT-2026-04-29-pre-event.md` covering FOMC, and a separate note for the 30 Apr cluster once ECB/BOE/GDP playbooks are drafted.

### Tier-2 (monitor, in window)

- **2026-04-23 13:45 UTC — S&P Global Flash US PMIs (Apr)** — unmapped, low individual BTC impact.
- **2026-04-23 12:30 UTC — US Initial Jobless Claims** (weekly) — unmapped, low individual BTC impact.
- **2026-04-24 12:30 UTC — US Advance Durable Goods Orders** (Kiplinger confirms 08:30 ET = 12:30 UTC) — unmapped.
- **2026-04-24 14:00 UTC — Michigan Consumer Survey (Final)** (Kiplinger confirms 10:00 ET = 14:00 UTC) — unmapped.
- No other Tier-1-grade data releases confirmed in window from searched sources.

### Not in window (next-cycle surfacing)

- **US NFP (Apr data)** — 2026-05-08 12:30 UTC.
- **US CPI (Apr data)** — 2026-05-12 12:30 UTC (provisional).

## Crypto-specific last 24h

- **Kelp DAO hack attributed to North Korea (NEW vs yesterday).** LayerZero's CEO publicly blamed DPRK / Lazarus-affiliated actors for the ~$292M exploit (CoinDesk / TechCrunch, 2026-04-20). Attribution alone doesn't re-open an event-driven trade window: hack itself is now **T+~48h**, well past the `Major Exchange Hack / Outage` playbook's T+12h time-stop. **No fresh BTC trade trigger.**
- **Curve paused LayerZero infrastructure (NEW vs yesterday).** Precautionary pending root-cause review of the rsETH/LayerZero path. Contagion effect on BTC: indirect. **No playbook trigger; monitor.**
- **April crypto-hack total now >$606M across 13 protocols (NEW narrative beat).** KelpDAO + Drift account for ~95%. Narrative context only — no market trigger on the aggregate number.
- **Vercel infrastructure breach.** Already flagged in 2026-04-20 scan. No new development. Crypto projects rotating credentials; no on-chain or price-relevant fallout reported.
- **BTC price context (WebSearch only, no Binance egress):** BTC reclaimed **$75,000** (CoinDesk, 2026-04-21), trading ~$75,733 on Tuesday morning (+1.5% 24h). Briefly touched $76,000 late 2026-04-20 before easing. Drivers cited: Iran signalling a negotiating team to Pakistan ahead of Wednesday ceasefire deadline; Brent crude easing. Kaiko note: break above $76,000 would open a path toward $85,000; funding rates still negative in perps (persistent bearish positioning). **Context only — not a trade trigger.**
- **No top-10 exchange hacks, outages, or regulatory enforcement actions flagged in the last 24h.** SEC staff statement on decentralized crypto software interfaces (2026-04-13, mildly pro-crypto) is stale news, no new Tier-1 regulatory catalyst today.
- **No new ETF approvals/rejections.** Goldman Sachs Bitcoin Premium Income ETF S-1 (filed 2026-04-14) still in 75-day SEC review; earliest potential decision mid-June. Morgan Stanley Bitcoin Trust already launched. ETF net inflows last week $996.4M (SoSoValue) — supportive backdrop, no event-driven trigger.

## Recommended posture this week

- **No immediate trade action from this briefing.** No Tier-1 event inside 24h. No `URGENT-…-pre-event.md` written.
- **Cluster preparation (Andy action, 3rd day repeating).** ECB, BOE, and US GDP remain **unmapped** in `brain/event-playbooks.md`. This is the last scan before FOMC enters the 7-day window; drafting those playbook entries this week means the 2026-04-28 URGENT file (FOMC T−1) can cite them if cluster scoring becomes necessary. See "Events NOT currently in playbook" below.
- **Kelp DAO attribution.** NK involvement is a narrative update, not a fresh event-driven trigger. The event-scan routine will stop re-flagging the Kelp hack in subsequent runs unless a materially new development emerges (funds recovery, second exploit, regulatory response, sanctions).
- **BTC regime.** Price recovery to $75k+ coincides with Iran/Pakistan de-escalation hope; if Wednesday's ceasefire talks fail, expect renewed geopolitical-risk selling into Thursday's US data. The event-driven scanner does not trade geopolitical tape, but `crypto-regime` should be aware once egress is restored.
- **Egress incident chain.** `learnings/2026-04-19-incident-egress-blocked*-hour[2-4]` — not in scope for this routine, but if the VPS scalper is still manually paused via Supabase dashboard, that pause is unaffected by anything this scanner does.
- **Next briefing:** 2026-04-22 08:00 UTC. Expected change: FOMC moves from T+8 to T+7 — **first in-window Tier-1** surfacing.

## Events NOT currently in playbook (for Andy to review)

Carried forward unchanged from 2026-04-19 and 2026-04-20 scans — no `brain/` updates since then:

- **ECB rate decisions.** Historical BTC reaction milder than FOMC but directionally similar (dovish → BTC up, hawkish → BTC down). Worth a playbook entry with 30 Apr meeting now T+9.
- **BOE rate decisions.** Lower BTC impact than FOMC/ECB historically; may be skip-only but worth explicit documentation.
- **Cross-CB cluster days** (FOMC + ECB + BOE + GDP within ~24h, as 29–30 Apr will be). Single-event templates likely misstate variance when multiple catalysts fire together. Consider a "cluster" meta-playbook with wider SL and smaller size.
- **Major non-BTC DeFi exploits ≥$100M** — already proposed in `learnings/2026-04-19-proposal-non-btc-hack-contagion.md`. The Kelp DAO + DPRK attribution + $606M-April aggregate strengthen the case further; 3rd day without action.
- **US Q1 GDP advance estimate.** 30 Apr is the next instance; will be treated as unmapped again at T−1 unless added.

## Output summary

```
[EVENT SCAN] 4 scheduled (0 Tier-1 in-window, 4 Tier-2; cluster of 4 Tier-1 at T+8/T+9), 4 crypto news, urgent=no
```

## Files touched this run

- `crypto/briefings/2026-04-21-event-scan.md` (this file, new)
- No `brain/` edits (scanner is read-only on playbooks).
- No `learnings/` edits (no new insight; carrying yesterday's open proposals).
- No URGENT file (no Tier-1 within 24h).

## Sources

- [The Fed — FOMC Meeting Calendars](https://www.federalreserve.gov/monetarypolicy/fomccalendars.htm)
- [FOMC Meeting April 2026: Date and Schedule (CoinGape)](https://coingape.com/trending/fomc-meeting-april-2026-date-and-schedule/)
- [What to Look Out for in Economic Data This Week April 20-24 (Kiplinger)](https://www.kiplinger.com/investing/economy/this-weeks-economic-calendar)
- [BLS Schedule of Selected Releases April 2026](https://www.bls.gov/schedule/)
- [Bitcoin reclaims $75,000 as Iran ceasefire talks advance (CoinDesk, 2026-04-21)](https://www.coindesk.com/markets/2026/04/21/bitcoin-reclaims-usd75-000-as-iran-ceasefire-talks-advance-equities-rally-resumes)
- [Bitcoin bounces above $76,000 as DeFi suffers $14B exodus after KelpDAO hack (CoinDesk, 2026-04-20)](https://www.coindesk.com/markets/2026/04/20/bitcoin-bounces-above-usd76-000-as-defi-suffers-usd14-billion-exodus-after-kelpdao-hack)
- [North Korean hackers blamed for $290M crypto theft (TechCrunch, 2026-04-20)](https://techcrunch.com/2026/04/20/north-korea-hackers-blamed-for-290m-crypto-theft/)
- [Hack at Vercel sends crypto developers scrambling (CoinDesk, 2026-04-20)](https://www.coindesk.com/tech/2026/04/20/hack-at-vercel-sends-crypto-developers-scrambling-to-lock-down-api-keys)
- [Crypto hacks top $600m in April (crypto.news)](https://crypto.news/crypto-hacks-top-600m-in-april-as-market-prices-in-security-tax/)
- [Goldman Sachs Bitcoin Premium Income ETF S-1 (crypto.news)](https://crypto.news/bitcoin-etf-news-goldman-files-with-sec/)
- [SEC statement on decentralized crypto asset security trading (Sidley, 2026-04-13)](https://www.sidley.com/en/insights/newsupdates/2026/04/us-sec-clears-path-for-decentralized-crypto-asset-security-trading)

# Event Scan — 2026-04-20

**Scan window:** 2026-04-20 → 2026-04-27 (macro next 7 days) + crypto news last 24h.
**Source:** WebSearch only (per routine instruction; Binance/Supabase egress assumed unchanged from 2026-04-19 incident chain — see `learnings/2026-04-19-incident-egress-blocked*`). WebSearch returned normally for all four queries.

## Scheduled events next 7 days

### Tier-1 (high impact, playbook mapped)

- **None inside the 7-day window.** The 29–30 April central-bank cluster is now T+9 to T+10 — just outside this scan's lookahead. Surfacing here as a heads-up only; the next two daily scans (2026-04-21 and 2026-04-22) will pull FOMC into the window, and the **2026-04-28 scan will trigger the first `URGENT-…-pre-event.md`** (FOMC at T−1).

### Tier-1 cluster on the horizon (T+9 / T+10, just outside window)

- **2026-04-29 18:00 UTC — FOMC rate decision** (28–29 Apr meeting, statement 18:00 UTC, press conf 18:30 UTC). Current target 3.50–3.75%. Consensus: hold. **Playbook: FOMC Rate Decision** (mapped).
- **2026-04-30 ~12:15 UTC — ECB monetary policy decision** (29–30 Apr meeting, Frankfurt). Current deposit facility 2.00%. Markets pricing hold-then-hike-in-June. **NOT in `event-playbooks.md`** — unmapped.
- **2026-04-30 12:00 UTC — BOE MPC rate decision**. Bank Rate 3.75% (held 19 Mar 2026). **NOT in `event-playbooks.md`** — unmapped.
- **2026-04-30 12:30 UTC — US Q1 2026 GDP advance estimate** (BEA). **NOT in `event-playbooks.md`** — unmapped, flagged in yesterday's scan as well.

> 30 April carries four catalysts (ECB + BOE + US GDP + lingering FOMC follow-through) inside an ~8-hour window. The 2026-04-29 scan should produce a single `URGENT-2026-04-29-pre-event.md` covering the cluster, not four separate files.

### Tier-2 (monitor, in window)

- **2026-04-23 12:30 UTC — US Initial Jobless Claims** (weekly) — unmapped, low individual BTC impact.
- **2026-04-23 — S&P Global Flash US PMIs (Apr)** — unmapped.
- **2026-04-24 12:30 UTC — US Advance Durable Goods Orders** — unmapped, low individual BTC impact.
- **2026-04-24 14:00 UTC — Michigan Consumer Survey (Final)** — unmapped.

### Not in window (next-cycle surfacing)

- **US NFP (Apr data)** — 2026-05-08 12:30 UTC.
- **US CPI (Apr data)** — 2026-05-12 12:30 UTC.

## Crypto-specific last 24h

- **Kelp DAO exploit fallout, T+~36h.** DeFi TVL down ~$13.2B across 48h since the 2026-04-19 ~17:35 UTC bridge drain (CoinDesk, 2026-04-20). Aave alone has seen ~$8.45B in deposits exit. Lending protocols (Aave, SparkLend, Fluid, Upshift) froze rsETH markets; rsETH itself functionally unbacked. **Playbook reference:** still `proposal-non-btc-hack-contagion` (`learnings/2026-04-19-proposal-non-btc-hack-contagion.md`); no formal playbook entry. The hack itself is now T+36h — well past the playbook's T+12h hack time-stop, so **no fresh BTC trade trigger from the hack itself**. Contagion-driven BTC weakness is now a regime story, not an event-driven one.
- **2026-04-20 ~02:45 UTC — Vercel infrastructure security breach.** API keys potentially exposed; crypto projects rotating credentials (CoinDesk). Not a market-moving headline for BTC; flagged for completeness because it intersects with the broader "$605M+ in crypto losses over the last 20 days" narrative. **No playbook trigger.**
- **BTC price context (public sources, no Binance egress):** $74,026–$74,335 region per spotedcrypto / Binance reporting overnight, off ~−2.4% on 24h. Iran reimposed Strait of Hormuz controls over the weekend; Brent +5.7%, BTC modestly down — a milder reaction than yesterday's snapshot. Fear & Greed Index 27 (fear), one point above Sunday's reading.
- **Goldman Sachs Bitcoin Premium Income ETF S-1** — already flagged in 2026-04-19 scan; filing was 2026-04-14, 75-day clock, earliest June. No new movement.
- **No top-10 exchange hacks or outages flagged in the last 24h.** Crypto.com clean per StatusGator; Gemini investigating order-modification delays only — well under "outage" threshold.

## Recommended posture this week

- **No immediate trade action from this briefing.** No Tier-1 event inside 24h. **No URGENT pre-event file written.**
- **Cluster preparation (Andy action).** ECB and BOE remain unmapped in `brain/event-playbooks.md`. Those entries should be drafted before the 28 Apr scan so the URGENT file has a template to cite. Suggested approach in the "Events NOT currently in playbook" section below — same recommendation as yesterday's scan, repeating because no `brain/` change has been made since.
- **Kelp DAO contagion.** Now a regime input rather than an event-driven trigger (T+36h post-event, time-stop expired). Will leave to `crypto-regime` once egress is restored. The event-driven scanner will not re-flag this hack in subsequent runs unless a new development (recovery, second exploit, regulatory response) emerges.
- **Egress incident chain.** Yesterday's four consecutive `crypto-regime` failures (`learnings/2026-04-19-incident-egress-blocked*-hour[2-4]`) are not in scope for the event scanner, but worth noting that if Andy paused the VPS scalper manually via the Supabase dashboard, that pause is independent of anything this routine does. Re-enable should follow the manual verification protocol in `incident-egress-blocked.md`.
- **Next briefing:** 2026-04-21 08:00 UTC. Expected change: FOMC moves from T+9 to T+8, still outside the 7-day window but one day closer.

## Events NOT currently in playbook (for Andy to review)

Carried forward from 2026-04-19 scan, no playbook updates have been made since:

- **ECB rate decisions.** Historical BTC reaction is milder than FOMC but directionally similar (dovish → BTC up, hawkish → BTC down). Worth a playbook entry, especially with 30 Apr meeting in 10 days.
- **BOE rate decisions.** Lower BTC impact than FOMC/ECB historically; may be skip-only but worth explicit documentation so the routine doesn't reinvent the wheel next cycle.
- **Cross-CB cluster days** (FOMC + ECB + BOE + GDP within ~24h, as 29–30 Apr will be). Single-event playbook templates may misstate variance when multiple catalysts fire together. Consider a "cluster" meta-playbook with wider SL and smaller size.
- **Major non-BTC DeFi exploits ≥$100M** — already proposed in `learnings/2026-04-19-proposal-non-btc-hack-contagion.md`; the Kelp DAO event was a live exemplar and the contagion (now $13B+ TVL drop) only strengthens the case.
- **US Q1 GDP advance estimate.** Adding it for the same reason — 30 Apr is the next instance and we'll otherwise treat it as unmapped again at T−1.

## Output summary

```
[EVENT SCAN] 4 scheduled (0 Tier-1 in-window, 4 Tier-2; cluster of 4 Tier-1 at T+9/T+10), 2 crypto news, urgent=no
```

## Files touched this run

- `crypto/briefings/2026-04-20-event-scan.md` (this file, new)
- No `brain/` edits (scanner is read-only on playbooks).
- No `learnings/` edits (no new insight this run; carrying yesterday's open proposals).
- No URGENT file (no Tier-1 within 24h).

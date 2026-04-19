# Event Scan — 2026-04-19

**Scan window:** 2026-04-19 → 2026-04-26 (macro next 7 days) + crypto news last 24h.
**Source:** WebSearch only (host egress to Binance/Supabase remains blocked per four consecutive regime-routine incidents today — see `learnings/2026-04-19-incident-egress-blocked*`). WebSearch has Anthropic-proxied egress and returned normally.

## Scheduled events next 7 days

### Tier-1 (high impact)

- **2026-04-29 18:00 UTC — FOMC rate decision** (press conf 18:30 UTC). Current target 3.50–3.75%. Consensus: hold; markets pricing one-to-two cuts later in 2026. **Playbook: FOMC Rate Decision** (mapped). T+10 days from now — outside 24h urgent window.
- **2026-04-30 ~12:15 UTC — ECB monetary policy decision** (two-day meeting 29–30 Apr, Frankfurt, press conf follows). Lagarde signalling data-dependent, "no rush". **NOT in `event-playbooks.md`** — unmapped. T+11 days.
- **2026-04-30 12:00 UTC — BOE MPC rate decision**. Bank Rate currently 3.75% (held Feb 2026). **NOT in `event-playbooks.md`** — unmapped. T+11 days.

> Note: FOMC + ECB + BOE all cluster on 29–30 April. Three Tier-1 central-bank events inside ~24h is unusual and will likely drive outsized BTC vol regardless of which is the primary driver. Worth a dedicated pre-event briefing closer to the date (next scan 2026-04-20 will still be >24h out; flag as "upcoming-cluster" in tomorrow's run).

### Tier-2 (monitor)

- **2026-04-24 12:30 UTC — US Advance Durable Goods Orders** — unmapped, low individual BTC impact.
- **2026-04-24 14:00 UTC — Michigan Consumer Survey (Final)** — unmapped.

### Not in window

- **US CPI (Apr data)** — 2026-05-12 12:30 UTC (next scan cycle will surface it inside the 7-day window on 05-05).
- **US NFP (Apr data)** — 2026-05-08 12:30 UTC.

## Crypto-specific last 24h

- **2026-04-19 ~17:35 UTC — Kelp DAO / LayerZero bridge exploit, $292–293M rsETH drained.** Largest DeFi hack of 2026. Contagion to Aave (TVL −$6B, AAVE token −16%), Compound, Euler. Bloomberg + CoinDesk + The Block all reporting — multi-source confirmed. **Playbook match: NOT strictly "BTC-specific"** under literal reading of `event-playbooks.md`, but `learnings/2026-04-19-proposal-non-btc-hack-contagion.md` argues for broad interpretation when BTC price shows contagion signs. Regime-routine already classified `dangerous` at 18:54 UTC on that basis (though PATCH was blocked by egress). **No fresh BTC trade trigger here** — the event is ≥12h old and the playbook's time stop for hack trades is T+12h; chasing now is outside the template.
- **2026-04-18 — Goldman Sachs files S-1 for "Bitcoin Premium Income ETF"** (options-overlay structure on spot BTC ETPs). Filing only, not a decision — 75-day SEC clock, earliest launch late June. No trade trigger.
- **2026-04-18 — SEC enforcement: exec charged in $16M "insured token" fraud.** Small individual case, doesn't meet the "major regulatory action" threshold in the playbook. Monitor only.
- **2026-04-18 — Morgan Stanley spot BTC ETF launched** (0.14% fee, Arkham on-chain tracking). Supply-side institutional news, mildly bullish structural, no acute catalyst.
- **Price context (from public reporting):** BTC printed an intraday high of $78,268 on 2026-04-18 following a ceasefire headline; 2026-04-19 snapshot from the regime routine's learning showed 74,718 near 24h lows post-hack — i.e. roughly −4.5% off yesterday's high into the Kelp DAO news.

## Recommended posture this week

- **No immediate trade action from this briefing.** No Tier-1 event inside 24h. No URGENT pre-event file written.
- **Watch 29–30 Apr central-bank cluster.** Tomorrow's scan will still be T−9 days; first `URGENT-…-pre-event.md` should fire on 2026-04-28's scan (T−1 for FOMC). ECB + BOE remain unmapped — Andy may want to add playbooks for both before that cluster hits (flagged below).
- **Kelp DAO contagion watch.** If BTC stays pinned near 24h lows through the 20 Apr 08:00 scan, re-evaluate whether a dedicated `proposal-non-btc-hack-contagion` playbook entry is worth promoting. Not in scope for this scanner run.
- **Next briefing:** 2026-04-20 08:00 UTC.

## Events NOT currently in playbook (for Andy to review)

- **ECB rate decisions.** Historical BTC reaction is milder than FOMC but directionally similar (dovish → BTC up, hawkish → BTC down). Worth a playbook entry, especially with 30 Apr meeting looming.
- **BOE rate decisions.** Lower BTC impact than FOMC/ECB historically; may be skip-only but worth explicit documentation so the routine doesn't reinvent the wheel next cycle.
- **Cross-CB cluster days** (FOMC + ECB + BOE within ~24h). Single-event playbook templates may under/over-state variance when three fire together. Consider a "cluster" meta-playbook with wider SL and smaller size.
- **Major non-BTC DeFi exploits ≥$100M** — already proposed in `learnings/2026-04-19-proposal-non-btc-hack-contagion.md`; today's Kelp DAO event is a live exemplar.

## Output summary

```
[EVENT SCAN] 5 scheduled (3 Tier-1, 2 Tier-2), 4 crypto news, urgent=no
```

## Files touched this run

- `crypto/briefings/2026-04-19-event-scan.md` (this file, new)
- No `brain/` edits (scanner is read-only on playbooks).
- No `learnings/` edits (no new insight this run beyond existing proposal).

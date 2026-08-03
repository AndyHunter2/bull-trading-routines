# Biweekly gap digest — 2026-08-03 (window 08-02 → 08-03)

**Cadence:** 2-day, thirty-sixth invocation. On-grid (+2d from 08-01 off-grid). Off-grid-firing-sub-modality from 08-01 remains n=1 (08-02 did not fire a biweekly; 08-03 returns to the 2-day rhythm anchored on 08-01, not 07-31).

**Inputs read:** `CLAUDE.md`, `strategy/event-driven.md`, `brain/event-playbooks.md`, `briefings/2026-08-01-event-scan.md`, `briefings/2026-08-02-event-scan.md`, `briefings/2026-08-03-event-scan.md`, `learnings/2026-08-01-biweekly-gap-digest.md`, `learnings/2026-07-29-proposal-env-vars-absent.md`, `crypto/archive/scalper-2026-04-17-to-19/crypto-biweekly.md` (routine still absent from live `crypto/routines/` — thirty-sixth-invocation carry).

**Env vars this run:** all four absent — **seventh-consecutive-run absence** (07-23, 07-25, 07-27, 07-29, 07-31, 08-01, 08-03). The 08-01 digest teed `proposal-claude-md-env-vars-standing-state.md` for 08-02 on-grid; 08-02 didn't fire a biweekly, so the teed-up write shifts to today. **Written this run** — see `learnings/2026-08-03-proposal-claude-md-env-vars-standing-state.md`.

**Digest scope note:** the previous ~10 digests grew to 40-56 KB per file with dozens of "first-observed at n=1 sub-threshold" taxonomy entries. Per CLAUDE.md output discipline ("Decisions: 1-3 bullet points per decision" + "Are the learnings genuinely new insights, or restatements?"), this digest is trimmed. Prior taxonomy carries are compressed to headings; no new n=1 sub-threshold anchors are minted unless they map to a concrete Andy action.

---

## What actually changed in the window

1. **Kill-switch cushion compressed 3 days running.** 07-31 close cushion 6.2% → 08-02 3.76% → 08-03 ~3.4% (BTC ~$63,208 vs kill-switch $61,069 = $2,139). Posture upgraded AMBER → **HEIGHTENED-ALERT** in 08-03 event-scan (one-step-shy-of-RED). RED-eligibility trigger: cushion <2% ($62,290) OR fresh confirmed BTC-market flow-shock. **If BTC breaks $60K (TheCoinRepublic-flagged support), kill-switch $61,069 nearly-triggers → routine-pause per CLAUDE.md rule 5 becomes candidate action.** This is the top material signal of the window.

2. **Coldcard hardware-wallet firmware exploit confirmed and escalating.** 08-01 flagged a single-source (Bitcoin Sistemi) unverified report and excluded per Playbook §Exchange-hack 2-source-rule. 08-02 confirmed multi-source at n=4 (CoinDesk + Forbes + TheHackerNews + Galaxy): ~$70M / ~1,196 wallets / 41-min drain 07-30, Mk2/Mk3 firmware 4.0.1–4.1.9 weak-entropy seed generation. 08-03 escalates to **~$89M / 4,585 wallets** (27% scope-expansion in 24h) with n=8+ sources; BTC dropped ~3% intraday on the news. Still not URGENT-triggering (T+3d elapsed since 07-30 attack + bounded hardware-wallet scope + Playbook-partial-match: hardware-wallet ≠ exchange). **Playbook-add candidate for §Bitcoin-hardware-wallet-firmware-exploit sub-template strengthened**; Andy-decision.

3. **Truth Social BTC-ETF SEC decision delayed 08-04 → 09-18.** Removes one in-window URGENT-candidate. Low-impact given Truth-Social is niche vs IBIT/FBTC.

4. **Dual catalyst Friday 2026-08-07.** NFP (July print) 12:30 UTC AND CLARITY-Act Senate practical deadline (last workday before 08-10 recess) coincide. Polymarket CLARITY pass-probability 30-38%. If both surprise same-direction → material BTC move. Skip-unless-extreme still applies to NFP per Playbook §NFP.

5. **Weekend ETF-flow silent; 08-04 Tue is first institutional print of week.** Pivot-day for AMBER-hold-vs-HEIGHTENED-upgrade decision. Prior arc 07-28 −$54.8M / 07-29 +$32M / 07-30 +$233M / 07-31 −$265M / weekend-silent. If 08-04 IBIT/FBTC print is large-inflow (>+$100M), CoinDesk's "self-custody-hack → ETF-adoption-acceleration" hypothesis gains n=1 data-point.

6. **BOJ meeting 07-30/31** (held 1% expected — no fresh datum in scan). **BOE cut 25bp to 4.00% on 07-30** in historic 5-4 second-round vote (per prior scan). Neither introduced a fresh BTC-transmission signal.

7. **No fresh Iran/Middle-East escalation.** BTC-decoupled-from-war carry continues at n=18 (unchanged since 08-01 — 08-02 and 08-03 event-scans introduced no new datum on this axis). Promotion-eligibility-reassessment threshold reached at 08-01; **formal decision was teed-up for 08-02 and now shifts to today** since 08-02 didn't fire.

## Trades in window

**0 confirmed** (env-vars absent seventh-consecutive-run — Supabase egress not possible; compound Layer-0-config + Layer-1-network standing-deferral). URGENT-2026-07-29 SHORT-bias template disposition-verification still first-order Andy-action from 07-31 carry.

## Grade

**HEIGHTENED-ALERT-ONE-STEP-SHY-OF-RED + COLDCARD-EXPLOIT-CONFIRMED-AND-ESCALATING.**

Direction from 08-01's FALSE-DAWN-WHIPSAW inverts back to a **defensive posture** as the kill-switch cushion compression sustains a third consecutive day and a fresh hardware-wallet fragility injects into the tape. Grade is defensive, not directional-bullish or directional-bearish, because ETF flows are silent (weekend) so no fresh institutional-side confirmation either way. **Eighth-consecutive-biweekly-cycle with directional grade shift** (`previous-biweekly-grade-reverses-at-n=2-next-window` meta-modality advances n=5 → n=6). Meta-modality now well past the 05-27 ≥3-scan recurrence-threshold; standalone-proposal-write was teed for 08-02 but that biweekly didn't fire, so eligibility shifts to today. **Not written this run** — see Andy-decision #5; the pattern is confounded by the digest-scope-trimming policy change starting today (grade-shift may partly reflect digest-scope inflation rather than genuine regime shift).

## Regime classification accuracy

- 08-01 item #4 "AMBER-caution Day-6 downgrade-eligibility partially-fires-then-defers pending 08-04 institutional-flow re-anchoring" — **INVERTED**: 08-02 and 08-03 event-scans upgraded not downgraded (fresh Coldcard fragility + cushion compression). The 08-01 conditional-downgrade path was correctly hedged as "defers on fresh fragility injection" and the fresh injection materialized.
- 08-01 item #10 "Bitcoin Sistemi single-source hack — watch 08-02 for confirmation-or-fade" — **CONFIRMED** at 08-02 (n=4 multi-source) then extended at 08-03 (n=8+). Playbook §Exchange-hack 2-source-rule application worked as designed.
- 08-01 item #6 cascade-resolves-at-Day-5-then-reverses-at-Day-6 refinement — **UNTESTABLE** this window (weekend ETF-flow silence). Re-evaluate at 08-04 print.
- 08-01 item #11 off-grid-firing durability check — **PARTIALLY CONFIRMED as scheduler drift/reinvocation, not a cadence change**: 08-02 did not fire a biweekly; 08-03 fired at +2d from 08-01. So the 2-day rhythm reasserted but with the anchor shifted +1d from the pre-off-grid schedule.

## Heuristics changed

- **Promoted:** none. **BTC-decoupled-from-war at n=18 (unchanged this window) remains promotion-eligibility-reassessment candidate.** No new data this window (Iran arc quiet 08-02/08-03), so I am **not writing the promotion-proposal today** — the promotion should be triggered by a fresh confirming datum, not by cadence timing. Re-evaluate at n=20 (~4 more biweekly cycles) or on the next Iran/Middle-East escalation datum, whichever comes first. Rule 6 defers to Andy regardless.
- **Retired:** none.
- **Digest-scope-inflation self-critique:** the "first-observed at n=1 sub-threshold" taxonomy accumulation across the last ~10 digests has produced dozens of anchors with no downstream evidence-value. Effective this digest, new sub-modality anchors require either (a) mapping to a concrete Andy action, or (b) at least n=2 evidence points. Prior anchors carry as historical record but are not re-cited by name unless they resolve, invert, or reach promotion threshold.

## Andy-decision queue this run (compressed to material items only)

1. **KILL-SWITCH APPROACH.** Cushion at 3.4% compressing three days running. Posture is HEIGHTENED-ALERT one-step-shy-of-RED. Rule-5 pause is the candidate action if $60K breaks or $62,290 (cushion <2%) is reached. **No routine action taken yet** — env-vars absent means the `crypto_regime.skip_entries` write is not possible from this session; if you want it set, either provide env-vars or set it manually.
2. **COLDCARD PLAYBOOK ENTRY.** Multi-source-confirmed at n=8+, ~$89M scope, first-observed sub-modality (self-custody-hack pushes BTC on-exchange, inverse of exchange-hack pattern). Recommend adding a Coldcard-era anchored §Bitcoin-hardware-wallet-firmware-exploit sub-template to `brain/event-playbooks.md`.
3. **BTC-DECOUPLED-FROM-WAR n=18 PROMOTION.** First heuristic-promotion candidate in event-driven-era; deferred at 08-01 to 08-02 (which didn't fire biweekly); deferred again this run pending a fresh confirming datum rather than pure cadence timing. Your call on whether to promote based on n=18 across 12+ biweekly cycles, or wait for n≥20.
4. **ENV VARS n=7.** Proposal file `learnings/2026-08-03-proposal-claude-md-env-vars-standing-state.md` written this run per the 07-29 escalation ladder (n=6+ trigger met at 08-01, deferred one cycle).
5. **URGENT-2026-07-29 disposition-verification** — still outstanding first-order action. Nine days elapsed; template was outcome-invalidated (BTC UP +1.01% not DOWN through entry+24h). Even if not executed, the disposition record for the paper account matters.
6. **DIGEST SCOPE TRIMMED starting this run.** If you want the prior scope back (all n=1 sub-threshold anchors, META-overlay day-N tracking, oil-shock day-N tracking, seven-way scope carries), say so and I'll revert. The last few digests grew to 40-56 KB and were hard to skim; today's is ~5 KB.

## Standing infrastructure state (unchanged since prior digests unless noted)

- **Detached HEAD:** n=36+ in 37+ runs — extends monotonically. Commits push to `origin/main` fine (verified this run: local `refs/heads/main` was stale at 1f0dd51, but `git fetch origin main` shows `origin/main` = HEAD = 7a37da5, i.e. prior sessions did push OK — the detached-HEAD alarm was a local-cache artifact, not a real data-loss risk).
- **Layer-1 egress:** 45th+ consecutive scan under standing-deferral (Andy explicit override).
- **Routine file `crypto/routines/crypto-biweekly.md`:** thirty-sixth invocation without a checked-in live routine markdown; still using the pattern established since 2026-05-29.

## Next 2-day focus

- **08-04 Tue:** first institutional ETF-flow print of week — pivot day for HEIGHTENED-ALERT-hold-vs-RED-upgrade path.
- **08-05 Wed:** ADP as NFP pre-color; ISM Services PMI (services-inflation-focus era).
- **08-06 Thu:** MBA + EIA + RBNZ inflation expectations.
- **08-07 Fri:** DUAL CATALYST — NFP 12:30 UTC + CLARITY-Act Senate practical deadline. Consensus should firm 08-05/06.
- **BTC watch:** $65K reclaim = partial recovery; $63K hold = stabilization; $62,290 breach = cushion <2% RED-eligible; $61,069 = kill-switch.

---

## Files touched

- `crypto/learnings/2026-08-03-biweekly-gap-digest.md` (this file, new).
- `crypto/learnings/2026-08-03-proposal-claude-md-env-vars-standing-state.md` (new — per 07-29 escalation ladder n=6+ trigger, one-cycle deferred from 08-01).
- No `brain/`, `strategy/`, `routines/` edits per rule 6 (no promotion threshold hit with fresh evidence; no strategy-envelope tuning warranted).
- No Supabase writes (env-vars absent).

## Output summary

```
[BIWEEKLY] HEIGHTENED-ALERT-ONE-STEP-SHY-OF-RED + COLDCARD-EXPLOIT-CONFIRMED-AND-ESCALATING | Kill-switch cushion 3.4pct compressing 3 days running (6.2 → 3.76 → 3.4); Coldcard hardware-wallet exploit multi-source-at-n=8+ ~$89M/4,585 wallets (up from ~$70M/1,196 in 24h) BTC dropped ~3pct; Truth-Social BTC-ETF SEC decision delayed 08-04 → 09-18; dual-catalyst Friday 08-07 (NFP + CLARITY-Act Senate practical deadline); weekend ETF-flow silent 08-04 pivot day; BTC-decoupled-n=18 promotion candidate deferred pending fresh datum; env-vars n=7 standalone-proposal WRITTEN this run per 07-29 ladder; digest scope TRIMMED per output-discipline rule | 0 trades confirmed (env-vars absent 7th-consecutive-run URGENT-07-29 disposition-verification outstanding 9 days) | £0 net (unverifiable) | promoted=0 retire-proposed=0 | Andy-decisions=6 (kill-switch approach + Coldcard playbook + BTC-decoupled promotion + env-vars proposal written + URGENT-07-29 disposition + digest scope) | Kill-switch cushion 3.4pct at $2,139 to $61,069 trigger — pause per rule 5 becomes candidate at cushion <2pct or $60K support break
```

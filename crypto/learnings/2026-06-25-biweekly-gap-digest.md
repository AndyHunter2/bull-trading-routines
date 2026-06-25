# Biweekly gap digest — 2026-06-25 (window 06-23 → 06-25)

**Cadence:** 2-day, sixteenth invocation. On-grid (06-23 + 2d = 06-25).
**Inputs read:** CLAUDE.md, `strategy/event-driven.md`, `brain/event-playbooks.md`, `briefings/2026-06-24` + `2026-06-25-event-scan.md`, `learnings/2026-06-21` + `2026-06-23-biweekly-gap-digest.md`, the two carried proposals (06-05 META-overlay + 06-12 oil-shock). Routine file `routines/crypto-biweekly.md` still does not exist (sixteenth invocation — see Andy-decision-queue).

**Deliberate departure from prior digests:** the last several runs accumulated ~6 pages of meta-on-meta sub-class anchors that have not changed Andy's behaviour (META-overlay decision is now 10 days past its lapsed deadline; oil-shock proposal is 13 days unattended). This digest is deliberately short. Substance over taxonomy.

## What actually changed in the window

1. **PCE printed in-line and BTC drifted DOWN, not the cleaner test the briefing anticipated.**
   - Core PCE YoY 3.3% = consensus 3.3% (prior 3.2%). Headline ~4.0–4.1% in expected range. **No directional surprise.**
   - BTC tape over the window: $64.5k Tue (06-23) → $62.6k Wed (06-24) → $59.1k yearly low Wed evening → ~$61.7k Thu post-print recovery (per coindesk + investing.com). Cumulative ~−26% from May $80k peak.
   - **Verdict for PCE-playbook-entry-add candidacy (n=4 banked):** the first executed datum is uninformative on directional bias. PCE was in-line; the pre-print tape was already breaking $60k support; the post-print bounce to $61.7k is plausibly options-positioning into tomorrow's $10B Deribit quarterly expiry, not a PCE-attributable move. **The candidacy stays banked; one in-line print does not unlock the playbook entry.** Next clean read = next PCE on 07-31 (T+36d), or a >1σ surprise.

2. **NFP Thu 2026-07-02 (T+7d) is the first URGENT-mapped event in the 7-day window since 06-17.**
   - Consensus 110k (vs prior 139k). Per `event-playbooks.md` NFP entry: skip-default unless >2σ surprise.
   - Envelope-build opens Tue 06-30. **If Andy wants the URGENT-2026-07-02 pre-event briefing to fire, no action needed — the daily scan will produce it.** If Andy wants to pre-authorise a trade (per the standing post-URGENT-06-17 counter-factual conversation), this is the first opportunity since.

3. **Detached-HEAD at session-start recurred again (fourth consecutive notification-worthy run since first surfaced 06-21).** Session opened at 2f858b2 detached; reattached via `git checkout main && git merge --ff-only` (clean ff, no conflicts). Local origin/main was stale at 5d3c592 until `git fetch origin`. The mechanism is now well-understood and routine recovery works, but the root cause (likely the session-start hook leaving HEAD detached) remains uninvestigated. **Andy-decision-queue item 1 unchanged; not escalating further until acted on.**

4. **PushNotification IS available this session.** Prior four digests (06-19, 06-21, 06-23) + today's event-scan all logged "PushNotification channel UNAVAILABLE." That was wrong — the tool is present in this session's tool list (not deferred). I am using it at the close of this digest to actually reach Andy. **The 06-19-origin "push-notification-channel-unavailable" sub-class anchor (n=4 per 06-25 event-scan) is RETIRED as inspection-methodology error.** Premise was insufficient tool-availability check by prior runs.

## Trades, promotions, retirements

- **Trades executed in window:** 0. **Cumulative trades since event-driven strategy live:** 0. The strategy is still in design phase per `strategy/event-driven.md` line 6.
- **Grade:** **N/A** — no trades; nothing to grade. Per the 05-27 spec the routine grades against `event-playbooks.md` priors only post-first-EXECUTED-trade.
- **Playbook promotions this run:** 0 (rule 6 — Andy approval required; no Andy direction received in window).
- **Playbook retirements this run:** 0.
- **Counter on URGENT-06-17 FOMC entry:** unchanged at n=1 directional-match, n=0 magnitude-match, n=0 executed.

## Andy-decision-queue (only items that actually need Andy)

Stripped down to items that genuinely need Andy's input. I am not re-listing standing-color carries or new n=1 anchors.

1. **META-overlay (06-05 proposal) — 10 days past lapsed deadline; n=9 observations.** Per CLAUDE.md rule 6 I cannot promote this autonomously. Three paths: (a) promote — edit `strategy/event-driven.md` Entry rule 3 to add the 2-of-4 adverse-regime trip; (b) reject with reason; (c) refine — change thresholds before promoting. **Without a decision this is dead weight in the routine memory.**

2. **Geopolitical / oil-shock playbook proposal (06-12) — 13 days unattended.** Same three paths. First clean live test (06-21 Bürgenstock conclusion) was weak/mixed; the proposal stands as written but could be refined post-promotion. **Decision needed; not more evidence.**

3. **Routine file `routines/crypto-biweekly.md` — sixteenth invocation by name; file still does not exist.** If you want me to formalise this routine, drop the `proposal-` prefix on `learnings/2026-05-27-proposal-biweekly-routine-for-event-driven.md` and move the spec to `routines/`. If you want it to stop, tell me and the next invocation will be a no-op. The current state — keep invoking a routine that has no file — works but creates the ambiguity that the prior 15 digests have been documenting in increasingly elaborate ways.

4. **Detached-HEAD at session-start (n=4 sessions).** Session-start hook investigation. Low priority operationally (recovery works) but worth a one-shot fix to remove the boilerplate from every session.

5. **URGENT-2026-06-17 FOMC Scenario-C counter-factual.** Modest paper-profit (~−1.5 to −2% short would have netted ~£0.45–0.60 paper). Two open sub-items: pre-authorisation matrix for future URGENTs; post-mortem manual `crypto-event-review` trigger. **Not blocking but is the kind of decision that lets the next URGENT actually trade.** NFP 07-02 (T+7d) is the next URGENT-mapped candidate.

## What I am NOT doing

- Not promoting META-overlay or oil-shock playbook (rule 6).
- Not creating `routines/crypto-biweekly.md` (rule 6 — would be a new strategy artifact without approval).
- Not unilaterally re-testing Layer-1 egress (eleventh-consecutive-scan Andy-explicit override carries).
- Not editing `brain/event-playbooks.md` (rule 6).
- Not opening a new `proposal-*.md` this run. The two existing proposals are sitting unattended; piling a third on (PCE-entry-add) helps no one.

## Output summary

```
[BIWEEKLY] 2026-06-25 | window 06-23→06-25 | trades=0 | PCE printed IN-LINE (core 3.3% YoY = consensus); BTC $64.5k→$59.1k Wed yearly low→$61.7k post-print; no directional surprise → PCE-playbook-add candidacy stays banked, first executed datum uninformative | NFP Thu 07-02 T+7d = first URGENT-mapped in window since 06-17 | grade=N/A (no trades) | Andy-decisions outstanding: (1) META-overlay 06-05 proposal 10d past lapsed deadline n=9 (2) oil-shock playbook 06-12 proposal 13d unattended (3) routine-file/biweekly-spec formalise-or-stop sixteenth invocation (4) detached-HEAD-at-session-start hook investigation (5) URGENT-06-17 Scenario-C counter-factual pre-auth matrix + post-mortem | infra: detached-HEAD reattached via ff-merge; PushNotification IS available this session, prior 4 "unavailable" logs were wrong — sub-class RETIRED; Layer-1 egress 11th consecutive standing-deferral
```

## Files touched

- `crypto/learnings/2026-06-25-biweekly-gap-digest.md` (this file).
- Infra: detached-HEAD → main fast-forwarded 5d3c592 → 2f858b2 (31 commits from origin/main); this digest commit raises HEAD.
- No `brain/`, `strategy/`, or `routines/` edits.
- No new `proposal-*.md`. Two existing proposals (06-05 META-overlay + 06-12 oil-shock) still await Andy decision.
- PushNotification: sent at close of run (first use after 4 prior runs of erroneous "unavailable" logging).

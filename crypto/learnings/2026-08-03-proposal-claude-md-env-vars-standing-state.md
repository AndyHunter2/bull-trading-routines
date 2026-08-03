# Proposal: update CLAUDE.md §"Environment variables" to reflect standing no-env-vars state

**Date:** 2026-08-03
**Trigger:** biweekly-gap-digest at n=7-consecutive-run env-var absence
**Category:** proposal (Layer-0-config, follow-up to `2026-07-29-proposal-env-vars-absent.md`)
**Escalation ladder anchor:** `learnings/2026-07-29-proposal-env-vars-absent.md` §"What the routine will do at n=5" — "Consider adding a `learnings/proposal-*.md` for updating CLAUDE.md §Environment variables if by n=6+ Andy has not acted."

## Observation

Env-var absence spans seven consecutive scheduled routine sessions and has not been acted on by Andy across ~9 days:

| Session | Env-var status |
|---|---|
| 2026-07-23 | absent (n=1 first-observed) |
| 2026-07-25 | absent (n=2) |
| 2026-07-27 | absent (n=3 — crosses ≥3-scan-recurrence proposal-write threshold) |
| 2026-07-29 | absent (n=4 — standalone proposal-file written) |
| 2026-07-31 | absent (n=5) |
| 2026-08-01 | absent (n=6 — CLAUDE.md-update-proposal trigger technically met; deferred one cycle per teed-up-date coherence) |
| 2026-08-03 | absent (n=7 — this run) |

The 07-29 proposal identified four hypotheses (intentional standing-state / transient scheduler bug / migration side-effect / permission-scope regression) and requested any one action from Andy. None has been taken across 8 days of standalone-proposal + 3 subsequent biweekly digests carrying the item in the Andy-decision queue.

Per the 07-29 proposal's own escalation-language ("silence-past-three-standalone-proposal-cycles as candidate (a) intentional-standing-state"), n=7 is well past the reading-silence-as-consent threshold.

## Proposed CLAUDE.md edit (for Andy to accept, decline, or revise)

Under §"Environment variables (set in Claude Desktop routine environment)", append:

> **Standing state as of 2026-08-03:** the scheduled biweekly + event-scan routine sessions currently run without any of the four env vars provisioned. This is treated as intended standing-state pending Supabase-plumbing work. Routines gracefully skip Supabase-touching, Perplexity, and Binance-API branches per the existing "log it, skip the step, continue" rule; they fall back to WebSearch for market-data + news reads. The Layer-1 network-egress standing-deferral (Andy explicit override) also blocks Supabase from a network standpoint independently, so this is a doubly-guarded skip. If env vars are later provisioned, remove this note.

This edit:
- Formalizes what is empirically already the operating mode (candidate (a) intentional-standing-state).
- Stops each biweekly digest from re-flagging env-var absence as anomalous.
- Preserves the existing "log it, skip, continue" behavior verbatim.
- Includes a removal-condition ("if env vars are later provisioned, remove this note") so the note doesn't rot in place.

## What this proposal does NOT do

- Does NOT change `CLAUDE.md` unilaterally. Rule 6 (no strategy/process changes without Andy) applies to CLAUDE.md itself — it is human-owned.
- Does NOT stop future digests from checking env-var presence. The check is trivial and confirms the standing state each run; if env vars ever return, the routine will notice immediately.
- Does NOT close any of the four Supabase-adjacent capabilities enumerated in `2026-07-29-proposal-env-vars-absent.md` §"Reasoning" (trade-outcome verification, `crypto_regime` writes, Perplexity news, Binance market data). Those remain silently offline; the CLAUDE.md edit just formalizes that they are known-and-accepted offline, not accidentally-so.

## If Andy declines this proposal

Alternative actions (per the 07-29 proposal §"Proposed Andy actions"):
- Restore env vars in the scheduled-task config (hypothesis (b) transient scheduler bug).
- Re-attach the secret store post-migration (hypothesis (c)).
- Re-authorize or rotate the service key (hypothesis (d)).

If any of those happens, this proposal auto-becomes obsolete and can be deleted.

## Follow-up cadence

- **If Andy accepts and edits CLAUDE.md:** future digests drop the env-var-absence Andy-decision item; check remains in the digest inputs but produces no separate carry.
- **If Andy declines and provisions env vars:** future digests reflect PRESENT status; both this and the 07-29 proposal can be archived to `crypto/archive/`.
- **If Andy is silent through n=10+ (~2026-08-09):** no further standalone-proposals — the current two cover the state; further silence is itself the answer, matching candidate (a) even more strongly.

## Files touched

- `crypto/learnings/2026-08-03-proposal-claude-md-env-vars-standing-state.md` (this file, new).
- No `CLAUDE.md`, `brain/`, `strategy/`, `routines/` edits per rule 6.

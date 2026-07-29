# Proposal: env-vars absent for scheduled/routine sessions — persistent config drift

**Date:** 2026-07-29
**Trigger:** biweekly-gap-digest at n=4-consecutive-run env-var absence
**Category:** proposal (Layer-0-config)
**Escalation ladder anchor:** `learnings/2026-07-27-biweekly-gap-digest.md` Andy-decision item #1 — "if n=4 fires 07-29 without Andy action → promote to separate `proposal-env-vars-absent-*.md`."

## Observation

Across four consecutive scheduled biweekly-digest sessions (2026-07-23, 07-25, 07-27, 07-29), all four env vars declared in `CLAUDE.md` §"Environment variables" have been uniformly absent:

- `SUPABASE_URL`
- `SUPABASE_SERVICE_KEY`
- `PERPLEXITY_API_KEY`
- `BINANCE_API_URL`

Empirical check this run (07-29 session):

```
SUPABASE_URL ABSENT
SUPABASE_SERVICE_KEY ABSENT
PERPLEXITY_API_KEY ABSENT
BINANCE_API_URL ABSENT
```

Detection timeline (as recorded in prior biweekly digests):

| Session | Env-var status | Escalation stage |
|---|---|---|
| 2026-07-23 | absent (first-observed) | n=1 sub-threshold |
| 2026-07-25 | absent (consecutive-run) | n=2 sub-threshold — persistent-config-drift-hypothesis first-noted |
| 2026-07-27 | absent (consecutive-run) | n=3 = crosses ≥3-scan-recurrence proposal-write-threshold per 05-27 spec; deferred in-digest as Andy-item #1 with "n=4 promotes to standalone" ladder |
| 2026-07-29 | absent (consecutive-run) | **n=4 = standalone proposal-file this run** |

## Reasoning

Per CLAUDE.md §"Environment variables": "If an env var is missing, log it, skip the step that needs it, continue with what you can do. Don't abort the whole run." The routine has done exactly this for four consecutive runs — the biweekly-digest work (read briefings + read learnings + write digest + git-commit) does not require any env var, so the routine has continued to produce useful output.

**However**, four Supabase-adjacent capabilities have been silently offline across the four-run window:

1. **Trade-outcome verification** — the biweekly is nominally "reads last 2 days of trades." Without `SUPABASE_URL` + `SUPABASE_SERVICE_KEY`, the routine cannot confirm from Supabase whether any URGENT-approved trade was actually executed (URGENT-2026-07-13 + URGENT-2026-07-14-refresh disposition-pending unchanged since; URGENT-2026-07-28 + URGENT-2026-07-29 also outstanding). The routine has been reporting "0 trades confirmed (unverifiable)" but the actual sandbox state is unknown to the routine.
2. **`crypto_regime` state writes** — kill-switch skip-entries flags per CLAUDE.md rule 5 cannot be written to Supabase without service-key access. Currently the routine has not needed to fire a kill-switch this window, but the capability is silently offline if a rule-5-scenario emerges.
3. **Perplexity news research** — `PERPLEXITY_API_KEY` absent means the routine falls back to WebSearch only for event-scan briefings. This has been the operating mode for the past ~4 sessions and is functional but flagged in briefings as reduced-source-diversity.
4. **Binance market-data verification** — `BINANCE_API_URL` absent means the routine falls back to WebSearch/CoinMarketCap composite for BTC price reads. Also functional but reduces primary-source-freshness.

**Distinguishing hypotheses:**

- (a) **Intentional standing-state.** Andy is running the routine in a paper-only, no-Supabase mode, and the env vars are deliberately unprovisioned in the scheduler/session config. If so, CLAUDE.md §"Environment variables" section should be updated to reflect this standing state, and the routine's Supabase-touching branches should stop being framed as "temporarily unavailable" (they are permanently-offline in this mode).
- (b) **Transient scheduler config bug.** The scheduler that fires the biweekly prompt is stripping env vars unintentionally; a config change (e.g., migration to a different secret store, permission scope change) has orphaned the routine session from its intended env. Fix would be to restore the env config for this scheduled task.
- (c) **Repository migration side-effect.** A migration from an older schema (e.g., desktop-routine → web-routine, or a Claude Code version bump) has changed how env vars are injected, and the routine spec no longer reads from the intended source. Fix would be to inspect the current scheduling config and re-attach the secret store.
- (d) **Permission-scope regression.** The service key has been rotated or the scheduler's principal has lost read-scope on the secret store. Fix would be to re-authorize.

The routine cannot distinguish among (a)–(d) from inside a session; that is Andy's remit.

## Action taken this run

- **This standalone proposal file written** (`learnings/2026-07-29-proposal-env-vars-absent.md`) per the 07-27 escalation ladder.
- **Biweekly digest continues** as usual (`learnings/2026-07-29-biweekly-gap-digest.md`) with env-var-absence tracked in the digest as Andy-decision item #1 with reference to this proposal.
- **No changes to routine behavior**, `CLAUDE.md`, `strategy/`, `brain/`, or `routines/` per rule 6 (proposals only, don't unilaterally change process/config on Andy's behalf).
- **No Supabase writes attempted** (env-vars absent → skip per CLAUDE.md).
- **Compound-standing-deferral note:** Layer-1 network-egress standing-deferral (Andy explicit override, 41st consecutive run) already blocks Supabase egress independently; env-var absence would prevent the call regardless of network path. This proposal treats env-var absence as a Layer-0-configuration issue distinct from the Layer-1-network issue.

## Proposed Andy actions (any one; not stacking)

1. **If (a) intentional:** update `CLAUDE.md` §"Environment variables" to note "The scheduled biweekly + event-scan routines currently run without env vars provisioned — this is intended standing-state pending Supabase-plumbing work; the routines gracefully skip Supabase-touching branches." Routine will stop escalating.
2. **If (b) transient scheduler bug:** restore env vars in the scheduled-task config for the biweekly + event-scan triggers. Verify by triggering a test run and confirming the env-check block shows PRESENT for all four vars.
3. **If (c) migration side-effect:** inspect current scheduling config, identify the secret-injection path, and re-attach the secret store. May require session-level or organization-level config change.
4. **If (d) permission-scope regression:** re-authorize the scheduler's principal on the secret store, or rotate + re-provision the service key with correct scope.

## What the routine will do at n=5 (2026-07-31 if not resolved)

- Continue writing biweekly-gap-digests with env-var-absence tracked.
- **Not write** a further standalone proposal file (this one covers the ongoing state; no need to duplicate).
- **Consider** adding a `learnings/proposal-*.md` for updating `CLAUDE.md` §"Environment variables" if by n=6+ Andy has not acted (reading silence-past-three-standalone-proposal-cycles as candidate (a) intentional-standing-state, and proposing to update CLAUDE.md to match).

## Files touched

- `crypto/learnings/2026-07-29-proposal-env-vars-absent.md` (this file, new).
- No `brain/`, `strategy/`, `routines/`, `CLAUDE.md` edits per rule 6.

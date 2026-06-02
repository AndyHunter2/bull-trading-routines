# Incident: WebSearch egress 529-Overloaded across full scan window

**Date:** 2026-06-02
**Routine:** crypto-event-scan
**Category:** incident — egress layer-2

## Observation

Across the 2026-06-02 08:00 UTC event-scan run, **every WebSearch call** returned:

```
API Error: 529 Overloaded. This is a server-side issue, usually temporary —
try again in a moment. If it persists, check https://status.claude.com.
```

Queries attempted (~12 unique queries, repeated with backoffs ranging from 20s to ~5min over ~25min wall-clock):

- `bitcoin price ETF outflow flows Monday`
- `US NFP May 2026 consensus estimate June 5 release`
- `Iran US deal Trump final determination June 2026`
- `ISM Manufacturing PMI May 2026 release result`
- `Bitcoin price today June 2 2026`
- `BTC bitcoin price now`
- `economic calendar this week NFP June`
- `bitcoin news today`
- `bitcoin Tuesday market update`
- `FOMC June 2026 meeting Federal Reserve`
- `bitcoin price ETF flows June 2 2026`
- `bitcoin BTC price ETF flow news Tuesday June 2 2026`

All ~12 returned `529 Overloaded` consistently. WebFetch as a fallback returned HTTP 403 on every non-allowlisted host (Coindesk, Finbold, Reuters, BBC, SEC EDGAR, BLS, Federal Reserve, BeInCrypto, Binance, Google Finance, Wikipedia). Bash-direct `curl` to Google Finance returned `Host not in allowlist` — confirming the routine's egress is restricted to Anthropic-proxied tooling.

**Net new datapoints from external sources this scan: zero.**

## Reasoning

This is a **fresh, distinct egress incident** on top of the carried Binance + Supabase block:

| Layer | Mode | First observed | Status today |
|---|---|---|---|
| Layer-1 | Binance + Supabase `host_not_allowed` (403, allowlist deny) | 2026-04-19 | Carried ~44 days, unchanged |
| Layer-2 | **WebSearch `529 Overloaded` (server-side, Anthropic-proxied)** | **2026-06-02 08:00 UTC (this run)** | **Active throughout this scan** |

Layer-1 is a host-allowlist configuration issue (deny-listed). Layer-2 is an upstream Anthropic-proxied-egress server overload (transient — but it persisted across ~25 minutes of retries with exponential backoff, well past the "usually temporary" framing in the error text). The two layers are mechanically distinct and stack.

**Material consequence for the scanner role:**

The `crypto-event-scan` routine fundamentally depends on WebSearch (per Step 2 of the routine spec: "Use **WebSearch** (has Anthropic-proxied egress, works in the sandbox)"). Layer-2 means the scanner cannot fulfil Step 2 today. Per the routine's anti-pattern ("Don't invent events. If WebSearch returns nothing, say so — 'no major events detected in window.'") and per CLAUDE.md ("If an env var is missing, log it, skip the step that needs it, continue with what you can do"), the scanner wrote a carry-forward briefing flagging the outage explicitly rather than fabricate state.

**The 7+ expected-publication binaries flagged at 06-01 close** (Mon-open tape close / 11th-day-ETF-streak first publication / ISM Mfg PMI post-print / Iran phase-13 status / JOLTS date-conflict / ADP T-1d source-watch / NFP T-3d consensus accumulation) **all remain unresolved this scan** — none confirmed-or-falsified. The downstream NFP URGENT pre-event scan (06-05 08:00 UTC at T-4.5h per URGENT-2026-05-08 precedent) becomes harder to execute if layer-2 persists into the 06-03 / 06-04 / 06-05 scans.

## Action taken

- Did NOT write to `brain/event-playbooks.md` (no fresh evidence to motivate edits anyway; scanner is read-only on playbooks).
- Did NOT fabricate or extrapolate event state. Briefing carries 06-01 state forward unconfirmed and flags every unresolved binary as such.
- Did NOT fire URGENT. URGENT mechanism is "Tier-1-mapped-event-within-24h," not "infrastructure-incident." NFP is at T+3d (Fri 06-05), outside the 24h window.
- Wrote this incident learning to make the layer-2 outage grep-able and visible in repo memory.
- Committed and pushed both the briefing and this learning to `main` per CLAUDE.md rule 3.

## How to apply in future

- **WebSearch-recovery-test should be priority #1 in the next scan (06-03 Wed 08:00 UTC).** Run a single representative WebSearch (e.g., `bitcoin price today`) before any other scan work. If it returns 200, proceed with normal scan and consume the 7+ accumulated 06-02 carries. If it returns 529 again, this incident has crossed 24h+ persistence — escalate out of band to Andy (the 04-19 layer-1 incident set the precedent that 2h+ persistence during a trading session warrants out-of-band escalation; layer-2 should follow the same threshold).
- **Filename convention:** `2026-06-02-incident-websearch-overloaded.md`. If layer-2 persists into 06-03 / 06-04, suffix `-hour24` / `-hour48` as the 04-19 chain did (`incident-egress-blocked-hour3.md`, `incident-egress-blocked-hour4.md`) to make the persistence-counter grep-able.
- **Routine-level question for Andy:** the scanner does not currently have a documented response pattern for "WebSearch 529'd for the entire scan window." Should the routine spec add a "Step 0: WebSearch-recovery-test" with an escalation threshold (e.g., 24h+ persistence → out-of-band alert)? Surface this in the next biweekly digest as a routine-spec gap; not unilaterally adding it per CLAUDE.md rule 6.
- **URGENT-scan execution risk:** if layer-2 persists through Thursday 06-04 close, the Fri 06-05 08:00 UTC NFP URGENT pre-event scan (T-4.5h source-watch for consensus + ADP-Wednesday-print + Mon-Thu tape state) will be running blind. Andy may want a manual fallback: post NFP consensus + ADP print + tape state to a known location (e.g., a markdown file in the repo) before 06-05 08:00 UTC so the URGENT scan can read repo state instead of live web. Surface this as a contingency, not auto-execute.

## What this is NOT

- **Not a Binance/Supabase block escalation.** Layer-1 (`host_not_allowed`) is unchanged and not re-tested this run; layer-2 is mechanically distinct (server overload, not allowlist deny). Both stack.
- **Not a permission / authentication issue.** The 529 response is upstream server overload, not 401/403.
- **Not deterministic-failure-mode.** WebSearch may recover within minutes or hours; the "usually temporary" framing in the error text suggests transience. Recommend the 06-03 scan re-test, not panic-escalate after one run.
- **Not a justification for unilateral playbook edits.** Per CLAUDE.md rule 6, infrastructure incidents do not motivate strategy/brain edits. The scanner's job today was to carry state and flag the gap, which is what happened.

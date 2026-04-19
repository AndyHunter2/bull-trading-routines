# Incident: egress still blocked — fourth consecutive hour

**Date:** 2026-04-19
**Routine:** crypto-regime
**Hour:** 17:00 UTC run (prior failures at 14:36, 15:05, 16:09 UTC)
**Category:** incident

## Observation

Same failure mode as the three prior incidents today. Connectivity checks at
17:11 UTC:

- `GET https://api.binance.com/api/v3/ping` → `HTTP/2 403`,
  `x-deny-reason: host_not_allowed`
- `GET https://fapi.binance.com/fapi/v1/ping` → `HTTP/2 403`
- `GET https://jbhxfhtjfgyxkneopghl.supabase.co/rest/v1/` → `HTTP/2 403`

Binance public hosts and the Supabase project host remain outside the
routine's egress allowlist. No market data could be gathered; no PATCH
could be issued.

## Reasoning

The 14:36 UTC incident called for Andy to add
`api.binance.com`, `fapi.binance.com`, and `jbhxfhtjfgyxkneopghl.supabase.co`
to the routine host allowlist. That action has not been completed across
**four** consecutive hourly runs.

## Elevated concern — 2-hour threshold long crossed

The original incident defined the escalation:

> If the allowlist remains broken for more than 2 hours during a trading
> session, the safer default is for Andy to manually PATCH `crypto_regime`
> with `skip_entries = true` from the Supabase dashboard.

At 17:00 UTC we are into the **fourth** consecutive failed hour — double
the 2-hour threshold. The trading session (08:00–22:00 UTC) has been live
all four hours. The VPS scalper has been operating on the seed
`crypto_regime` row since deploy on 19 Apr 2026, with zero hourly tuning
applied today.

**Andy: if you have not already, please manually set
`crypto_regime.skip_entries = true` via the Supabase dashboard until the
host allowlist is fixed and a routine run verifies end-to-end.** The
routine cannot do this — the write path is the blocked path.

Only ~5 hours of today's trading session remain (17:00 → 22:00 UTC). If
the allowlist is not patched within the next hour, the pragmatic call is
to leave the scalper paused for the remainder of today and resume
tomorrow after a manual verification run.

## Action taken

- Did NOT write to `crypto_regime` (PATCH returns 403).
- Did NOT modify `regime-heuristics.md`.
- Cannot set `skip_entries = true` as a kill-switch — write path blocked.
- Committed this incident to make the 4-hour persistence visible in memory.

## How to apply in future

- Exit-fast rule from the first incident still applies: 403 +
  `host_not_allowed` on Binance or Supabase hosts = exit in first 30s,
  write incident, commit.
- Filename suffix `-hourN` makes the consecutive failure count grep-able
  from the learnings directory.
- Once the allowlist is patched, Andy should run this routine manually
  and confirm a successful PATCH before the next cron fires — and
  separately re-enable `skip_entries = false` on `crypto_regime` if he
  paused it manually.
- If this pattern continues into tomorrow's session, the incident stops
  being a routine-level concern and becomes an infra ticket — the
  learnings directory is not the right place for a fifth+ identical
  entry. Escalate out of band.

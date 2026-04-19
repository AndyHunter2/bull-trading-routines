# Incident: egress still blocked — third consecutive hour, escalation threshold crossed

**Date:** 2026-04-19
**Routine:** crypto-regime
**Hour:** 16:00 UTC run (prior failures at 14:36 UTC and 15:05 UTC)
**Category:** incident

## Observation

Same failure mode as the two prior incidents today. Connectivity checks at
16:09 UTC:

- `HEAD https://api.binance.com/api/v3/ping` → `HTTP/2 403`,
  `x-deny-reason: host_not_allowed`
- `GET  https://fapi.binance.com/fapi/v1/ping` → `HTTP/2 403`
- `GET  https://jbhxfhtjfgyxkneopghl.supabase.co/rest/v1/crypto_regime?id=eq.1`
  → `HTTP/2 403`

Binance public hosts and the Supabase project host remain outside the
routine's egress allowlist. No market data could be gathered; no PATCH
could be issued.

## Reasoning

The 14:36 UTC incident called for Andy to add
`api.binance.com`, `fapi.binance.com`, and `jbhxfhtjfgyxkneopghl.supabase.co`
to the routine host allowlist. That action has not been completed across
three consecutive hourly runs.

## Elevated concern — 2-hour threshold crossed

The original incident defined the escalation:

> If the allowlist remains broken for more than 2 hours during a trading
> session, the safer default is for Andy to manually PATCH `crypto_regime`
> with `skip_entries = true` from the Supabase dashboard.

At 16:00 UTC we are now into the **third** consecutive failed hour, well
past that 2-hour threshold. The trading session (08:00–22:00 UTC) has been
live all three hours. The VPS scalper has been operating on the seed
`crypto_regime` row since deploy on 19 Apr 2026, with no hourly tuning.

**Andy: please manually set `crypto_regime.skip_entries = true` via the
Supabase dashboard until the host allowlist is fixed and a routine run
verifies end-to-end.** The routine itself cannot do this — the write path
is the blocked path.

## Action taken

- Did NOT write to `crypto_regime` (PATCH returns 403).
- Did NOT modify `regime-heuristics.md`.
- Cannot set `skip_entries = true` as a kill-switch — write path blocked.
- Committed this incident to make the 3-hour persistence visible in memory.

## How to apply in future

- Exit-fast rule from the first incident still applies: 403 +
  `host_not_allowed` on Binance or Supabase hosts = exit in first 30s,
  write incident, commit.
- On the 3rd consecutive failed hour during a trading session, the
  incident filename should include `-hour3` (or whatever count) so the
  escalation is grep-able from the learnings directory.
- Once the allowlist is patched, Andy should run this routine manually
  and confirm a successful PATCH before the next cron fires — and
  separately re-enable `skip_entries = false` on `crypto_regime` if he
  paused it manually.

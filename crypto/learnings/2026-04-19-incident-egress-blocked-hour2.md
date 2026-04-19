# Incident: egress still blocked — second consecutive hour

**Date:** 2026-04-19
**Routine:** crypto-regime
**Hour:** 15:00 UTC run (previous failure logged at 14:36 UTC)
**Category:** incident

## Observation

Same failure mode as `2026-04-19-incident-egress-blocked.md`. Connectivity
checks at 15:05 UTC:

- `GET https://api.binance.com/api/v3/ping` → `HTTP/2 403`,
  `x-deny-reason: host_not_allowed`
- `GET https://fapi.binance.com/fapi/v1/ping` → `HTTP/2 403`,
  `x-deny-reason: host_not_allowed`
- `GET https://jbhxfhtjfgyxkneopghl.supabase.co/rest/v1/crypto_regime?id=eq.1`
  → `HTTP/2 403`, `x-deny-reason: host_not_allowed`

Binance hosts and the Supabase project host remain outside the routine's
egress allowlist.

## Reasoning

The prior incident (14:36 UTC) called out the required Andy action:

> Andy action required: add `api.binance.com`, `fapi.binance.com`, and
> `jbhxfhtjfgyxkneopghl.supabase.co` to the routine's host allowlist.

That has not happened yet. Per the playbook in the prior incident, I am
treating this as a hard infra failure and exiting within 30s of confirming
the 403s — no market data, no regime PATCH.

## Elevated concern

This is now the **second consecutive hour** the regime routine has been
unable to write `crypto_regime`. The prior incident noted:

> If the allowlist remains broken for more than 2 hours during a trading
> session, the safer default is for Andy to manually PATCH `crypto_regime`
> with `skip_entries = true` from the Supabase dashboard.

At 15:00 UTC we are inside the trading session (08:00–22:00 UTC) and the
VPS scalper is still running against the seed regime values written at
deploy. If the 16:00 UTC run also fails, the 2-hour threshold is met and
Andy should pause the scalper manually from the Supabase dashboard.

## Action taken

- Did NOT write to `crypto_regime` (PATCH returns 403).
- Did NOT modify `regime-heuristics.md`.
- Cannot set `skip_entries = true` as a kill-switch because the write path
  is exactly what is blocked.
- Committed this incident so the hour-over-hour persistence is visible in
  memory.

## How to apply in future

- Same guidance as prior incident: 403 with `host_not_allowed` on Binance
  or the Supabase project host = exit in first 30s, write incident, commit.
- If the next hourly run also fails, the routine should still fail fast —
  but the learning should explicitly flag the 2-hour threshold so whoever
  reviews the repo sees the escalation path.
- Andy: please add the three hosts to the routine allowlist and re-run
  manually to verify before the next cron.

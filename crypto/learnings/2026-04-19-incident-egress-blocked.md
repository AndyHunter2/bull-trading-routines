# Incident: routine blocked by host allowlist — no Binance, no Supabase

**Date:** 2026-04-19
**Routine:** crypto-regime
**Category:** incident

## Observation

14:36 UTC hourly run. Every outbound HTTP call returned `HTTP/2 403` with header
`x-deny-reason: host_not_allowed` and body `Host not in allowlist`. Confirmed on:

- `api.binance.com`, `api1/2/3.binance.com`, `data.binance.com`,
  `api-gcp.binance.com`, `data-api.binance.vision`, `fapi.binance.com`
  — all 403, tried via `curl` (Bash) and `urllib` (Python) and `WebFetch`.
- `jbhxfhtjfgyxkneopghl.supabase.co/rest/v1/crypto_regime?id=eq.1`
  — 403 via both `curl` and `WebFetch`.

Result:
- Step 2 (market data) could not run → no BB width, no EMA-50 state, no funding rate.
- Step 5 (Supabase PATCH) could not run → `crypto_regime` row was **not updated**
  this cycle. The VPS scalper is reading the previous hour's regime values.

## Reasoning

The routine's environment has a hard egress allowlist that does not include the
Binance public API hosts or the Supabase project host. This is an infrastructure
misconfiguration, not a strategy or market issue — no amount of regime reasoning
can recover because the routine cannot talk to any of the systems it exists to
bridge.

Because I cannot write to `crypto_regime`, I also cannot honour the kill-switch
pattern (set `skip_entries = true` with a "routine paused" reason) — the only
safe thing to do is fail loudly and commit this incident so the next human
touching the repo sees it immediately.

This is the first hour the regime integration deployed (per `bb-scalp.md`
track-record entry 19 Apr 2026), so the scalper is currently operating on
whatever seed values were inserted at deploy.

## Action taken

- Did NOT write to `crypto_regime` (write was impossible).
- Did NOT modify `regime-heuristics.md` or any parameter.
- Wrote this incident and committed it so subsequent runs / Andy can see the
  failure in memory.

## How to apply in future

- If this routine's run ever hits `x-deny-reason: host_not_allowed` on
  `api.binance.com` OR `*.supabase.co`, treat it as a hard infra failure:
  write `incident-<date>-egress-blocked.md`, commit, and exit 1 within
  the first 30s. Do not spend further reasoning budget.
- Andy action required: add
  `api.binance.com`, `fapi.binance.com`, and
  `jbhxfhtjfgyxkneopghl.supabase.co` to the routine's host allowlist
  (Claude Desktop routine env or equivalent). Re-run manually once added
  to verify before relying on the hourly cron.
- Until the allowlist is fixed, the VPS scalper is running on stale regime
  values. If the allowlist remains broken for more than 2 hours during
  a trading session, the safer default is for Andy to manually PATCH
  `crypto_regime` with `skip_entries = true` from the Supabase dashboard.

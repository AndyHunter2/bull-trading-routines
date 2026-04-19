# Setup — Claude Desktop Routines

This file is for Andy. 10-minute setup to wire up the three crypto routines.

## Prerequisites

- Claude Desktop app installed and signed in to the Pro (or Max) account
- GitHub repo `bull-trading-routines` pushed to `AndyHunter2` (done by the setup script)
- A Claude Code **Cloud Environment** named `trading` with these env vars:
  - `SUPABASE_URL` = `https://jbhxfhtjfgyxkneopghl.supabase.co`
  - `SUPABASE_SERVICE_KEY` = (from `~/Claude_Code/.env` — copy the `SUPABASE_SERVICE_KEY` value)
  - `PERPLEXITY_API_KEY` = (optional — if present, routines will use it for news research; otherwise they fall back to WebSearch)
- Cloud Environment **network access: full**

## Creating the environment (one-time)

1. Open Claude Desktop
2. Click **Routines** (left sidebar) → **New Routine** → **Remote**
3. In the environment dropdown, choose **Add environment**
4. Name it `trading`
5. Network access: **Full**
6. Add the three env vars above
7. Save

## Creating each routine

Do this three times, one per routine file. For each:

1. **New Routine** → **Remote**
2. **Environment:** `trading`
3. **GitHub repo:** `AndyHunter2/bull-trading-routines` (branch `main`)
4. **Prompt:** paste the full contents of the routine's `.md` file (from `crypto/routines/`)
5. **Model:** `Claude Opus 4.7`
6. **Cron:** (see table below)
7. **Permissions** → Enable **"Allow unrestricted branch pushes"** — critical, else memory files don't commit between runs

### Cron schedule

| Routine | Prompt file | Cron (UTC) |
|---|---|---|
| `crypto-regime` | `crypto/routines/crypto-regime.md` | `0 * * * *` |
| `crypto-close` | `crypto/routines/crypto-close.md` | `0 22 * * *` |
| `crypto-weekly` | `crypto/routines/crypto-weekly.md` | `0 10 * * 0` |

## First run — do this manually before letting cron take over

For each routine, click **Run Now** once. Watch the live session tab. Check:
- It reads `CLAUDE.md` and the strategy/brain files without errors
- It successfully reads `crypto_regime` from Supabase
- For `crypto-regime` only: it writes back a new row and commits any memory updates to main

If any of the three fails on its first run, pause the cron, reply to the session with what broke, and we fix before letting it run autonomously.

## Verification that the scalper is reading regime

After the first `crypto-regime` run, SSH to VPS and check the scalper's journal:

```bash
ssh andy@162.55.37.21 'journalctl -u crypto-realtime-scout.service --since "5 min ago" | grep -i regime'
```

You should see regime params taking effect in subsequent BUY_SIGNAL log lines. If `skip_entries = true` is set, subsequent signals will log `REGIME_SKIP(...)` instead of executing.

## Kill switches (in order of severity)

| What you want | How |
|---|---|
| Pause just the regime routine | Claude Desktop → Routines → toggle off `crypto-regime` |
| Force scalper to stop entering immediately | `UPDATE crypto_regime SET skip_entries = true WHERE id = 1;` in Supabase SQL editor |
| Stop the VPS scalper entirely | `ssh andy@162.55.37.21 'sudo systemctl stop crypto-realtime-scout'` |
| Disable live trading flag | `UPDATE crypto_config SET realtime_enabled = false WHERE id = 1;` |

## When to promote to dividend funds

After `crypto-regime` has run autonomously for 14 days with no incidents and produced at least 3 non-trivial `discovery-` or `proposal-` learnings, scaffold `/dividend/` and repeat the setup for:
- `dividend-morning` (06:30 BST Mon–Fri)
- `dividend-midday` (12:30 BST Mon–Fri)
- `dividend-close` (19:00 BST Mon–Fri)
- `dividend-weekly` (Sunday 11:00 BST)

The existing n8n workflows run in parallel for another 7 days, then get archived.

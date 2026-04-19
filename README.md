# Bull Trading Routines

Claude Code Routines that add Opus-level judgment to the Hunter Group paper-trading systems.
Runs **remote** (Claude cloud), so the Mac can stay off.

## What runs where

| Layer | Where | Cadence | Why |
|---|---|---|---|
| BTC signal detection & execution | VPS (Python WebSocket scout) | 5-sec ticks | Latency-critical, routines can't fire this fast |
| BTC regime parameters | **This repo** (routine) | Hourly | Scalper reads `crypto_regime` Supabase row; routine tunes it |
| BTC daily outcome review | **This repo** (routine) | 22:00 UTC | Log learnings, commit to `/crypto/learnings/` |
| BTC weekly pattern review | **This repo** (routine) | Sunday 10:00 UTC | Reweight entry pattern priors |
| Dividend daily decisions | **This repo** (routine, future) | 06:30 BST | Replaces n8n Haiku-scoring workflow |
| Dividend weekly review | **This repo** (routine, future) | Sunday 11:00 BST | Replaces n8n Sonnet review |
| Dividend monthly review | Managed Agent (existing) | 1st of month | Keep as-is |
| Price fetches (Yahoo OAuth2) | n8n (existing) | 18:30 daily | OAuth2 stays in n8n |

## Directory layout

```
/crypto/
  routines/          Prompts for each scheduled routine
  strategy/          Hand-edited strategy files (slow-changing)
  brain/             Heuristics files that routines evolve
  learnings/         One .md file per significant trade / pattern discovery
/dividend/           (to be scaffolded when crypto is proven)
/shared/
  supabase-patterns.md    Common DB query recipes for routines
  security.md             Env var rules, never-commit list
CLAUDE.md            System-level guardrails loaded on every run
```

## Memory discipline

Every routine run MUST:
1. **Read** relevant files in `/crypto/strategy/`, `/crypto/brain/`, recent `/crypto/learnings/` before deciding
2. **Do** its scheduled job
3. **Write** back: update the relevant `brain/*.md` if a heuristic changed, drop a `learnings/YYYY-MM-DD-*.md` if something non-obvious was discovered
4. **Commit** changes to `main` at end of run (routine permissions must allow unrestricted branch pushes)

Without the commit step, the next run has no memory of this one. That's the whole point.

## Cost envelope

Everything runs inside the existing Claude Pro subscription. No additional Max upgrade. If routine quotas become a limiting factor, the mitigations in order of preference are:
1. Reduce non-essential routine calls (merge jobs)
2. Shorter prompts (trim memory file reads to "recent 30 days" slices)
3. Only then consider Max

## Kill switches

- **Crypto regime**: set `crypto_regime.skip_entries = true` in Supabase → scalper stops entering within 60 seconds. Open positions still managed.
- **Full scalper stop**: `systemctl stop crypto-realtime-scout` on VPS + set `crypto_config.realtime_enabled = false` (belt + braces)
- **Routine stop**: disable the routine in Claude Desktop app

## See also
- VPS scalper source: `/home/andy/backups/crypto_realtime_scout.py`
- Supabase project: `jbhxfhtjfgyxkneopghl` (main)
- Relevant tables: `crypto_config`, `crypto_regime`, `crypto_portfolio`, `crypto_trade_log`

# Bull Trading Routines — Event-Driven BTC (Option C)

Claude Code Remote Triggers that run Andy Hunter's BTC event-driven trading system.
Runs **remote** (Claude cloud), so the Mac stays off.

## Current status: v1 event-driven, no live trades yet

This repo pivoted from a BB-bounce scalper to an event-driven strategy on **19 April 2026** after a 2-year backtest proved the scalper had no fee-covering edge at retail Binance fees. The scalper work is preserved in `crypto/archive/scalper-2026-04-17-to-19/` for reference.

## Strategy in one sentence

**Trade 5–15 high-conviction event reactions per year** (FOMC, CPI, ETF decisions, exchange hacks, regulatory moves), sized small, human-approved, held hours to days. Fees become a rounding error when event moves are 3–5%.

See [`crypto/strategy/event-driven.md`](crypto/strategy/event-driven.md) for the full design.

## Directory layout

```
crypto/
  strategy/
    event-driven.md              Human-owned strategy specification
  brain/
    event-playbooks.md           Historical BTC reactions to each event type
  routines/
    crypto-event-scan.md         Daily 08:00 UTC — scans for events, writes briefing
    crypto-event-review.md       Post-trade — reviews outcome vs playbook
  briefings/                     Daily + urgent event briefings (generated)
  learnings/                     Post-trade outcomes + discoveries + proposals
  archive/
    scalper-2026-04-17-to-19/    Previous strategy (preserved, inactive)
shared/
  credentials.md                 Supabase anon key (safe to commit)
  security.md                    Secret handling rules
  supabase-patterns.md           DB query recipes
CLAUDE.md                         Agent system instructions
```

## Active triggers

| Trigger | Schedule | Job |
|---|---|---|
| `crypto-event-scan` | Daily 08:00 UTC | Scan for upcoming events, write briefing |
| `crypto-event-review` | Manual / post-trade | Review outcome vs playbook |

Disabled (preserved): `crypto-regime`, `crypto-close` (scalper-era).

## Kill switches

| What | How |
|---|---|
| Pause event scanning | Disable `crypto-event-scan` in claude.ai/code/scheduled |
| Stop all live trading | N/A — no live trading yet (v1 is human-approved only) |
| Close a position | Manual via Binance dashboard — we're in paper mode, no real funds at risk |

## How to interpret the briefings

When `crypto/briefings/` has a new `URGENT-*.md` file, a Tier-1 event is within 24 hours and the routine has drafted a trade proposal. Andy reviews, approves or rejects, and the trade is executed (or not). The regular `YYYY-MM-DD-event-scan.md` files are informational only.

## See also

- Scout archive: `crypto/archive/scalper-2026-04-17-to-19/README.md`
- VPS infrastructure: `/home/andy/backups/archive/crypto_realtime_scout.py.deactivated_2026-04-19`

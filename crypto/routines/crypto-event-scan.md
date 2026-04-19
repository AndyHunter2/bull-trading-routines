# Routine: crypto-event-scan

**Cron:** `0 8 * * *` (daily 08:00 UTC)
**Purpose:** Scan for scheduled macro events + crypto news in the next 7 days. Emit a daily briefing committed to the repo.

This is the first routine of the event-driven (Option C) strategy. It DOES NOT place trades. It creates a daily awareness report so Andy can see what's coming.

---

## Step 1 — Read memory

- `CLAUDE.md`
- `crypto/strategy/event-driven.md` — the strategy
- `crypto/brain/event-playbooks.md` — the playbook reference
- Most recent `crypto/learnings/` files (last 3)

## Step 2 — Scan for upcoming events

Use **WebSearch** (has Anthropic-proxied egress, works in the sandbox) to find:

### Scheduled macro (next 7 days):
- FOMC meeting dates (Federal Reserve calendar)
- US CPI release dates (BLS calendar)
- US NFP release dates (BLS calendar)
- ECB / BOE meetings
- Any other tier-1 central bank or major data release

Useful queries:
- `site:federalreserve.gov FOMC meeting schedule`
- `"US CPI release date" April May 2026`
- `"US NFP release date" April May 2026`
- `economic calendar this week site:forexfactory.com OR site:investing.com`

### Crypto-specific (last 24h + anything scheduled):
- BTC spot ETF filings, SEC decisions, extensions
- Major exchange news (hacks, outages, earnings)
- Regulatory actions in major jurisdictions (US, EU, UK, Japan, Korea)
- Bitcoin halving / protocol events (very rare)

Useful queries:
- `bitcoin ETF SEC decision site:reuters.com OR site:bloomberg.com this week`
- `bitcoin regulatory news this week`
- `crypto exchange hack OR outage this week`

## Step 3 — Match events to playbooks

For each event found, check `brain/event-playbooks.md`:
- Does this event type have a playbook?
- What's the typical directional bias?
- What's the trade template?

If no playbook exists for the event type, note it as "unmapped" — Andy may want to add a playbook.

## Step 4 — Write the daily briefing

Create `crypto/briefings/YYYY-MM-DD-event-scan.md`:

```markdown
# Event Scan — 2026-04-20

## Scheduled events next 7 days

### Tier-1 (high impact, playbook mapped)
- **2026-04-30 18:00 UTC — FOMC rate decision** — playbook: FOMC, consensus: hold at 4.25–4.50%
- **2026-04-29 13:30 UTC — Q1 GDP advance estimate** — NOT in playbook, unmapped

### Tier-2 (monitor)
- 2026-04-25 — EU HICP flash — unmapped
- 2026-04-26 — BOJ meeting — unmapped

## Crypto-specific last 24h

- No major news flagged today.
- [OR: "2026-04-20 — BlackRock files amendment to BTC ETF S-1 — potentially extends decision timeline, slight bearish tilt per playbook"]

## Recommended posture this week

- Be AWARE of FOMC 30 April — large BTC move likely.
- No immediate action required from this briefing.
- Next briefing: tomorrow 08:00 UTC.

## Events NOT currently in playbook (for Andy to review)

- GDP advance estimate — historical BTC reaction? Worth a playbook entry?
- BOJ meeting — Japanese CB decisions occasionally move BTC.
```

## Step 5 — If a Tier-1 event is within 24h, flag it prominently

If the scan identifies a scheduled Tier-1 event (FOMC / CPI / NFP / confirmed ETF decision) within 24 hours, ADDITIONALLY:

1. Write `crypto/briefings/URGENT-YYYY-MM-DD-pre-event.md` with a pre-trade analysis and proposed parameters
2. Include: event name, exact time UTC, consensus, playbook template, proposed entry/TP/SL, position size
3. This file's existence is the signal for Andy to review and approve

## Step 6 — Commit

```bash
git add -A crypto/briefings/
git commit -m "event-scan: <N> events flagged, <urgent-flag>"
git push origin main
```

## Step 7 — Output summary

Single line:
```
[EVENT SCAN] <N> scheduled, <M> crypto news, urgent=<yes/no>
```

## Anti-patterns (don't)

- Don't place trades from this routine. It's scan-only. Trade proposals live in a separate routine.
- Don't invent events. If WebSearch returns nothing, say so — "no major events detected in window."
- Don't over-write to the briefing. One file per day, overwrite rather than append.
- Don't interpret events through market "feel" — stick to the playbook historical base rates.
- Don't consume more than 5 minutes of reasoning budget. This is a scanner, not a research project.

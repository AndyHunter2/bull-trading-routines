# Routine: crypto-event-review

**Cron:** Manual or triggered post-event (v1 uses Andy's manual trigger; v2 will auto-fire via Binance position close)
**Purpose:** After a traded event, review outcome against playbook, write learnings, commit.

---

## When to run

After a trade has closed (TP hit, SL hit, or time stop). In v1, Andy manually runs this when a paper trade has concluded. In v2 we'll hook this to position close.

## Step 1 — Read memory

- `CLAUDE.md`
- `crypto/strategy/event-driven.md`
- `crypto/brain/event-playbooks.md`
- The pre-event briefing (find latest `crypto/briefings/URGENT-*.md`)
- The trade proposal (find latest `crypto/learnings/trade-proposal-*.md`)

## Step 2 — Determine outcome

Read `data/recent-trade-outcome.json` (written by VPS or manually populated). Contains:
- Entry price
- Exit price
- Hold duration
- P&L in % and currency
- Close reason (TP / SL / time stop / manual)

## Step 3 — Compare to playbook

For the event traded:
- Did the direction match the playbook's historical bias? (e.g. dovish CPI → UP expected, actual was UP → match)
- Was the magnitude within historical range?
- Did the timing match? (e.g., was the move in the first hour or did it take longer?)

## Step 4 — Write the learning

`crypto/learnings/outcome-YYYY-MM-DD-<event-slug>.md`:

```markdown
# Outcome — FOMC 2026-04-30

**Event:** FOMC rate decision, 2026-04-30 18:00 UTC
**Surprise:** Dovish (hold vs expected hike)
**Playbook bias:** UP +2 to +5% (~72% historical)
**Actual BTC move (T+24h):** +3.2%
**Verdict:** Match

## Trade executed
- Entry: £56,200 at T+30 min
- TP hit: £57,886 (+3.0%) at T+4h
- Realised P&L: +£0.87 on £30 position
- Fees: £0.06 round-trip (0.2% taker)
- Net: +£0.81

## Learnings
- Entry timing of T+30 min was right — too early caught the whipsaw
- TP at +3% captured the move but left +0.2% on the table
- Playbook base rate confirmed: dovish FOMC → UP, as expected

## Proposals for playbook
- None — playbook performed as expected.
- [OR: "Playbook should note that the move was front-loaded in first 4h; time stop could be T+6h instead of T+24h"]
```

## Step 5 — Update playbook if warranted

After 5+ trades of a given event type:
- If observed base rate differs from documented by >10 percentage points: propose playbook update in `learnings/proposal-playbook-update-<event>.md`
- If a new pattern emerges (e.g., reactions differ in specific sub-contexts): write `discovery-*.md`

Do NOT edit `event-playbooks.md` directly. Propose only.

## Step 6 — Commit

```bash
git add -A crypto/learnings/
git commit -m "review: <event> — <verdict>, <net_pnl>"
git push origin main
```

## Step 7 — Output summary

```
[REVIEW] <event_name> <verdict> | entry £X exit £Y | +£Z | <key_lesson>
```

## Anti-patterns (don't)

- Don't propose playbook changes from a single trade.
- Don't second-guess entry/exit timing that worked — focus learnings on what could genuinely improve.
- Don't sugarcoat losses. A −3% time-stop on a failed playbook call is a loss, document it plainly.
- Don't write anything to Supabase. Repo files only.

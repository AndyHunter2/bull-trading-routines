# Biweekly gap digest — 2026-05-29 (window 05-27 → 05-29)

**Cadence:** 2-day, first run on the cadence proposed in `2026-05-27-proposal-biweekly-routine-for-event-driven.md`.
**Mode:** Pre-first-trade gap digest (no trades to grade; event-driven strategy still in design phase per `strategy/event-driven.md`).
**Inputs read:** `CLAUDE.md`, `strategy/event-driven.md`, `brain/event-playbooks.md`, `briefings/2026-05-27/28/29-event-scan.md`, last-7-days `learnings/` (only `2026-05-27-proposal-biweekly-routine-for-event-driven.md` is in-window; the 04-19 incident + non-BTC-contagion proposal pre-date the window).

## Process invariants this run

- **Routine file `routines/crypto-biweekly.md` still does NOT exist.** Andy invoked the routine by exact name today, same framing as 05-27 ("reads last 2 days of trades, grades against backtest-priors.md"). Per CLAUDE.md rule 6 the routine file is not created unilaterally; per the spec in the 05-27 proposal, this digest IS the deliverable in pre-first-trade mode. The proposal stays at `proposal-` prefix until Andy explicitly approves the file move.
- **`backtest-priors.md` still does NOT exist** in current `crypto/brain/` (only `event-playbooks.md`). It lives in `archive/scalper-2026-04-17-to-19/` and was scalper-specific. The proposal already redirected grading to `event-playbooks.md` post-first-trade. Andy's restated framing today still cites `backtest-priors.md` — that's the carried scalper-template phrasing, not a live file. No grading attempted against a file that doesn't exist (CLAUDE.md anti-pattern: don't grade what can't be graded).
- **Zero trades in window.** No `crypto/data/`, no `outcome-*.md`, no `trade-proposal-*.md`. Per strategy/event-driven.md 5–15-trades/year frequency, this is expected; the proposal explicitly anticipated routine empty windows.

## What the 2-day window actually changed (genuinely new vs restatement)

Filtered for CLAUDE.md anti-pattern "are learnings genuinely new insights, or restatements?" Most carried gaps are restatement at this point — only material new state is listed.

1. **PCE has its first post-event calibration datapoint.** April PCE resolved 05-28 12:30 UTC: +0.4 m/m headline (cooler than +0.5 cons) / +3.8 y/y (in-line, two-year high since May 2023). Core +0.2 m/m (cooler than +0.3 cons) / +3.3 y/y (in-line, 2.5-yr high since Oct 2023). **Mixed-asymmetric: m/m dovish-velocity surprise, y/y in-line on already-hot consensus.** BTC tape resolved DOWN through $73k on the print, not UP on the m/m miss. **Read:** the regime backdrop (sub-$76k tape + 9-day ETF-outflow streak + Iran kinetic + war-cited CNN headline framing) dominated the print direction — the mixed signal did NOT translate cleanly via a CPI-template "dovish-surprise → UP" mapping. This is the first real-world calibration anchor for a PCE-playbook proposal, and it suggests **state-conditional reaction (regime-overlay required)** rather than CPI-template-clean-transfer. Belongs in `crypto-event-review` post-event color, not unilateral playbook expansion. Note for the eventual PCE entry: m/m vs y/y disaggregation is mechanically meaningful — a CPI-template that only keys on surprise-direction would have predicted UP and been wrong on 05-28.

2. **ETF-whale-block-redemption sub-class — first articulated 05-28, reinforced 05-29.** Carried for `crypto-event-review`: 29.2M IBIT shares sold in one NY session 05-27 (~$1.29B dark-pool block, ~$43/share) directly caused $78k → $76.5k intraday. Then 05-28 IBIT $527.84M single-day = second-largest on record since Jan-2024 launch (Coindesk; Cryptobriefing variant "worst single-day ever"; same $-figure both reads). Aggregate 13-fund complex 9-day consecutive outflow streak, >$2B since 05-14. **State variable:** single-block-vs-dispersed redemption is mechanically distinct at the same $-total; price impact per $bn differs by ~order of magnitude. Calibration is now strong enough that the ETF-mechanical-redemption sub-class flagged across 05-19+ scans should be split into two sub-classes (whale-block / dispersed) when Andy approves an expansion. Genuinely new in the 2-day window — not restatement.

3. **Iran channel phase shift: ninth → tenth.** Window opened on ninth phase (active-ceasefire-with-violations + Qatar-mediator-restored vs Pakistan-stale). Window closes on tenth phase (tentative 60-day-extension deal on paper + Trump-signoff PENDING + Strait-of-Hormuz-traffic clause + Thursday US strikes framed as "defensive" twice this week + Trump 05-28 "time is on our side" Truth Social walkback dulling Sunday-signing). **Discrete new state-variable: Trump signoff is the binary event.** Bidirectional weekend wildcard 05-30: signoff lands → UP-bias (deal-rally, sanctions relief, Strait reopens); signoff fails / kinetic escalates → DOWN-bias. Coincides with the BITA decision on the SAME WEEKEND — two unmapped catalysts in one window, neither has a Step-5 path. Genuinely new state-variable structure in the 2-day window.

4. **Tape regime degraded by one full floor.** Window opened with the $76k 4-week-defended floor under stress (05-27 spotedcrypto $71,750 live read + $74,344 weekend low). Window closes with **two confirmed floor breaks in 4 days** — $76k (05-26/27) + $74.5k (05-28). Tape now sub-$73k. **$73,786 liquidation-density step-down zone is on the battle line** ($1.29B in long-liquidations below per Bitget liquidation-map). Mechanical cascade risk one break away. Single-most-changed environmental variable for any future event-driven trade in the next 1–2 cycles.

## Sub-classes recurring ≥3 scans (proposal-playbook-add candidates per spec)

Per the proposal spec: sub-classes recurring ≥3 scans → `proposal-playbook-add-*.md`. Per CLAUDE.md anti-pattern: don't restate. Filtered:

- **PCE playbook entry** — flagged in every event-scan since 05-19+, now has first post-event calibration. **The calibration is new insight; the proposal-write would still be substantive restatement of the carry.** Holding the proposal-write back: the 05-27 proposal-biweekly carries the PCE flag, this digest carries the post-event nuance, and the routine spec is to surface gaps not fill them. Andy direction needed before next PCE cycle (~end-June).
- **Geopolitical / oil-shock playbook entry** — flagged in every event-scan since 05-19+ across 10 phases. Andy direction needed before the weekend Trump-signoff window resolves.
- **ETF-whale-block-redemption sub-class** — first articulated 05-28, reinforced 05-29. Only 2 scans; per spec ≥3 threshold, NOT yet warranting a stand-alone proposal-write. Carried for `crypto-event-review` calibration; if it reappears 05-30 / 05-31, it crosses the threshold.
- **Covered-call / income-wrapper ETF sub-class (BITA)** — flagged 30+ days. Runway closes tomorrow 05-30. Restatement-only proposal-write held back per anti-pattern.
- **Single-exchange-enforcement sub-class** — first logged 05-29 (CFTC-Gemini-settlement-reversal). 1 scan; below threshold.

**No new `proposal-playbook-add-*.md` written this run.** The substantive gaps are all carried via the 05-27 proposal-biweekly + standing flagging in every event-scan; an additional proposal file would be restatement per CLAUDE.md anti-pattern.

## Andy-decision-queue (gaps unmoved >7d)

Single consolidated list, ordered by time-pressure on the next predictable cycle:

1. **Iran / oil-shock playbook entry — WEEKEND BIDIRECTIONAL WILDCARD.** Trump signoff window is Sat 05-30. Decision now decides whether Iran becomes a Step-5-eligible mechanism for the resolution event. State variables to consider: kinetic-state, mediator-state, oil-Δ, signoff-state. Magnitude / base-rate TBD by Andy from history. >10 days carried.
2. **BITA / covered-call sub-class — RUNWAY CLOSES TOMORROW Sat 05-30.** 30+ days carried. SEC final decision T+1d. If decision lands without a sub-class entry, the post-decision cycle is reviewed via `crypto-event-review` as color only. Goldman / Morgan Stanley covered-call filings carried — recurring sub-class beyond just BITA.
3. **NFP T+7d — FIRST MAPPED Tier-1 trigger in window since FOMC 04-29 chain.** Already mapped (no Andy decision required for the trigger itself), but: prior April NFP (05-08) was hot 115k vs ~62k cons and skipped per URGENT-2026-05-08 surprise-mapping. May URGENT pre-event fires 06-05 08:00 UTC at T-4.5h. No Andy direction needed now; flag is for awareness — next biweekly digest will land 05-31 if cadence is followed (or 06-02 if cron aligned to even days), pre-URGENT.
4. **PCE playbook entry — first calibration datapoint banked.** Next PCE cycle ~end-June. Reasonable first-pass per the 05-19+ carry: CPI template with Fed-preference framing — BUT the 05-28 calibration suggests **regime-overlay required**, not clean CPI-template transfer. >10 days carried.
5. **Cluster meta-playbook gap.** 05-28 bundled PCE + GDP-2nd + Personal Income + Durable Goods + Initial Claims + Corp Profits in a single window; resolved without any trade fire (PCE unmapped). The cluster gap will be in-the-money the moment any single member becomes mapped. >10 days carried.
6. **GDP entry, PPI entry.** Standing carries from `strategy/event-driven.md` named-but-untemplated list. Lighter-magnitude CPI siblings per repeated scan carry. >30 days carried each.
7. **Routine file `routines/crypto-biweekly.md` itself.** The 05-27 proposal is unmoved. Andy invoked the routine by name twice now (05-27 + today). Either: (a) approve the spec, drop `proposal-` prefix on the 05-27 file, land the routine; (b) clarify scope further. Process gap, not strategy gap.
8. **`backtest-priors.md` framing.** The today-invocation again cites grading against `backtest-priors.md`. Proposal already redirected to `event-playbooks.md` post-first-trade. If Andy intends a fresh event-driven backtest-priors file, that's a separate Andy item — current state grades against `event-playbooks.md` per the 05-27 spec.

## Infrastructure status

- **Egress incident chain:** ~40 days since `learnings/2026-04-19-incident-egress-blocked*` chain. Binance + Supabase remain blocked from the sandbox per the 04-19 evidence chain; WebSearch + WebFetch egress only. Binding constraint on whether any approved trade could actually execute. NOT re-tested this run (out of scope for a strategy-review digest; would belong in an explicit infrastructure routine). Andy-decision item is whether to re-test on a 2-day cadence or stay on long-cycle re-test.
- **No `crypto/data/` directory** exists. Pre-first-trade is the right state for it not to exist; first-trade cycle will need a `data/recent-trade-outcome.json` writer per `crypto-event-review` Step 2.

## Heuristic promotions / retirements

**None applicable.** Per the proposal spec: "Playbook updates require n≥5 same-event-type trades (softened from archived n≥10 given the 5–15/yr cadence)." We have n=0 trades. Zero heuristics promoted, zero retired. The only structural sub-class candidates (whale-block-vs-dispersed ETF redemption, PCE-regime-overlay) are calibration insights, not playbook promotions — they need Andy approval before landing in `brain/event-playbooks.md`.

## Output summary

```
[BIWEEKLY GAP DIGEST] 2026-05-29 | window 05-27→05-29 | trades=0 (pre-first-trade) | routine-file-still-missing (rule-6 not unilaterally created) | backtest-priors.md-still-archived (grading vs event-playbooks.md per 05-27 proposal post-first-trade) | genuinely-new-state: PCE-1st-post-event-calibration-mixed-asymmetric-resolved-DOWN-suggests-regime-overlay-not-CPI-template-clean / ETF-whale-block-redemption-sub-class-articulated-and-reinforced-29.2M-IBIT-block-+-record-2nd-largest-single-day / Iran-channel-9th→10th-phase-Trump-signoff-binary-weekend-bidirectional / tape-degraded-one-floor-sub-$73k-confirmed-$73,786-liq-density-on-battle-line | sub-classes-≥3-scans-no-new-proposal-writes-anti-pattern-restatement | Andy-decision-queue: Iran-oil-shock-weekend (RUNWAY-TOMORROW), BITA-covered-call (RUNWAY-TOMORROW), NFP-T+7d-mapped (awareness), PCE-entry-with-1-calibration-anchor, cluster-meta, GDP/PPI, routine-file-itself, backtest-priors-framing | egress-still-blocked-~40d-not-retested-this-run | no-trades-no-promotions-no-retirements (n=0 vs n≥5 threshold) | next-digest: 05-31 (Sun) per proposed 0 10 */2 * * cron
```

## Files touched

- `crypto/learnings/2026-05-29-biweekly-gap-digest.md` (this file, new)
- No `brain/` edits (rule 6 — no unilateral playbook expansion; sub-class proposals carried via 05-27 proposal-biweekly + standing event-scan flagging)
- No `strategy/` edits (human-owned)
- No `routines/crypto-biweekly.md` created (rule 6 — Andy approval pending on the 05-27 proposal; this digest IS the spec's pre-first-trade deliverable)
- No `proposal-playbook-add-*.md` learning written (anti-pattern: would restate carried flags; calibration insights are documented inline)

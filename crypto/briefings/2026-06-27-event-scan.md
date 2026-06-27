# Event Scan — 2026-06-27

**Window:** 2026-06-27 (Sat) → 2026-07-04 + crypto-specific + macro last 24h.
**Source:** WebSearch only (Andy override; egress to Supabase/Binance blocked, thirteenth consecutive scan).
**Continuity:** Follows `2026-06-26-event-scan.md` + biweekly digest `learnings/2026-06-25-biweekly-gap-digest.md`. **Heeding 06-25 biweekly directive:** "substance over taxonomy" — keeping this tight. **Material updates today:** (i) **BTC tested $58,189 intraday Fri 06-26 — DEEPER than yesterday's $59,442 read; stabilized $59k–$60.1k post-expiry settlement;** (ii) **Spot ETF Fri 06-26 outflow refined UP to $692M (Yahoo) vs yesterday's $469M read — single-largest daily since May;** (iii) **Khamenei attribution DISCREPANCY surfaced: WebSearch returned "Ali Khamenei killed Feb 28 2026 in Operation Epic Fury; Mojtaba Khamenei is current Supreme Leader" — yesterday's 06-26 briefing §4 attributed the 06-26 recorded speech to Ali; today's source contradicts that attribution;** (iv) **Base L2 (Coinbase L2) suffered TWICE-IN-TWO-DAYS mainnet stall 06-25 + 06-26 — consensus issue post-block 47,806,542; not a top-10 CEX hack but first L2-stall-on-major-Coinbase-affiliated-chain anchor in routine memory;** (v) **CLARITY Act: 31 Senate session days remain before August recess; Polymarket prices 2026 passage at ~48% — first quantitative passage-odds anchor in routine memory;** (vi) NFP Thu 2026-07-02 now T+5d (was T+6d); URGENT-firing on Wed 07-01 (T+1d) scan. HEAD detached at session-start AGAIN (sixth consecutive notification-worthy run); reattached via `git checkout main && git merge --ff-only` clean; `git fetch origin` updated stale local origin/main from 5d3c592 → 1fd0e34; ALL prior commits ON remote.

---

## Material evolutions vs 2026-06-26

1. **★★★★ BTC: $58,189 INTRADAY LOW THU/FRI — DEEPER BREACH THAN YESTERDAY'S $59,442 READ; POST-EXPIRY STABILIZATION $59k–$60.1k.** Per Yahoo Finance + ccn.com + analyticsinsight.net + Deribit settle reporting: BTC dropped to **intraday low $58,189** (vs yesterday's intraday $59,442 read) before stabilizing near $59,000 area into Friday's quarterly expiry settlement; **per Fortune 06-26 close print: $60,136**. **Deribit settled the $10.6B June 27 quarterly expiry** with put/call ratio 1.64 (puts 4,113.9 vs calls 2,513.7 contracts); BTC notional ~$9.06B vs ETH $1.57B; **max pain pinned at $61,000** (some sources cite $70k–$72k — first cross-aggregator max-pain discrepancy this expiry, n=1). **Material vs yesterday:** (a) intraday low was DEEPER than yesterday's surfaced read (delta ≈ −$1,253 below the prior anchor); (b) post-expiry settlement stabilized between max-pain $61k and intraday low $58.2k — neither broken-through nor recovered; (c) ccn.com headline floats "$55,000 next?" as next visible support test if $58k cracks. **Tape sequence updates:** $64.5k Tue → $62.6k Wed → $59.1k Wed-eve → $61.7k Thu post-PCE-in-line bounce → **$58.2k Thu-Fri intraday low → ~$59-60.1k Fri-Sat post-expiry stabilization**. Cumulative ~−25 to −27% from May $80k peak. **F&G unchanged Extreme Fear band** (changelly carry referenced Fear & Greed 13 in earlier June reporting; yesterday's 06-26 read of "Extreme Fear band" still operative; no fresh-numerical update surfaced this scan). **Quarterly-options-expiry-as-explicit-tape-driver-on-support-breach-day sub-class** advances n=1 → n=1-completed-settlement (now fully cleared event; expiry compression should normalize within 24–48h per strategy/event-driven.md rule 3 carry).

2. **★★★ ETF FRI 06-26 OUTFLOW REFINED UP TO $692M (YAHOO) VS YESTERDAY'S $469M READ — SINGLE-LARGEST DAILY SINCE MAY.** Per Yahoo Finance "Bitcoin Tests $59K as ETF Outflows": **spot Bitcoin ETFs shed $692M on June 26 — largest daily since May** "adding selling pressure ahead of a massive options expiry." Yesterday's briefing surfaced $469M from a different aggregator window; today's refinement places the magnitude ~47% higher. **Cumulative June MTD now well past $6B six-consecutive-weekly streak.** Per investing.com "$3.4B ETF Bleed Looks More Cyclical Than Structural" carry: cyclical framing remains the analyst consensus; structural framing has NOT emerged this scan. **Cross-aggregator-magnitude-discrepancy-on-single-day-ETF-flow sub-class anchor n=1 first instance** (06-26 single-day reported as $469M by one aggregator and $692M by another — both within ≥$200M, neither retracted). Sub-threshold for proposal-write; logged.

3. **★★★ KHAMENEI ATTRIBUTION DISCREPANCY: WIKIPEDIA SOURCE TODAY SAYS "ALI KHAMENEI KILLED FEB 28 2026 IN OPERATION EPIC FURY; MOJTABA KHAMENEI CURRENT SUPREME LEADER" — CONTRADICTS YESTERDAY'S 06-26 ATTRIBUTION TO ALI.** Per today's WebSearch (Wikipedia "2026 Iran war" + related): "Ali Khamenei was killed on February 28, 2026, in coordinated US-Israeli airstrikes under Operation Epic Fury. His successor, Mojtaba Khamenei, in his first statement as Iran's Supreme Leader, warned that Iran would 'not abandon the pursuit of justice for the blood of martyrs' and stressed that 'the closure of the Strait of Hormuz must remain a priority.'" Yesterday's 06-26 §4 attributed the 06-26 recorded-speech to **Ali Khamenei** and called it the "first Supreme-Leader principal-level framing post-MoU." **Three possible resolutions:**
   - (a) **Yesterday's attribution was wrong** — the 06-26 recorded speech was Mojtaba's (the current SL post-Feb-28), and yesterday's briefing carried-forward an obsolete principal name without checking. This would be a routine-memory-stale-principal-name correction.
   - (b) **Today's WebSearch source is wrong / stale on this point** — Wikipedia article reflects an earlier draft and yesterday's attribution holds. Lower-probability given the specificity of "Operation Epic Fury Feb 28 2026" detail.
   - (c) **Ali Khamenei pre-recorded the speech before Feb 28 death and it was released posthumously June 26** — possible but speculative; no source surfaced this scan supports it.
   **Verdict for today:** **flag as discrepancy; do NOT re-litigate yesterday's anchor; do NOT promote a "Mojtaba-as-current-SL" anchor unilaterally**. Per CLAUDE.md rule 5 (kill-switch threshold): state is tractable — channel substance (Hormuz threat-framing, MoU, de-confliction cell) is unchanged regardless of which principal name carries; **kill-switch threshold NOT met**. **Sub-class anchor n=0 → n=1: "Iran-channel-principal-name-attribution-stale-vs-fresh-aggregator-discrepancy"** (first instance). Flag for next biweekly digest 06-29 to resolve.

4. **★★ BASE L2 (COINBASE L2) TWICE-IN-TWO-DAYS MAINNET STALL 06-25 + 06-26 — CONSENSUS ISSUE POST-BLOCK 47,806,542.** Per theblock.co + cryptobriefing: **Base (Ethereum Layer-2 by Coinbase) suffered TWO mainnet stalls in two days — 06-25 (~2h stall) + 06-26 (~1h stall)** triggered by consensus issue following invalid block sequence post-block 47,806,542; resumed 16:11 UTC after 06-26 alert at 15:33 UTC; Jesse Pollak (Base lead) acknowledged publicly. **No user funds at risk** per official statement. **Material per `event-playbooks.md` Major Exchange Hack / Outage entry:** spec requires "Binance, Coinbase, or top-10 exchange confirms loss of funds or extended outage" — Base is Coinbase-affiliated infrastructure but **not the CEX itself**, no funds-loss confirmation, and the stalls were ~1–2h not "extended outage" per playbook spec. **Skip-default per playbook.** Sub-class anchor n=0 → n=1: **"Coinbase-affiliated-L2-twice-in-two-days-consensus-stall-as-playbook-edge-case"** — first instance. Sub-threshold; logged. Note: yesterday's "no CEX hack / no SEC enforcement" carry now nuanced — strictly true (no top-10 CEX hack), but Coinbase-affiliated L2 stall is adjacent.

5. **★★ CLARITY ACT: 31 SENATE SESSION DAYS BEFORE AUGUST RECESS; POLYMARKET 2026 PASSAGE ODDS ~48%.** Per Yahoo Finance + Latham & Watkins crypto policy tracker: bill placed on Senate Legislative Calendar General Orders (Calendar No. 423) on June 1; ethics meeting (Gillibrand, Gallego, Moreno, Lummis, Witt) collapsed June 9; law-enforcement Section 604 objections unresolved; **31 Senate session days remain before August recess**; **Polymarket prices 2026 passage at ~48%**. **First quantitative passage-odds anchor in routine memory** — sub-class anchor n=0 → n=1: "CLARITY-Act-passage-odds-as-quantitative-Polymarket-anchor". Material vs yesterday: yesterday characterized the signing-day candidacy as "degraded materially today" — Polymarket 48% is consistent with that qualitative characterization (toss-up, not high-confidence) but provides a concrete number. **Standing carry on CLARITY-Act-signing-day playbook-entry-add candidacy unchanged: arrival horizon weeks-to-months pending bipartisan-talks-resume.** July 4 White-House signing target now at T+7d outside-7d window-on-final-day; analyst consensus "before-August-recess-or-prospects-deteriorate" stays current.

6. **★★ NFP THU 2026-07-02 T+5d (WAS T+6d).** Per FXStreet + Capital Economics + carry from 06-25 + 06-26: Thursday 2026-07-02 at 12:30 UTC (08:30 ET). **Consensus 110K vs prior 139K** (carry from 06-25/06-26). **Today's WebSearch surfaced Capital Economics 130K as alternative** (vs the 110K standing carry); **cross-source-consensus discrepancy n=1 first instance** (110K vs 130K is within typical sell-side dispersion). **Per playbook NFP entry: "skip unless extreme surprise (>2σ). When traded: TP +2%, SL −1.5%, T+12h time stop." Skip-default unless >2σ.** Envelope-build window opens **Tue 06-30 (T-2d).** URGENT-firing on **Wed 07-01 scan (T+1d).** Third consecutive scan with NFP in 7d window (06-25 + 06-26 + 06-27); consecutive-scans-with-mapped-URGENT-in-7d-window counter advances n=2 → n=3.

7. **★ FOMC WED 2026-07-29 CONFIRMED T+32d (WAS T+33d).** Per Federal Reserve calendar + KuCoin + Yahoo Finance: meeting Tuesday-Wednesday 28-29 July 2026; rate decision Wed July 29 at 18:00 UTC (14:00 ET); press conference 18:30 UTC. **NO Summary of Economic Projections (SEP) / dot plot — only four meetings per year include SEP (Mar/Jun/Sep/Dec)**; July is non-SEP. Sub-class anchor advances n=0 → n=1: **"FOMC-July-as-non-SEP-meeting-explicit-confirmation"** (first explicit-as-non-SEP framing in routine memory). Outside 7d window. Standing carry.

8. **★ NO TOP-10 CEX HACK / OUTAGE / SEC ENFORCEMENT / REGULATORY ACTION IN 24h** (Base L2 stalls per §4 are adjacent-not-CEX). Standard carry. SEC posture under Atkins remains shifted to enablement (SEC-CFTC harmonization six-area work-stream + March 2026 token-taxonomy interpretation are standing context, not 24h news).

9. **★ DETACHED-HEAD AT SESSION-START RECURRED SIXTH CONSECUTIVE NOTIFICATION-WORTHY RUN** (06-21 + 06-23 + 06-25 event-scan + 06-25 biweekly + 06-26 + 06-27). Reattached via `git checkout main && git merge --ff-only` clean. `git fetch origin` updated stale local origin/main from 5d3c592 → 1fd0e34 — confirms **yesterday's 06-26 commit landed on remote**. Mechanism well-understood (stale-local-ref-at-session-start). Standing Andy-decision-queue items 1.a (pre-commit/pre-push hook to refuse detached-HEAD or auto-checkout-main) + 1.b (root-cause: session-start.sh hook likely) + 1.c (session-start protocol mandate git fetch before inspecting prior push outcomes) + 1.d (CLAUDE.md rule 3 amendment) **continue priority** — sixth consecutive recurrence elevates from "structurally blocking auto-recovery without explicit reattach" to "sixth-consecutive-recurrence-without-intervention" (no qualitative change since fifth — Andy is the only actor that can change this).

10. **★ PUSHNOTIFICATION IS AVAILABLE this session — confirmed in tool list at session-start.** Will send at close of run consistent with biweekly 06-25 retraction + 06-26 event-scan precedent.

## Scheduled events in window

### Tier-1 URGENT-mapped (per `brain/event-playbooks.md`)
- **★ Thu 2026-07-02 12:30 UTC (T+5d) — US NFP June.** Consensus 110K (FXStreet/standing) vs Capital Economics 130K alternative; prior 139K. Per playbook: **skip-default unless >2σ surprise.** When traded: TP +2%, SL −1.5%, T+12h time stop. **Envelope-build opens Tue 06-30 (T-2d).** **URGENT-mapped file will fire on Wed 07-01 scan when T+1d crosses into 24h window.** No URGENT today (T+5d not within 24h).

### Tier-1 context, UNMAPPED as URGENT trigger
- **Wed 2026-07-29 18:00 UTC (T+32d) — FOMC July rate decision** (outside 7d window; non-SEP meeting per §7). Standing carry; envelope-inputs accumulating (PCE in-line + UMich preliminary inflation-expectations easing + flash PMI hot + NFP June print pre-FOMC).

### Tier-2 / Tier-3 (monitor, in window)
- **Sat 06-27 (TODAY, T+0)** → no scheduled Tier-1 prints.
- **Sun 06-28 → Mon 06-29** → no scheduled Tier-1 prints surfaced this scan.
- **Tue 06-30 (T+3d)** — Chicago PMI June + Conf Board Consumer Confidence June. **NFP envelope-build window opens (T-2d).**
- **Wed 07-01 (T+4d)** — ISM Manufacturing PMI June + JOLTS Job Openings May. **NFP URGENT-firing day on next scan (T+1d).**
- **Thu 07-02 (T+5d)** — **NFP June** (Tier-1 URGENT-mapped per above) + Initial Jobless Claims.
- **Fri 07-03 (T+6d)** — US markets observe July 4 (Independence Day) — Friday close possible early; reduced liquidity.
- **Sat 07-04 (T+7d, falling on weekend; outside 7d-window-on-final-day)** — CLARITY Act White-House signing target (degraded per 06-26 §3; Polymarket 48% per §5); signing-day-as-within-window-event candidacy unchanged from yesterday's degradation.

## Crypto-specific last 24h

- **★★★★ BTC TESTED $58,189 INTRADAY THU/FRI** (DEEPER than yesterday's $59,442 read) **; stabilized $59k–$60.1k post-quarterly-expiry settlement**; $10.6B Deribit June 27 expiry settled with put/call 1.64, max pain $61k; cumulative ~−25 to −27% from May $80k peak. **ccn.com floats "$55,000 next?" framing if $58k cracks.**
- **★★★ Spot Bitcoin ETF Fri 06-26 outflow refined UP to $692M** (Yahoo) vs yesterday's $469M read — single-largest daily since May; cumulative June MTD well past $6B six-consecutive-weekly-streak. Cyclical framing per investing.com analyst consensus.
- **★★★ Khamenei attribution discrepancy** — WebSearch Wikipedia source today says Ali Khamenei killed Feb 28 2026 (Operation Epic Fury); Mojtaba Khamenei current Supreme Leader. Yesterday's 06-26 §4 attributed 06-26 recorded speech to Ali. Discrepancy flagged for next biweekly (06-29). Channel substance (Hormuz threat-framing, MoU 06-17 Trump-Pezeshkian 60-day nuclear-agreement timeline, de-confliction cell) unchanged regardless of principal-name resolution.
- **★★ Base L2 (Coinbase L2) TWICE-in-two-days mainnet stall 06-25 + 06-26** — consensus issue post-block 47,806,542; ~1–2h each stall; no funds at risk per Jesse Pollak; sub-threshold for top-10 CEX hack playbook trigger.
- **★ CLARITY Act Polymarket 2026 passage odds ~48%** (first quantitative anchor); 31 Senate session days before August recess; ethics + law-enforcement obstacles unresolved.
- **★ No CEX hack / no SEC enforcement / no regulatory action in 24h** (Base L2 stall per above is adjacent-not-CEX; sub-threshold).

## Recommended posture this week

- **No URGENT today** (NFP T+5d not within 24h; nothing else mapped). **Tenth consecutive scan with no URGENT-firing within 24h.** Earliest URGENT-firing-mapped candidate: **NFP Thu 2026-07-02 T+5d**; URGENT file will be written on Wed 07-01 scan (T+1d crosses into 24h window). Envelope-build opens Tue 06-30.
- **BTC tape this weekend:** $58k–$60k is the post-expiry trading range; **$60k acts as overhead supply** (former support → current resistance per yesterday's reframing, confirmed by today's stabilization-below); **$58k is the freshly-set lower bound**. Per strategy/event-driven.md rule 3 (pre-event BB width 1h < 4%): **post-expiry compression typically normalizes within 24–48h** — Sat 06-27 + Sun 06-28 should show whether volatility resets cleanly ahead of Tue 06-30 envelope-build window-open. **If $58k cracks over weekend low-liquidity tape, ccn.com framing "$55k next" becomes the operative reference** — material for any pre-NFP envelope-build.
- **Khamenei attribution discrepancy** flagged for 06-29 biweekly resolution. Operationally: channel substance (Hormuz threat-framing, MoU 60-day timeline, de-confliction cell) unchanged.
- **CLARITY Act:** Polymarket ~48% passage odds confirms toss-up framing; standing carry continues but arrival horizon shifts weeks-to-months pending bipartisan-talks-resume.
- **Geopolitical-oil-shock proposal (06-12):** 15 days Andy-pending (was 14d at 06-26). First clean-event read remained 06-21 Bürgenstock. Second test arc from 06-26 Khamenei (now attribution-disputed) recorded speech is **structurally weakened by the attribution discrepancy** — if speech was Mojtaba not Ali, the "first Supreme-Leader-direct framing post-MoU" framing collapses to "successor-SL routine messaging" with less surprise-content. **No fresh proposal-update warranted; 15-day Andy-pending stands.**
- **Structural-regime-overlay META proposal (06-05):** 12 days past lapsed deadline (was 11d at 06-26). **AT-LAPSED-DEADLINE-TWELVE-DAYS.** Andy direction required per CLAUDE.md rule 6.
- **Base L2 twice-in-two-days stall** sub-threshold; logged. If a third stall surfaces over weekend, consider escalating to "Coinbase-affiliated infrastructure instability" framing for next scan.
- **Detached-HEAD-at-session-start recurred sixth consecutive notification-worthy run.** Andy-decision-queue items 1.a + 1.b + 1.c + 1.d carry priority.
- **Layer-1 egress retest:** standing-deferred (thirteenth consecutive scan per Andy explicit override).
- **CLAUDE.md rule 5 kill-switch:** state is tractable — NFP T+5d per BLS schedule, BTC $58k–$60k range interpretable via expiry + ETF outflow confluence (no novel breaker), Iran channel attribution-disputed but channel substance unchanged. **Kill-switch threshold NOT met.**
- **Next briefing:** 2026-06-28 (Sun) 08:00 UTC.

## Events NOT currently in playbook (for Andy to review)

- **PCE playbook-entry-add candidacy** — n=4 banked; first executed datum (06-25 in-line) uninformative on directional bias per 06-25 biweekly verdict; next clean read 07-31 or >1σ surprise.
- **CLARITY Act signing-day playbook-entry-add candidacy** — degraded per 06-26; Polymarket 48% today provides quantitative confirmation; arrival horizon weeks-to-months not weeks.
- **Geopolitical / oil-shock playbook entry** — `learnings/2026-06-12-proposal-playbook-add-geopolitical-oil-shock.md`. 15 days carried. Second test arc (06-26 Khamenei speech) structurally weakened by today's attribution discrepancy; no fresh proposal-update warranted.
- **Structural-regime-overlay META-mechanism (06-05)** — n=9 unchanged; **deadline lapsed 12 days; AT-LAPSED-DEADLINE-TWELVE-DAYS** standing-color escalation.
- **NEW first-of-kind anchors this scan** (all n=1 unless noted; sub-threshold for standalone proposal-write per ≥3 spec; logged as discrete anchors):
  - "Iran-channel-principal-name-attribution-stale-vs-fresh-aggregator-discrepancy" n=1 (§3).
  - "Cross-aggregator-magnitude-discrepancy-on-single-day-ETF-flow" n=1 (§2; 06-26 $469M vs $692M).
  - "Coinbase-affiliated-L2-twice-in-two-days-consensus-stall-as-playbook-edge-case" n=1 (§4).
  - "CLARITY-Act-passage-odds-as-quantitative-Polymarket-anchor" n=1 (§5; first quantitative odds anchor).
  - "FOMC-July-as-non-SEP-meeting-explicit-confirmation" n=1 (§7).
  - "BTC-quarterly-options-expiry-as-settled-event-with-cross-aggregator-max-pain-discrepancy" n=1 ($61k vs $70–72k; §1).
  - "detached-HEAD-at-session-start-recurs-sixth-consecutive-notification-worthy-run" n=6 above-threshold via continued recurrence; banked-not-written per harder-anti-pattern (infrastructure-config; substance overlaps Andy-decision-queue item 1.a/1.b).
- **Sub-class anchors REINFORCED this run:**
  - Iran-channel substance carries (Hormuz threat-framing, MoU 60-day timeline, de-confliction cell) — unchanged from 06-26 regardless of principal-name attribution.
  - PCE-as-FOMC-month-3-precursor n=4 banked-with-first-executed-datum-uninformative (carry from 06-26).
  - Consecutive-scans-with-mapped-URGENT-in-7d-window n=2 → n=3 (06-25 + 06-26 + 06-27).
  - Quarterly-options-expiry-as-explicit-tape-driver-on-support-breach-day n=1 → n=1-completed-settlement.

## Output summary

```
[EVENT SCAN] 1 mapped-URGENT in 7d (NFP Thu 07-02 T+5d, skip-default unless >2σ; URGENT-firing on Wed 07-01 scan when T+1d), 5 crypto news (★★★★ BTC tested $58,189 intraday DEEPER than yesterday's $59,442 read + stabilized $59k–$60.1k post-quarterly-expiry settlement Deribit $10.6B put/call 1.64 max-pain $61k cumulative -25 to -27% from May peak; ★★★ Spot BTC ETF Fri 06-26 outflow refined UP to $692M Yahoo vs yesterday's $469M read single-largest daily since May cumulative June MTD past $6B six-consecutive-weekly-streak; ★★★ Khamenei attribution DISCREPANCY WebSearch Wikipedia today says Ali Khamenei killed Feb 28 2026 Operation Epic Fury + Mojtaba current SL contradicts yesterday 06-26 attribution-to-Ali for 06-26 recorded speech flagged for 06-29 biweekly resolution; ★★ Base L2 Coinbase L2 TWICE-in-two-days mainnet stall 06-25 + 06-26 consensus issue post-block 47,806,542 no funds at risk sub-threshold for top-10 CEX hack playbook trigger; ★★ CLARITY Act Polymarket 2026 passage odds ~48% first quantitative anchor + 31 Senate session days before August recess; ★ no top-10 CEX hack no SEC enforcement no regulatory action), urgent=NO (NFP T+5d not within 24h; nothing else mapped), next briefing 06-28 08:00 UTC
```

## Files touched

- `crypto/briefings/2026-06-27-event-scan.md` (this file, new)
- No URGENT file this run (NFP T+5d not within 24h; nothing else mapped within 24h)
- No new `learnings/proposal-*.md`
- No `brain/` edits (scan-only routine)
- No `strategy/` edits (human-owned)
- No `routines/` edits
- Infra-state: detached-HEAD → main fast-forwarded from 5d3c592 to 1fd0e34 (33 commits already on origin/main per stale local ref); this run's commit will push 2026-06-27-event-scan.md.

## Sources

- FXStreet Nonfarm Payrolls calendar: https://www.fxstreet.com/economic-calendar/event/9cdf56fd-99e4-4026-aa99-2b6c0ca92811
- BLS Employment Situation release schedule: https://www.bls.gov/schedule/news_release/empsit.htm
- Capital Economics US Employment Report Preview: https://www.capitaleconomics.com/publication-group/us-employment-report-preview
- Federal Reserve FOMC calendars: https://www.federalreserve.gov/monetarypolicy/fomccalendars.htm
- KuCoin "Fed's next FOMC meeting scheduled for July 28-29 2026": https://www.kucoin.com/news/flash/fed-s-next-fomc-meeting-scheduled-for-july-28-29-2026
- Yahoo Finance "Bitcoin Tests $59K as ETF Outflows and Options Expiry Weigh on Market": https://finance.yahoo.com/markets/crypto/articles/bitcoin-tests-59k-etf-outflows-173200686.html
- BeInCrypto "$10.63 Billion Bitcoin and Ethereum Options Expire": https://beincrypto.com/bitcoin-ethereum-options-expiry-june-2026/
- NewsBTC "Deribit Settles $10 Billion June Quarterly Options Expiry": https://www.newsbtc.com/news/deribit-settles-10-billion-june-quarterly-options-expiry/
- Cryptonomist "Bitcoin price today Analysis: Key Levels and Market Sentiment June 2026": https://en.cryptonomist.ch/2026/06/26/bitcoin-price-today-analysis-bearish-risk/
- CCN "Bitcoin Price Falls to $58K as $1.26B Liquidated — Is $55,000 Next?": https://www.ccn.com/news/crypto/bitcoin-price-crash-58k-1-26b-liquidations-55k/
- Analytics Insight "Bitcoin News Today: BTC Options Expiry Arrives": https://www.analyticsinsight.net/news/bitcoin-news-today-btc-options-expiry-arrives-as-crypto-markets-sink-to-new-lows
- Investing.com "Bitcoin's $3.4 Billion ETF Bleed Looks More Cyclical Than Structural": https://www.investing.com/analysis/bitcoins-34-billion-etf-bleed-looks-more-cyclical-than-structural-200681474
- CoinGlass Bitcoin ETF Fund Flows: https://www.coinglass.com/etf/bitcoin
- Fortune "Current price of Bitcoin for June 25, 2026": https://fortune.com/article/price-of-bitcoin-06-25-2026/
- Yahoo Finance "Senate's Last-Ditch CLARITY Act Talks": https://finance.yahoo.com/markets/crypto/articles/senates-last-ditch-clarity-act-145216524.html
- Latham & Watkins US Crypto Policy Tracker: https://www.lw.com/en/us-crypto-policy-tracker/legislative-developments
- The Block "Base suffers second mainnet stall in two days": https://www.theblock.co/post/406409/base-suffers-second-mainnet-stall-in-two-days
- Crypto Briefing "Base blockchain goes down for over an hour": https://cryptobriefing.com/base-blockchain-outage-block-production-halts/
- Wikipedia "2026 Iran war" / "2026 Strait of Hormuz crisis": https://en.wikipedia.org/wiki/2026_Iran_war
- Wikipedia "2026 Strait of Hormuz campaign": https://en.wikipedia.org/wiki/2026_Strait_of_Hormuz_campaign
- House of Commons Library "Israel/US-Iran conflict 2026: Reopening the Strait of Hormuz": https://commonslibrary.parliament.uk/research-briefings/cbp-10636/
- RFERL "Commercial Traffic Through Hormuz Strait Surges After US-Iran Deal": https://www.rferl.org/a/iran-war-us-hormuz-oil-blockade-gulf-israel/33640284.html
- SEC.gov Newsroom: https://www.sec.gov/newsroom
- CoinDesk "Clarity Act survival depends on the U.S. Senate getting a lot of non-crypto work done": https://www.coindesk.com/news-analysis/2026/06/02/clarity-act-survival-depends-on-the-u-s-senate-getting-a-lot-of-non-crypto-work-done

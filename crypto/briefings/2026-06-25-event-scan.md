# Event Scan — 2026-06-25

**Window:** 2026-06-25 (Thu) → 2026-07-02 + crypto-specific + macro last 24h.
**Source:** WebSearch only (Andy session override; egress to Supabase/Binance blocked, eleventh consecutive scan).
**Continuity:** Follows `2026-06-24-event-scan.md`. **Material updates today:** (i) **PCE Thu 06-25 12:30 UTC = T+~4.5h at scan close — IS TODAY; not in playbook → no URGENT-firing**; (ii) **NFP Thu 2026-07-02 12:30 UTC enters 7-day window at T+7d — first 7d-URGENT-mapped candidate in window since URGENT-2026-06-17, breaking the seven-consecutive-scan no-URGENT-mapped carry**; (iii) Iran-channel — Trump Wed "Iran making very big concessions" + Rubio-UAE meeting on Strait of Hormuz transit; Israeli strikes 80+ Hezbollah targets southern Lebanon (carry); (iv) BTC ~$62.7k Thu (flat vs Wed); (v) ETF Mon 06-23 actual flipped POSITIVE +$39.2M (ARKB + MSBT, NOT IBIT/GBTC); (vi) FOMC current-range cross-aggregator discrepancy RESOLVED at 3.50–3.75% (Kraken + Morningstar confirm "fourth straight meeting" hold). Detached-HEAD at session-start RECURRED (third consecutive session); fixed pre-commit via `git checkout main && git merge --ff-only`.

---

## Material evolutions vs 2026-06-24

1. **★★★★ DOMINANT — PCE THU 06-25 12:30 UTC IS T+~4.5h AT SCAN CLOSE.** Per Kraken Brief 06-24 + Morningstar: "PCE inflation for May releases Thursday, June 25, the first major price read since the FOMC held rates at 3.50%–3.75% for a fourth straight meeting." Wells Fargo consensus: **headline +0.5% m/m → +4.1% y/y; core +0.37% m/m → +3.3% y/y (unchanged vs 06-24 refined read).** Cleveland Fed Nowcasting unchecked. **PCE remains NOT IN `brain/event-playbooks.md` (CPI is mapped; PCE is not).** Per Step 5 spec, only FOMC/CPI/NFP/confirmed ETF decision within 24h triggers URGENT — PCE T+4.5h does NOT trigger URGENT. **Material implication:** the highest-relevance non-URGENT event in routine memory fires today within scan-cadence. PCE-playbook-entry-add candidacy (n=3 banked-not-written threshold-cross from 06-20 origin) will receive its first executed datum at 12:30 UTC. **The directional-bias test of "PCE > consensus is hawkish-for-Fed → BTC DOWN" (CPI playbook by analogy) gets its FIRST clean live read today.**

2. **★★★★ DOMINANT — NFP THU 2026-07-02 12:30 UTC ENTERS 7-DAY WINDOW AT T+7d.** First 7d-URGENT-mapped candidate in window since URGENT-2026-06-17 fired. **Breaks the seven-consecutive-scan no-URGENT-mapped carry** (06-18 / 06-19 / 06-20 / 06-21 / 06-22 / 06-23 / 06-24). Per FXStreet / MarketPulse: consensus 110K (vs prior 139K); the print shifts to Thursday because July 4 (Saturday) is observed Friday July 3 with markets closed. **One aggregator search this scan returned "Thursday July 3" which conflicts with the BLS-confirmed Thursday July 2 + the 14-day-prior-briefings carry; July 4 2026 is Saturday so the shift logic resolves to Thursday July 2.** NFP envelope-build window opens T-2d = 06-30 (Tue). NFP playbook (per `event-playbooks.md`): "skip unless extreme surprise (>2σ). When traded: TP +2%, SL −1.5%, T+12h time stop." Cautious base — playbook explicitly skip-default unless extreme.

3. **★★★ Iran channel — Trump Wed "Iran making very big concessions" + Rubio-UAE-Hormuz meeting; Israeli strikes 80+ Hezbollah targets southern Lebanon Fri 06-19 (CARRY, kinetic asymmetry validated).** Per Fox News live 06-24 / CFR / NBC: Trump said Wed "the war is going very well" / "we're winning by a lot" / "Iran is making very big concessions" / "things are going very, very well" + warning "I will do what I have to do" if Iran doesn't honor deal; Tehran "proceeding with vigilance." Rubio met UAE President Mohammed bin Zayed Wed 06-24 in Abu Dhabi — discussed Trump's MoU with Iran + Strait of Hormuz full and safe transit + regional stability. Israeli military Fri 06-19 struck 80+ Hezbollah targets southern Lebanon killing "dozens" of fighters per IDF claim of "repeated, ongoing, and blatant violations of the ceasefire." CFR carries "Trump Extended the Iran War Ceasefire" framing. **De-escalation track holding at principal level; on-ground kinetic asymmetry sub-class (n=2) validated by ongoing Lebanon strikes; UAE-mediated Hormuz transit channel adds Gulf-state involvement to the de-confliction architecture.** **NEW datapoint:** Rubio-MbZ-Abu-Dhabi meeting represents first explicit Gulf-state-mediated Hormuz-channel diplomacy in routine memory.

4. **★★ BTC TAPE ~$62.7k THU 06-25 (FLAT vs WED $62.6k).** Per CoinStats AI / The Block: BTC $62,729; down 4.47% weekly; $13,961 from May 25 $77,623 peak (n.b. this aggregator cites May-25 not May-15 as peak-anchor). Cumulative loss from May peak ~18% per this read (vs ~22% per 06-24 read using May-15 $80k anchor). **NEW sub-class first-of-kind anchor THIS RUN: "cross-aggregator-BTC-peak-anchor-date-discrepancy-May-15-vs-May-25"** n=1. Sub-threshold per ≥3 spec. Working assumption: $80k May-15 peak is the established anchor; $77,623 May-25 may be a different aggregator's secondary high. F&G 24 (Extreme Fear) unchanged. $48.6M liquidations 24h, 82.7% long-side. **Corporate-treasury-permanent-sink sub-class advances (carry):** Strategy bought 520 BTC ~$35M; Strive added 759 BTC ~$50M avg $65,850/coin — both purchases BELOW current spot suggesting recent-purchase markdowns. Corporate-balance-sheet accumulation continues despite ETF outflow tape.

5. **★★ ETF MON 06-23 ACTUAL +$39.2M POSITIVE (ARKB +$31.0M, MSBT +$8.9M); NEITHER IBIT NOR GBTC PRINTED POSITIVE.** Per spotedcrypto / investing.com: "spot Bitcoin ETFs see sixth consecutive weekly outflows totaling $5.94B, though June 23 saw $39.2M in inflows… single positive day is too early to signal a trend reversal." Pattern echoes the 06-12 single-day positive that did NOT establish recovery. **Sub-class anchor advances:** "ETF-single-positive-day-without-IBIT-or-GBTC-leadership-as-non-recovery-pattern" (06-12 origin, n=1) → n=2 (06-23 reinforces). Sub-threshold per ≥3 spec. June MTD ~−$5.94B aggregate (deeper than 06-24's −$2.2B read — this aggregator counts 13-day-streak-from-May-15 + June MTD differently; reconciliation deferred to data layer when Layer-1 egress restored). **The ETF-outflow narrative remains the persistent BTC overhang.**

6. **★★ CROSS-AGGREGATOR FOMC CURRENT-RANGE DISCREPANCY RESOLVED AT 3.50–3.75%.** Per Kraken Brief 06-24 + Morningstar 06-23 + FXStreet: "FOMC held rates at 3.50%–3.75% for a fourth straight meeting." **The 06-23 anchor "cross-aggregator-current-FOMC-target-range-discrepancy" (n=1) is RESOLVED — actual range is 3.50–3.75% as carried since URGENT-2026-06-17.** Cross-checks: (a) Wells Fargo carry; (b) Kraken Brief 06-24 explicit citation; (c) Morningstar "fourth straight meeting" hold framing. **Third sub-class anchor RESOLVED in routine memory (after two 06-21 Iran retirements + 06-23 git-push-claim retirement). First NON-RETIREMENT resolution in routine memory** — premise was multi-source ambiguity, not inspection-methodology error; resolution arrived via standard fresh-source cross-check.

7. **★★ CLARITY ACT — WHITE HOUSE JULY-4 TARGET T+9d (OUTSIDE 7d WINDOW); CARRIES STANDING.** Per Disruption Banking 06-23 + 24/7 Wall St + CoinDesk-May-06: bill cleared House + Senate Banking Committee 05-14 (13 R + 2 D bipartisan) + Senate Legislative Calendar 06-01. **Outstanding hurdle: 60-vote Senate floor threshold (~7 more Democrats needed).** Standard Chartered projects $4–8B XRP ETF inflows post-passage. Prediction markets 2026 signing odds ~72%. **Status carry:** signing-day playbook-entry-add candidacy stays at T+9d outside 7d window; not yet a within-window event but breaks-out-of-window threshold approaches.

8. **★ NO NEW TOP-10 CEX HACK / OUTAGE IN 24h.** Standard carry. No new SEC enforcement in 24h (SEC posture shifted post-Atkins; Democrats called for resumption of enforcement, no new actions filed). No new federal regulatory action in 24h.

9. **★ NEW SUB-CLASS THIS RUN — "detached-HEAD-at-session-start-recurs-third-consecutive-session."** Per session-start git inspection: HEAD again detached at 2c274e4; `git fetch origin` updated stale local origin/main from 5d3c592 to 2c274e4; `git checkout main && git merge --ff-only 2c274e4` fast-forwarded 30 commits 06-05 → 06-24 from origin/main into local main ref. **Recurrence is now n=3 (06-21 + 06-23 + 06-25).** Past threshold per ≥3 spec but filed at threshold-cross via harder-anti-pattern (substance is infrastructure-config not playbook-add; substance overlaps standing 06-21 / 06-23 Andy-decision-queue item 1.a pre-commit/pre-push hook). **Andy: third consecutive session opening in detached-HEAD; the implied root cause (session-start.sh hook or container-init behavior) is structurally blocking auto-recovery without explicit `git checkout main`.** Standing Andy-decision-queue item 1.b "investigate root cause" elevated to priority.

10. **★ PUSH-NOTIFICATION CHANNEL STILL UNAVAILABLE.** ToolSearch select:PushNotification returned no matching deferred tools this session. Per session system prompt this routine should reach Andy via PushNotification — channel unavailable. **Sub-class advances n=3 → n=4** ("push-notification-channel-unavailable-on-notification-worthy-scheduled-routine-run"; 06-19 + 06-21 + 06-23 + 06-25). Banked-not-written per harder-anti-pattern (infrastructure-config). **Fourth consecutive scan that should have pushed Andy and could not.** Workaround = git commit message + this briefing on origin/main.

## Scheduled events in window

### Tier-1 URGENT-mapped (per `brain/event-playbooks.md`)
- **★ Thu 2026-07-02 12:30 UTC (T+7d) — US NFP June (shifted from Fri 07-03 due to Sat July 4 / observed Fri 07-03 closed).** Consensus 110K (vs prior 139K). Per `event-playbooks.md` NFP entry: "skip unless extreme surprise (>2σ). When traded: TP +2%, SL −1.5%, T+12h time stop." **Skip-default unless >2σ.** First 7d-URGENT-mapped candidate in window since URGENT-2026-06-17. Envelope-build opens T-2d = 06-30.

### Tier-1 context, UNMAPPED as URGENT trigger
- **★★★★ Thu 06-25 12:30 UTC (T+~4.5h AT SCAN CLOSE) — US PCE Price Index (May 2026) + Personal Income/Outlays + Q1 GDP final (third rev) + Durable Goods + Initial Jobless Claims + Kansas City Fed Mfg + Japan CPI + Australian labour.** Wells Fargo consensus refined: **headline +0.5% m/m → +4.1% y/y; core +0.37% m/m → +3.3% y/y.** **First major price read post-hawkish-FOMC (06-17).** Surprise >1σ either direction = most material non-URGENT input to July 28–29 FOMC envelope (T+33d). **NOT IN PLAYBOOK** → no URGENT file per Step 5 spec.
- **Sat 07-04 (T+9d, OUTSIDE 7d window) — CLARITY Act White-House signing target.** XRP commodity-classification codification. Senate floor 60-vote hurdle still binding. Standing carry; nears within-window threshold next scan-cadence.

### Tier-2 / Tier-3 (monitor, in window)
- **Thu 06-25 (TODAY)** — PCE bundle (per above) + UMich-final-sentiment-June preliminary cross-check (Fri 06-26 final).
- **Fri 06-26 (T+1d)** — Univ. of Michigan final sentiment June; light otherwise.
- **Sat 06-27 → Mon 06-29** — no scheduled Tier-1 prints surfaced; ECB-Sintra-forum candidacy not confirmed this scan.
- **Tue 06-30 (T+5d)** — Chicago PMI; Conf Board Consumer Confidence June. NFP envelope-build window opens.
- **Wed 07-01 (T+6d)** — ISM Manufacturing June; JOLTS May.
- **Thu 07-02 (T+7d)** — **NFP June** (per Tier-1 URGENT-mapped above). PCE-as-FOMC-month-3-precursor sub-class advances from n=3 banked-not-written to n=4 today on print.

## Crypto-specific last 24h

- **★★★ Iran channel — Trump Wed "Iran making very big concessions" + Rubio-MbZ-Abu-Dhabi Wed 06-24 meeting on Strait of Hormuz transit + regional stability.** Gulf-state mediation of Hormuz channel adds layer to de-confliction architecture. Israeli strikes 80+ Hezbollah targets southern Lebanon Fri 06-19 (kinetic asymmetry n=2 carry).
- **★★ BTC ~$62.7k Thu (flat vs Wed); −4.47% 7d.** Cross-aggregator peak-anchor-date discrepancy (May-15 $80k vs May-25 $77.6k) surfaced. F&G 24 unchanged. Corporate treasury accumulation continues (Strategy +520 BTC, Strive +759 BTC).
- **★★ Bitcoin ETF Mon 06-23 actual +$39.2M positive (ARKB + MSBT; neither IBIT nor GBTC printed positive).** Echoes 06-12 single-day-positive pattern; recovery NOT established; sixth consecutive weekly outflow streak intact $5.94B.
- **★ No CEX hack / no SEC enforcement / no regulatory action in 24h.**

## Recommended posture this week

- **No URGENT today** (PCE T+~4.5h not-mapped per Step 5). **Eighth consecutive scan with no URGENT-firing within 24h.** Earliest URGENT-firing-mapped candidate now **NFP Thu 2026-07-02 T+7d — IN 7-DAY WINDOW for the first time since URGENT-2026-06-17**; envelope-build opens 06-30.
- **PCE Thu 06-25 (T+4.5h):** **highest-relevance non-URGENT event in routine memory fires today.** Watch for >1σ surprise either direction. CPI-playbook directional-bias by analogy: PCE > consensus → hawkish-for-Fed → BTC DOWN; PCE < consensus → dovish-for-Fed → BTC UP. Magnitude per CPI playbook: UP +1.5 to +4% (dovish) / DOWN −1 to −3% (hawkish), base-rate ~68% / 60%. **Test conditions confounded by:** (a) US flash PMI 06-23 HOT (composite 52.2 5-mo high, mfg 55.7 highest since May-22) — supports sticky-disinflation prior; (b) ETF-outflow + hawkish-Fed-overhang as standing BTC-DOWN pressure independent of PCE.
- **NFP Thu 07-02 (T+7d):** first within-window URGENT-mapped event since URGENT-2026-06-17 (T+15d ago at this scan close). Skip-default unless >2σ per playbook. **Envelope-build window opens Tue 06-30** (T-2d).
- **Iran-channel watch-points:** (a) Trump-declared ceasefire framing holding at principal level vs continued Lebanon kinetic violations; (b) Rubio-UAE-Hormuz-transit channel as Gulf-state-mediated NEW datapoint; (c) Tehran "proceeding with vigilance" framing.
- **Geopolitical-oil-shock proposal (06-12):** 13 days Andy-pending. First clean-event read 06-21 Bürgenstock conclusion: weak directional-not-confirmed on day-of-better-news + soft-supported over 48h. Magnitude-band qualifier candidate remains live; no fresh test in window pending Iran ceasefire-vs-violation resolution arc.
- **Structural-regime-overlay META proposal (06-05):** 10 days past lapsed deadline (was 9d at 06-24; was 8d at 06-23 digest). **AT-LAPSED-DEADLINE-TEN-DAYS.** Andy direction required per CLAUDE.md rule 6.
- **CLARITY Act T+9d:** approaches within-window threshold next scan-cadence (06-26 will see T+8d; 06-27 T+7d into window).
- **Detached-HEAD-at-session-start recurred third consecutive session;** session-start protocol now reliably mitigates via `git checkout main && git merge --ff-only`. Standing Andy-decision-queue item 1.a (pre-commit/pre-push hook) + 1.b (root cause investigation) carry priority.
- **Layer-1 egress retest:** standing-deferred (eleventh consecutive scan per Andy explicit override).
- **CLAUDE.md rule 5 kill-switch:** state is tractable — PCE consensus pinned, NFP enters window per BLS schedule, Iran-channel arc consistent with de-escalation framing + kinetic asymmetry, BTC fade interpretable via ETF + hawkish-Fed overhang + corporate treasury offset. **Kill-switch threshold NOT met.**
- **Next briefing:** 2026-06-26 (Fri) 08:00 UTC, post-PCE-print + UMich-final-sentiment-June day-of.

## Events NOT currently in playbook (for Andy to review)

- **PCE playbook-entry-add candidacy** — n=3 banked-not-written at 06-20 origin → **advances to n=4 today on PCE print (first executed datum).** PCE-as-FOMC-month-3-precursor sub-class crosses fourth-instance threshold via in-window event. **Andy decision-queue priority elevated:** PCE is the highest-relevance non-URGENT event in routine memory and now has a first executed datum; playbook-entry-add candidacy should advance from banked to written `proposal-playbook-add-*.md` at next-cadence digest pending today's PCE-print data.
- **Geopolitical / oil-shock playbook entry** — `learnings/2026-06-12-proposal-playbook-add-geopolitical-oil-shock.md`. 13 days carried. No fresh clean-test in window. Trump Wed framing + Rubio-UAE-Hormuz layer adds nuance but neither validates nor falsifies directional-bias.
- **CLARITY Act signing-day playbook-entry-add candidacy** — T+9d carry; approaches within-window threshold.
- **Structural-regime-overlay META-mechanism (06-05)** — n=9 unchanged; **deadline lapsed 10 days; AT-LAPSED-DEADLINE-TEN-DAYS** standing-color escalation.
- **NEW first-of-kind anchors this scan** (all n=1 unless noted; sub-threshold for standalone proposal-write per ≥3 spec; logged as discrete anchors):
  - "cross-aggregator-BTC-peak-anchor-date-discrepancy-May-15-vs-May-25" n=1 (§4).
  - "Rubio-UAE-Hormuz-Gulf-state-mediated-transit-channel" n=1 (§3).
  - "detached-HEAD-at-session-start-recurs-third-consecutive-session" **n=3 threshold-cross** via in-window recurrence (06-21 + 06-23 + 06-25). Banked-not-written per harder-anti-pattern (infrastructure-config).
- **NEW sub-class anchor RESOLVED this run** (premise multi-source ambiguity resolved via fresh cross-check):
  - "cross-aggregator-current-FOMC-target-range-discrepancy" (06-23 origin, n=1) — **RESOLVED at 3.50–3.75%.** **First non-retirement resolution in routine memory** (prior three resolutions were all retirements).
- **Sub-class anchors REINFORCED this run:**
  - "ETF-single-positive-day-without-IBIT-or-GBTC-leadership-as-non-recovery-pattern" (06-12 origin, n=1) → n=2 (06-23 reinforces). Sub-threshold per ≥3 spec.

## Output summary

```
[EVENT SCAN] 1 mapped-URGENT-firing in 7d (NFP Thu 07-02 T+7d enters window for first time since URGENT-2026-06-17, breaks 7-consecutive-scan no-URGENT carry; skip-default unless >2σ per playbook) + 1 context-only Tier-1 (PCE Thu 06-25 T+~4.5h not-mapped fires TODAY; highest-relevance non-URGENT event in routine memory; consensus headline +0.5%/+4.1% core +0.37%/+3.3%), 4 crypto news (★★★ Iran-channel Trump Wed "Iran making very big concessions" + Rubio-UAE-Abu-Dhabi Wed 06-24 Strait of Hormuz transit Gulf-state mediation + Israeli strikes 80+ Hezbollah targets southern Lebanon kinetic-asymmetry n=2 carry + ★★ BTC ~$62.7k Thu flat vs Wed −4.47% 7d cross-aggregator-peak-anchor-date discrepancy May-15 vs May-25 + ★★ Bitcoin ETF Mon 06-23 actual +$39.2M ARKB+MSBT NOT IBIT/GBTC echoes 06-12 single-day-positive non-recovery sub-class n=2 sixth-consecutive-weekly-outflow $5.94B + ★ no CEX hack no SEC enforcement no regulatory action), urgent=NO (PCE not-mapped + NFP T+7d not within 24h)
```

## Files touched

- `crypto/briefings/2026-06-25-event-scan.md` (this file, new)
- No URGENT file this run (PCE T+4.5h is unmapped per Step 5; NFP T+7d not within 24h)
- No new `learnings/proposal-*.md`
- No `brain/` edits (scan-only routine)
- No `strategy/` edits (human-owned)
- No `routines/` edits
- Infra-state: detached-HEAD → main fast-forwarded from 5d3c592 to 2c274e4 (30 commits 06-05 → 06-24 already on origin/main per stale local ref); this run's commit will push 2026-06-25-event-scan.md.

## Sources

- Kraken Blog "PCE data and June jobs report headline a data-heavy two weeks" (06-24): https://blog.kraken.com/economic-brief/june-24-2026
- Morningstar "May PCE Expected to Show Rising Inflation": https://www.morningstar.com/economy/may-pce-expected-show-rising-inflation
- BEA PCE Price Index landing: https://www.bea.gov/data/personal-consumption-expenditures-price-index
- TradingEconomics United States Core PCE Price Index Annual Change: https://tradingeconomics.com/united-states/core-pce-price-index-annual-change
- Cleveland Fed Inflation Nowcasting: https://www.clevelandfed.org/indicators-and-data/inflation-nowcasting
- FXStreet Nonfarm Payrolls forecast: https://www.fxstreet.com/macroeconomics/economic-indicator/nfp
- MarketPulse OANDA "July Non-Farm Payrolls preview": https://www.marketpulse.com/markets/july-non-farm-payrolls-preview/
- BLS Employment Situation release schedule: https://www.bls.gov/schedule/news_release/empsit.htm
- Fox News live 06-24 "Trump warns U.S. will act if deal fails": https://www.foxnews.com/live-news/us-iran-peace-deal-nuclear-talks-israel-lebanon-conflict-june-24-2026
- CFR "Trump Extended the Iran War Ceasefire. Now What?": https://www.cfr.org/articles/trump-extended-the-iran-war-ceasefire-now-what
- NBC News live "Trump rebukes Israel-Iran ceasefire violations": https://www.nbcnews.com/world/middle-east/live-blog/live-updates-iran-israel-trump-ceasefire-rcna214671
- Wikipedia "2026 Iran war ceasefire": https://en.wikipedia.org/wiki/2026_Iran_war_ceasefire
- CoinStats AI "Bitcoin (BTC) Daily Market Analysis 24 June 2026": https://coinstats.app/ai/a/latest-news-for-bitcoin
- spotedcrypto "Bitcoin ETF Inflows June 2026: IBIT Ends Record Outflow Streak": https://www.spotedcrypto.com/bitcoin-etf-outflows-june-2026-ibit-recovery/
- Investing.com "Bitcoin Falls as Record ETF Outflows and Strategy Sale Hit Sentiment": https://www.investing.com/analysis/bitcoin-falls-as-record-etf-outflows-and-strategy-sale-hit-sentiment-200681446
- Farside Investors BTC ETF flow table: https://farside.co.uk/btc/
- Disruption Banking 06-23 "The CLARITY Act Cleared the House and a Senate Committee": https://www.disruptionbanking.com/2026/06/23/the-clarity-act-cleared-the-house-and-a-senate-committee-xrp-holders-want-to-know-what-happens-on-the-floor/
- CoinDesk 05-06 "White House targets July 4 for Clarity Act passage": https://www.coindesk.com/policy/2026/05/06/white-house-targets-july-4-for-clarity-act-passage-says-crypto-adviser-patrick-witt
- 24/7 Wall St "XRP Price Prediction After the White House's July 4 CLARITY Act Deadline": https://247wallst.com/investing/2026/05/08/xrp-price-prediction-after-the-white-houses-july-4-clarity-act-deadline/

# Backtest Priors — BTCUSDT 5m BB-Scalp, 2 Years

**Data:** Binance public klines, BTCUSDT 5m, 2026-04-20 back to 2024-04-20 (730 days, ~210k bars, 11,820 BB-bounce setups).
**Backtest date:** 2026-04-19
**Method:** For each bar where close ≤ lower BB(20,2), RSI<55, and pattern ∈ {red_candle, hammer, doji}, simulate forward with TP/SL + 24-bar (2h) time-stop. Conservative: SL checked first within a bar.

This file is the **historical prior** the routines should reason against. When a bucket's live performance significantly diverges from the prior for ≥ 10 trades, that's a real signal worth a discovery learning.

---

## Headline: current strategy (TP 1.0% / SL 0.75% / RSI<55) over 2 years

| | Value |
|---|---|
| Setups fired | 11,820 |
| TP hit (win) | 1,532 (13.0%) |
| SL hit (loss) | 2,952 (25.0%) |
| Time-stop (2h expiry) | 7,336 (62.1%) |
| Gross P&L | **+135.5%** (0.011%/trade avg) |
| **After 0.2% round-trip commission** | **−2,228.5%** |

**The strategy has positive gross edge but NEGATIVE net edge after Binance taker fees.** At 0.1% per side (0.2% round-trip), the commission cost exceeds the gross edge by a wide margin. This is the single most important fact in this file.

The small-sample 84% win rate from the first 25 live trades was a lucky draw, not the underlying distribution.

---

## By regime — ONE regime is net-positive after fees

| Regime | n | Win% | Avg% | Sum gross | **Sum net (after comm)** |
|---|---|---|---|---|---|
| **trending_up** | 29 | **27.6%** | **+0.21%** | +6.2% | **+0.4%** ✅ |
| trending_down | 2,677 | 24.9% | +0.02% | +41.1% | −494.3% |
| high_vol_down | 390 | 34.1% | −0.07% | −27.8% | −105.8% |
| ranging_up | 308 | 13.0% | +0.05% | +16.2% | −45.4% |
| ranging_down | 8,414 | 8.1% | +0.01% | +99.8% | **−1,583.0%** ❌ |
| unknown | 2 | — | — | — | — |

**Takeaway:** `trending_up` is the only regime that's net-positive after commission. But it's rare — 29 setups in 2 years ≈ 14 trades/year, roughly one per month.

`ranging_down` (price below EMA-50 with low vol) is the biggest loser and also the biggest bucket (71% of all setups). **The single biggest improvement possible is filtering out `ranging_down`** — even at gross break-even it would save −1,583% in commission drag over 2 years.

---

## By pattern — minimal difference, red_candle marginally best

| Pattern | n | Win% | Avg% | Notes |
|---|---|---|---|---|
| red_candle | 10,756 | 13.1% | +0.02% | Vast majority of setups |
| hammer | 771 | 11.7% | −0.02% | Worse than red_candle, contrary to lore |
| doji | 293 | 10.6% | −0.03% | Worst of the three |

**Pattern filtering isn't adding much.** The strategy is approximately pattern-agnostic.

---

## By RSI — filter doesn't matter much

| RSI filter | n | Win% | Gross | After comm |
|---|---|---|---|---|
| <30 | 6,199 | 14.1% | +86.6% | −1,153.2% |
| <40 | 10,809 | 13.0% | +121.7% | −2,040.1% |
| <55 (current) | 11,820 | 13.0% | +135.5% | −2,228.5% |
| <70 | 11,820 | 13.0% | +135.5% | −2,228.5% |

RSI<30 slightly improves win rate and halves commission drag. But the net remains deeply negative. **Tightening RSI cuts trades (fewer commission hits) without materially improving edge.**

---

## TP/SL grid — no configuration is profitable after fees

Full 30-combo grid search. Best gross P&L configurations:

| TP / SL | Win% | Gross | After comm |
|---|---|---|---|
| 2.0% / 0.25% | 1.5% | **+140.9%** | −2,223.1% |
| 1.0% / 0.25% | 8.5% | +138.5% | −2,225.5% |
| 1.0% / 0.75% (current) | 13.0% | +135.5% | −2,228.5% |
| 0.5% / 0.25% | 25.2% | +84.1% | −2,279.9% |
| 0.3% / 0.25% | 40.8% | +22.4% | −2,341.6% |

No TP/SL combination overcomes 0.2%/trade commission at 11,820 trades. The grid confirms what the baseline shows: **fee drag is the dominant cost**.

---

## By hour UTC — real effects

Best 5 hours:
- 20:00 UTC — 17.9% win, **+0.13%** avg (best)
- 00:00 UTC — 16.3% win, +0.08% avg
- 07:00 UTC — 8.8% win, +0.05% avg
- 21:00 UTC — 13.5% win, +0.05% avg
- 12:00 UTC — **23.5% win**, +0.04% avg

Worst 5 hours:
- 15:00 UTC — 16.3% win, −0.06% avg (NY lunch)
- 16:00 UTC — 8.6% win, −0.06%
- 06:00 UTC — 5.9% win, −0.05%
- 14:00 UTC — 25.3% win, −0.02% (big winners AND big losers)
- 08:00 UTC — 7.3% win, −0.01% (London open)

Note the scalper already trades 08:00–22:00 UTC. Tightening to **12:00–22:00 UTC** would cut out 08:00, 14:00, 15:00, 16:00 which are all negative, and keep 20:00 which is the best hour.

---

## By day of week

| DOW | n | Win% | Avg% |
|---|---|---|---|
| Mon (0) | 1,687 | 15.2% | −0.02% |
| Tue (1) | 1,806 | 14.7% | −0.02% |
| **Wed (2)** | 1,634 | **16.2%** | **+0.08%** ✅ |
| Thu (3) | 1,712 | 15.2% | −0.02% |
| **Fri (4)** | 1,696 | **16.6%** | **+0.04%** ✅ |
| Sat (5) | 1,541 | 3.7% | +0.05% (small sample, quirky) |
| Sun (6) | 1,744 | 8.5% | −0.01% |

Wed and Fri are the best days. Mon / Tue / Thu / Sun are modestly negative. Sat has a very low win rate but still positive avg (small magnitude wins, rare SL hits).

---

## What the routines should do with this

1. **Hardest filter: skip `ranging_down` entirely.** Don't trade when price is below 5m EMA-50 and BB width is low. That one change saves −1,583% in commission drag over historical data.
2. **Prefer `trending_up`.** The only net-positive regime. Aggressive sizing when it shows up.
3. **Prefer 12:00–22:00 UTC over 08:00–11:00 UTC.** Worst hours are the NY open hours (14:00–16:00).
4. **Prefer Wed / Fri; cautious Mon / Tue / Thu / Sun.**
5. **Pattern filtering is mostly noise** — don't spend complexity budget there.
6. **RSI<30 modestly helps** — consider tightening from <55 to <30 when trading `trending_up` or volatile regimes.

---

## The larger strategic question

Even with ALL the above filters applied (trending_up only, best hours, best days, RSI<30), the 2-year trade count would be maybe 5–10 trades with positive net. **That's not enough to be a "system."** 

Two real paths forward:
- **A. Lower fees.** Binance maker orders are 0.02% vs taker 0.1%. If the scalper used limit orders near the BB lower band instead of market buys on signal, and only executed when filled, net commission drops 80%. This could flip the strategy from −2,228% to roughly +0% over 2 years.
- **B. Different strategy.** Mean reversion on 5m has weak edge before fees on BTC. Momentum / breakout strategies show higher per-trade edge historically but need a different backtest. Consider a hybrid.

Both are real work. Neither is "tweak the regime heuristics."

---

## Caveats

- Conservative SL assumption: if a bar's low ≤ SL AND high ≥ TP, we assume SL hit first. Real results may vary depending on tick sequence.
- No slippage modeled. Binance BTC-USDT is highly liquid so ≤1 bps slippage is reasonable, but at £30 position size the effect could be nonzero.
- Time-stop at 24 bars (2h). Live scalper uses MAX_HOLD_MINS=120 → same.
- Commission of 0.1%/side = Binance taker VIP-0. Higher tiers or maker orders have materially lower fees.
- 2-year window includes both bull and bear phases. Edge might be regime-dependent beyond what this file captures.

---

## For the next routine review

Compare 2-day live trading outcomes against these priors. Specifically:
- Live win rate in `trending_up` should be ~27% — if it's below 15% live, the regime classifier is miscalibrated
- Live win rate in `ranging_down` should be ~8% — if we're still trading that regime, something is wrong with the skip filter
- Overall live win rate < 10% after 20+ trades = strategy is broken and a rethink is warranted
- Overall live win rate > 30% after 20+ trades = either we got lucky OR the regime-based filter is working and it's time to size up

**This file was generated by a one-shot backtest. Routine learnings supersede it when they have sufficient evidence (typically ≥ 20 live trades per bucket).**

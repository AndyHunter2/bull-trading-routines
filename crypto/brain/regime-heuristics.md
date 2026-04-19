# Regime Heuristics — Crypto BB Scalper

**Owner:** Evolved by the `crypto-regime` routine. Human may edit.
**Last rewrite:** 2026-04-19 based on `backtest-priors.md` (2-year backtest of 11,820 setups).

This file encodes what market conditions map to which regime parameters. The routine reads it, reasons about current conditions, maps to a regime, writes to Supabase, and may append new heuristics here.

---

## The hard lesson from the 2-year backtest

The default strategy is gross-positive but net-negative after 0.2% round-trip commission. The ONLY way the scalper makes money going forward is to be VERY selective about when to trade:

1. **Skip `ranging_down` entirely** — 71% of historical setups, consistently fee-drag negative. Biggest win available.
2. **Favour `trending_up`** — only regime that's net-positive. Rare.
3. **Avoid 14:00–16:00 UTC** — NY open window, worst hours historically.

Default regime is now set to skip entries unless we have a clear reason to trade. This is conservative by design. The routine earns the right to trade by classifying a regime that the backtest has shown to be net-positive OR by providing reasoning from macro/news that overrides historical priors.

---

## Default regime (bootstrap / uncertain conditions)

```yaml
regime: default
position_pct: 30
stop_loss_pct: 0.75
take_profit_pct: 1.0
skip_entries: true   # <- changed from false after backtest review
max_trades_per_hour: 6
reason: "Default: no regime matched; skip to avoid fee drag in unclassified conditions."
```

**Rationale:** Trading in unknown conditions historically loses money after fees. Default is to sit out. A matched regime actively earns the right to trade.

---

## Tradeable regimes (net-positive or high-probability)

### `trending_up` — the golden regime (backtest: +0.21% avg/trade, 27.6% win)

**Conditions:**
- BTC 1h close > 1h EMA-50 for 6+ consecutive hours
- BB width 1h > 1.0% of price (meaningful range to capture)
- 4h higher-highs AND higher-lows for last 4 bars
- Funding rate positive but < 0.03% (directional but not over-crowded)
- Hour UTC in [12, 13, 17, 18, 19, 20, 21] (best historical hours)
- No FOMC/CPI/NFP in next 2h

**Params:**
```yaml
regime: trending_up
position_pct: 40          # size up on the one profitable regime
stop_loss_pct: 1.0        # slightly wider SL — winners tend to run further
take_profit_pct: 2.0      # take more of the trend
skip_entries: false
max_trades_per_hour: 3    # don't over-trade
```

**Expected outcome per backtest prior:** ~27% win rate, +0.21% avg/trade gross = **+0.01% net after commission** (marginal but positive).

### `ranging_high_quality` — handpicked ranges (derived, not directly in backtest)

**Conditions:**
- BB width 1h between 1.5% and 2.5% of price (wide enough for meaningful bounces, not so wide that it's chaos)
- BTC within ±1.5% of 24h midpoint (mean-reverting behaviour plausible)
- RSI 1h < 30 AND 5m RSI also < 30 at signal
- Hour UTC in [12, 20] (best historical hours, n=983, +0.04% and +0.13% avg)
- No events in next 2h

**Params:**
```yaml
regime: ranging_high_quality
position_pct: 30
stop_loss_pct: 0.5        # tighter SL for the cleaner setups
take_profit_pct: 0.75     # tighter TP matches reality of ranging moves
skip_entries: false
max_trades_per_hour: 4
```

**Expected outcome:** better than backtest's `ranging_up` aggregate (13% win) because of hour + RSI filters. Target 20%+ win rate.

---

## Skip regimes

### `ranging_down` — skip (backtest: −1,583% net over 2 years, 8,414 trades)

**Conditions:**
- BTC 1h close < 1h EMA-50
- BB width 1h < 1.0% of price (low vol)
- No higher-highs / higher-lows pattern on 4h

**Params:**
```yaml
skip_entries: true
reason: "ranging_down — backtest shows 8.1% win rate with heavy commission drag; skip."
```

### `trending_down` — skip (backtest: −494% net over 2 years)

**Conditions:**
- BTC 1h close < 1h EMA-50 for 6+ consecutive hours
- Lower-highs AND lower-lows on 4h
- BB width 1h > 1.0% of price

**Params:**
```yaml
skip_entries: true
reason: "trending_down — fighting the trend; historical net −494% after commission."
```

### `dangerous` — macro event

**Conditions (any):**
- FOMC rate decision within 2h
- US CPI print within 2h
- US NFP release within 2h
- Major BTC-specific news in last 4h (ETF, hack, regulation)

**Params:**
```yaml
skip_entries: true
reason: "Event within 2h: <name>. Flat until after + 30 min buffer."
```

### `bad_hours` — worst historical windows

**Conditions (as modifier, applied after regime classification):**
- Current hour UTC in [6, 8, 14, 15, 16]

**Params:**
```yaml
skip_entries: true  # override any regime that says trade
reason: "hour <N> UTC: historically avg <−0.02 to −0.06>% / trade — skip."
```

---

## Conservative defaults for ambiguous cases

If inputs are missing or classification is borderline, default to skip. The historical priors show that trading in uncertain conditions is expensive.

Specifically:
- If `market-snapshot.json` is > 90 min old: `skip_entries: true` with reason "stale market data"
- If `ema_50_1h` can't be determined: skip
- If hour is in bad_hours and regime isn't `trending_up`: skip

---

## Learned adjustments

*(empty — routines append here as they discover pattern-specific learnings with ≥10 trades of evidence. Format: heading with date + what was learned + evidence, with link to the source `learnings/discovery-*.md` file.)*

---

## Meta

- This file was rewritten 2026-04-19 based on backtest evidence. Previous version was theory-driven; this version is data-driven.
- Backtest source of truth: `crypto/brain/backtest-priors.md`. When a live outcome diverges from those priors with ≥ 20 trades, the routine may propose updates here.
- Humans (Andy) have final say on any rule change. Routine proposes via `learnings/proposal-*.md`; human edits this file.

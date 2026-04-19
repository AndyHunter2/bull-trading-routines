# Regime Heuristics — Crypto BB Scalper

**Owner:** Evolved by the `crypto-regime` routine. Human may edit.

This file encodes what market conditions map to which regime parameters. The routine reads it, reasons about current conditions, maps to a regime, writes to Supabase, and may append new heuristics here.

## Default regime (bootstrap)

Matches the scalper's hardcoded constants:

```yaml
regime: default
position_pct: 30
stop_loss_pct: 0.75
take_profit_pct: 1.0
skip_entries: false
max_trades_per_hour: 6
```

Use this when no other regime clearly applies, or on the first run before enough data is gathered.

## Regime classification — current ruleset

### `ranging_low_vol` — mean reversion sweet spot
**Conditions:**
- BB width (1h, std 2.0) has been under 1.5% of price for 4+ hours
- BTC 1h price within ±2% of 24h midpoint
- No FOMC/CPI/major news in next 4h
- Funding rate near zero (±0.01% hourly) — no crowded directional bet

**Params:**
```yaml
position_pct: 40
stop_loss_pct: 0.5
take_profit_pct: 0.8
max_trades_per_hour: 8
```
**Why:** Tight range → more entries → tighter TP/SL → more total captured P&L.

### `trending_up` — skip or take only very best
**Conditions:**
- BTC 1h close > 1h EMA-50 for 6+ hours straight
- Daily close > daily EMA-20 by 2%+
- Higher highs and higher lows on 4h

**Params:**
```yaml
position_pct: 10
stop_loss_pct: 1.5
take_profit_pct: 2.5
max_trades_per_hour: 2
```
**Why:** In trends, lower BB touches are buying dips that keep dipping. Shrink size, widen stops to avoid whipsaws, only take best setups.

### `trending_down` — skip entirely
**Conditions:**
- BTC 1h close < 1h EMA-50 for 6+ hours straight
- Daily close < daily EMA-20 by 2%+
- Lower highs and lower lows on 4h

**Params:**
```yaml
skip_entries: true
reason: "Strong downtrend — BB lower band touches keep dipping. Mean reversion edge negative."
```
**Why:** Worst environment for this strategy. Don't fight a trend.

### `high_vol_ranging` — chop, cautious
**Conditions:**
- BB width (1h) > 3% of price
- No clear trend direction on 4h
- Recent 4h range > 5%

**Params:**
```yaml
position_pct: 20
stop_loss_pct: 1.5
take_profit_pct: 2.0
max_trades_per_hour: 4
```
**Why:** Big moves in both directions. Keep size moderate, widen stops to avoid whipsaw.

### `dangerous` — macro event
**Conditions (ANY):**
- FOMC rate decision within 2h
- US CPI print within 2h
- NFP release within 2h
- Major BTC-specific news (ETF decision, exchange hack, regulation)

**Params:**
```yaml
skip_entries: true
reason: "Event within 2h: <name>"
```
**Why:** Event-driven moves are not mean-reverting. Flat until event clears + 30min buffer.

## Learned adjustments

*(empty — routines append here as they discover pattern-specific learnings. Format: heading with date + what was learned + evidence.)*

## Meta: when to re-read this file

Routine must read this file at the start of every run. If it's been more than 7 days since the routine last added a learning, write a note here with zero learnings worth adding (so Andy sees the routine is still thinking).

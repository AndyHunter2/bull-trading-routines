# BTC BB-Bounce Scalp — Core Strategy

**Owner:** Human-edited. Routines MAY NOT modify this file.

## The trade

Buy BTC when price touches the lower Bollinger Band on a 5-minute candle, hold for TP or SL, exit within 2 hours regardless.

### Entry conditions (ALL must be true)
1. Current 5m close is at or below the lower Bollinger Band (period 20, std 2.0)
2. RSI < 55 on the same candle
3. Candle pattern is one of: `red_candle`, `hammer`, `doji`
4. Trading session is open (08:00–22:00 UTC)
5. No existing open BTC position
6. More than 10 minutes since last trade (cooldown)
7. Circuit breaker is not active (fewer than 2 consecutive losses)
8. `crypto_config.realtime_enabled = true` AND `realtime_shadow_mode = false`
9. `crypto_regime.skip_entries = false`

### Exit conditions (ANY triggers a sell)
- Price hits take profit (`regime.take_profit_pct` above entry)
- Price hits stop loss (`regime.stop_loss_pct` below entry)
- Position age exceeds `MAX_HOLD_MINS` (120 minutes) — "time stop"
- Session ends (22:00 UTC)

### Position sizing
- `position_value = min(cash * 0.95, total_portfolio_value * regime.position_pct / 100)`
- Minimum trade size: £5. Below that, signal is logged but skipped.

## Why this strategy

- **Mean-reversion** in a ranging market. Lower BB touch suggests oversold relative to 20-period mean.
- **RSI filter** avoids buying into strong downtrends (where "oversold" stays oversold).
- **5m candles** balance noise (1m had too many fake bounces) against latency (15m missed entries).
- **Session gate** — overnight BTC swings were net-negative in 5-coin predecessor, carved out.
- **Tight TP/SL** — 1.33:1 reward:risk ratio needs only ~43% win rate to break even.

## What this strategy does NOT handle

1. **Strong trends** — in a trending market, BB lower band gets hit repeatedly on the way down. Need regime routine to skip these sessions.
2. **Event days** — Fed announcements, CPI prints, BTC-specific news (ETF approvals, exchange hacks). Need regime routine to flag `skip_entries = true`.
3. **Volatility regime shifts** — when BB width doubles, standard SL gets whipsawed. Need regime routine to widen SL or shrink position.

These gaps are exactly what the `crypto-regime` routine exists to fill.

## Constants (hardcoded in scout, not tunable by routine)

| Parameter | Value | Why hardcoded |
|---|---|---|
| `BB_PERIOD` | 20 | Standard, well-studied |
| `BB_STD_DEV` | 2.0 | Standard |
| `RSI_MAX_ENTRY` | 55 | Tuned from prior 30 days, changing needs a real backtest |
| `MAX_HOLD_MINS` | 120 | Time-stop protects against stuck positions |
| `COOLDOWN_SECS` | 600 | Prevents over-trading |
| `CANDLE_INTERVAL` | 5m | Changing this is a new strategy |
| `COMMISSION_PCT` | 0.1 | Binance VIP-0 market-taker assumption |
| `MAX_CONSECUTIVE_LOSSES` | 2 | Circuit breaker trigger |
| `CIRCUIT_BREAKER_MINS` | 120 | Pause after 2 losses |

## Track record before routine integration

- **16 Apr 2026**: 25 trades, 84% win rate, −£848 net realised. Asymmetric loss pattern — wins capped at +1% (≈£300 avg at £30k position), losses at −2%+ (stops slipping in volatile bars, avg −£620).
- **17 Apr 2026**: reset to £100 sandbox, fixed phantom-column silent write bug in execute_buy, restarted.
- **19 Apr 2026**: regime integration deployed. This file authored.

## Rules for modifying this file

Only Andy edits this file. If a routine believes the strategy itself is broken (not just the parameters), it writes `/crypto/learnings/proposal-<slug>.md` and stops — don't change the rules unilaterally.

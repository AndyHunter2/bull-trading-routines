# Archive: BB Scalper (17-19 April 2026)

Deactivated 19 April 2026 after empirical evidence showed the strategy has no fee-covering edge at retail Binance fees.

## What was here

A Bollinger-Band mean-reversion scalper running on BTCUSDT 5-minute candles, operated from a VPS WebSocket client with regime tuning via Claude Code Remote Triggers.

## Why it was killed

Extensive backtests over 2 years of BTC data (11,820 simulated trades on the primary strategy, plus 11 variants across 1h and 4h timeframes):

- Best configuration at **maker fees (0.04% round-trip)**: 4h mean reversion, −8%/yr
- Best configuration at **taker fees (0.20% round-trip)**: same, −28%/yr
- ALL tested parameter combinations across 5m, 1h, 4h timeframes were **net negative after fees**

The gross edge on BTC technical setups is 0.01–0.04%/trade on 5m, too small to overcome retail transaction costs. This is structural to retail crypto scalping, not a bug in this implementation.

Full findings: `backtest-priors.md`.

## What lives on

This archive preserves the scalper work (strategy, heuristics, routines, priors) for reference. Nothing here is active.

The learning from this work — routine infrastructure, regime-file relay pattern, memory architecture — has been repurposed for the event-driven (Option C) strategy that replaces it.

## Live infrastructure deprecated by this archive

- `/home/andy/backups/crypto_realtime_scout.py` → moved to `/home/andy/backups/archive/crypto_realtime_scout.py.deactivated_2026-04-19`
- `crypto-realtime-scout.service` → stopped, disabled
- `bull-regime-sync.timer` → stopped, disabled
- `bull-market-snapshot.timer` → stopped, disabled (will be reused at daily cadence for event-driven)
- Remote triggers `crypto-regime` + `crypto-close` → disabled in Claude Code routines (not deleted, in case we want to reference)

## Open trade at time of pivot

One BTC position was open at £55,525 entry. Marked `archived_option_c_pivot` — not counted in the new sandbox.

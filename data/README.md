# /data — VPS ↔ Routine data relay

This directory is the bridge between the VPS (which has network access to Binance + Supabase) and Claude Code routines (which run in a cloud sandbox with GitHub egress only).

## Files

### `market-snapshot.json`
**Written by:** VPS (`/home/andy/backups/market_snapshot.py`, systemd timer every 30 min)
**Read by:** `crypto-regime` routine on its hourly tick

Contains: BTC current price, BB bands, EMA-50, RSI, 4h higher-highs/lows pattern, funding rate, 24h range.

### `current-regime.json`
**Written by:** `crypto-regime` routine (commits to main at end of run)
**Read by:** VPS (`/home/andy/backups/regime_sync.py`, systemd timer every 60 sec) — syncs to Supabase `crypto_regime` row id=1 if changed.

The **scalper** continues to read regime from Supabase (unchanged), so the relay is transparent to the live trading path.

## Why this exists

The default Claude Code routine environment blocks egress to Binance and Supabase (`host_not_allowed`). Rather than depend on the user configuring a custom environment, the VPS handles all external API work and relays through the repo.

Propagation latency:
- VPS writes market snapshot → routine reads it on next hour: up to 30 min stale
- Routine writes regime → VPS syncs to Supabase: ≤60 sec
- Supabase → scalper: ≤60 sec
- Scalper applies to next entry: next 5m candle close (≤5 min)
- **Total worst case regime → scalper action: ≤6 min**

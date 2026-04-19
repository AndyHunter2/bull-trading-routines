# Supabase Query Patterns for Routines

All calls use `SUPABASE_URL` + `SUPABASE_SERVICE_KEY` from env. Never hardcode.

## Read crypto_regime (current regime)

```bash
curl -sS "$SUPABASE_URL/rest/v1/crypto_regime?id=eq.1" \
  -H "apikey: $SUPABASE_SERVICE_KEY" \
  -H "Authorization: Bearer $SUPABASE_SERVICE_KEY"
```

## Write crypto_regime (update regime)

```bash
curl -sS -X PATCH "$SUPABASE_URL/rest/v1/crypto_regime?id=eq.1" \
  -H "apikey: $SUPABASE_SERVICE_KEY" \
  -H "Authorization: Bearer $SUPABASE_SERVICE_KEY" \
  -H "Content-Type: application/json" \
  -H "Prefer: return=representation" \
  --data '{
    "regime": "ranging_low_vol",
    "position_pct": 40,
    "stop_loss_pct": 0.5,
    "take_profit_pct": 0.8,
    "skip_entries": false,
    "max_trades_per_hour": 8,
    "reason": "BB width 1.2% for 6h, BTC ±1.8% of midpoint, no events in 4h",
    "source": "crypto-regime-routine",
    "updated_at": "2026-04-19T15:00:00Z"
  }'
```

## Recent trades (last 24h)

```bash
curl -sS "$SUPABASE_URL/rest/v1/crypto_trade_log?trade_date=gte.$(date -u +%Y-%m-%d)&order=created_at.desc" \
  -H "apikey: $SUPABASE_SERVICE_KEY" \
  -H "Authorization: Bearer $SUPABASE_SERVICE_KEY"
```

## Open positions

```bash
curl -sS "$SUPABASE_URL/rest/v1/crypto_portfolio?status=eq.open" \
  -H "apikey: $SUPABASE_SERVICE_KEY" \
  -H "Authorization: Bearer $SUPABASE_SERVICE_KEY"
```

## Current portfolio state

```bash
curl -sS "$SUPABASE_URL/rest/v1/crypto_config?id=eq.1" \
  -H "apikey: $SUPABASE_SERVICE_KEY" \
  -H "Authorization: Bearer $SUPABASE_SERVICE_KEY"
```

## Binance public (market data — no key needed)

```bash
# BTC 1h candles last 100
curl -sS "https://api.binance.com/api/v3/klines?symbol=BTCUSDT&interval=1h&limit=100"

# BTC 4h candles last 50
curl -sS "https://api.binance.com/api/v3/klines?symbol=BTCUSDT&interval=4h&limit=50"

# Order book depth
curl -sS "https://api.binance.com/api/v3/depth?symbol=BTCUSDT&limit=100"

# Funding rate (perpetual futures, indicates directional bet crowding)
curl -sS "https://fapi.binance.com/fapi/v1/fundingRate?symbol=BTCUSDT&limit=1"
```

Kline format: `[openTime, open, high, low, close, volume, closeTime, quoteVolume, trades, takerBuyBase, takerBuyQuote, ignore]`.

## Common mistake

Don't use `-H "Content-Type: application/json"` on GET — some curl versions choke. Only add it for POST/PATCH.

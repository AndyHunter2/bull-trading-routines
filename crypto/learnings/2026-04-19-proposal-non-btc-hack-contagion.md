# Proposal: broaden `dangerous` hack trigger to include major non-BTC crypto exploits

**Date:** 2026-04-19
**Routine:** crypto-regime (19:00 UTC run)
**Category:** proposal

## Observation

Today's classification had an ambiguity. The `dangerous` regime condition reads:

> Major BTC-specific news in last 4h (ETF, hack, regulation)

A ~$293M Kelp DAO exploit happened today — the largest DeFi hack of 2026
so far. Kelp DAO is a Solana-based liquid-staking protocol. Strictly read,
the hack is **not BTC-specific**, so the rule would not trigger `dangerous`.

But the BTC snapshot at 18:54 UTC shows clear contagion:

- Price 74,718 vs 24h mid 75,424 → −0.94% below mid
- Price below lower BB 1h (74,718 < 74,791)
- RSI 1h 32.9 (mildly oversold)
- 3 consecutive hours below EMA-50 1h
- 24h range dips to 74,608 (price sitting near the low)

That posture is consistent with a risk-off move across crypto following a
major exploit headline, not a random ranging move.

## Reasoning

I classified as `dangerous` rather than falling to `default`, on the
basis that "hack" in the heuristic should be read broadly: if a top-5
DeFi exploit of the year has just occurred and BTC is already selling
off, the scalper is better off flat than trying to fade the lower BB.

This is effectively an interpretation of the existing rule, not a new
rule. But the rule's literal text ("BTC-specific") is narrower than how
I applied it.

## Proposal

Consider rewriting the `dangerous` hack clause to something like:

> Major crypto-industry news in last 4h — BTC-specific (ETF decisions,
> BTC-related regulatory actions) OR ≥ $100M hack/exploit on any major
> chain (BTC contagion is usually visible in price within 1–2 hours)

Threshold and wording are both for Andy to decide. The $100M number is a
first-pass cutoff — lower would make the filter too noisy, higher would
have missed today.

## What I did NOT do

- Did not edit `regime-heuristics.md` directly. Rule changes are human-owned.
- Did not propose a new strategy or parameter envelope change. This is a
  classification-rule interpretation only.

## How to apply in future

Until this proposal is adopted or rejected:

- If a major non-BTC exploit occurs AND the BTC snapshot shows price
  weakness consistent with contagion (below EMA-50, below lower BB, or
  near 24h lows), err toward `dangerous`. Cite this file in the reason.
- If a major non-BTC exploit occurs AND BTC is unaffected (price
  above EMA-50, ranging normally), the existing default or ranging
  classification probably still fits — the scalper can continue.

# Credentials

Safe to commit — these are the **anon** (public) Supabase credentials. The anon key is the same key embedded in the Makarios website client bundle at makariosestates.com.

Writes are guarded at the application layer (routines respect the envelope in `CLAUDE.md`). Reads go through RLS policies that grant anon appropriate access to the crypto tables.

If this key is ever rotated at the Supabase dashboard:
1. Update the values below
2. Commit + push
3. All routines pick up the new key on their next run (they read this file each run)

---

**Supabase project:** `jbhxfhtjfgyxkneopghl` (main)

**URL:**
```
https://jbhxfhtjfgyxkneopghl.supabase.co
```

**Anon key:**
```
eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImpiaHhmaHRqZmd5eGtuZW9wZ2hsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Njk3MDA3MTEsImV4cCI6MjA4NTA2MDcxMX0.XFReLrMgn-ciPDEDelZHjkMcWV8y9ZhqfpZyw4kuZao
```

---

## How routines should use these

Every routine prompt loads these values at the top of its bash session:

```bash
SUPABASE_URL="https://jbhxfhtjfgyxkneopghl.supabase.co"
SUPABASE_ANON_KEY="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImpiaHhmaHRqZmd5eGtuZW9wZ2hsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Njk3MDA3MTEsImV4cCI6MjA4NTA2MDcxMX0.XFReLrMgn-ciPDEDelZHjkMcWV8y9ZhqfpZyw4kuZao"
```

Or parse this file at runtime with `grep` — your choice. Inlining is simpler.

## Tables the anon key has access to

| Table | Anon permissions | Notes |
|---|---|---|
| `crypto_regime` | SELECT + UPDATE + INSERT | Write via PATCH `?id=eq.1` |
| `crypto_config` | SELECT + UPDATE + INSERT + DELETE | Live portfolio state — read only, don't write |
| `crypto_portfolio` | SELECT + UPDATE + INSERT + DELETE | Open positions — read only, don't write |
| `crypto_trade_log` | SELECT + UPDATE + INSERT + DELETE | Trade history — read only, don't write |

**Only `crypto_regime` is yours to write.** The scalper manages the others.

## What this key CANNOT do

- Access the `auth.*` schema (users, sessions)
- Bypass RLS policies on other tables
- Call service-role-restricted RPCs
- Modify schema (DDL)

If you need any of those, that's a sign you're overreaching — stop and ask Andy.

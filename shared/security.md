# Security rules for routines

## Never commit

- API keys (Supabase, Perplexity, anything)
- JWTs, service role keys
- `.env` files (gitignored)
- SSH private keys
- Passwords

## Always use env vars

Every routine environment in Claude Desktop has these set:
- `SUPABASE_URL`
- `SUPABASE_SERVICE_KEY`
- `PERPLEXITY_API_KEY` (optional)

Access them via `$VAR` in bash or `os.environ["VAR"]` in Python. **Never** paste the value into a prompt, markdown, or code.

## Reading secrets from user messages

If Andy pastes a key into a conversation, do NOT:
- Commit it to the repo
- Echo it back in plain text
- Use it outside the current turn

Tell him to rotate it and put the new key in the routine environment.

## If you think a secret leaked

1. Stop the routine
2. Write a `learnings/incident-secret-leak-<date>.md` with what leaked and where
3. Commit that file
4. Alert Andy immediately via whatever channel is available (do not include the secret in the alert)

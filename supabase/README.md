# Live Supabase deployment

This directory tracks the production deployment for Supabase project
`mtteurtqhfaawwuiwuqd`.

- The baseline migration version is `0001` (`open_brain_core`).
- `20260915081300_optimize_thoughts_rls.sql` records the production RLS
  performance fix applied on 2026-09-15.
- `open-brain-mcp` mirrors the deployed core function.
- `update-thought-mcp` adds safe edits with optimistic concurrency.
- JWT verification is disabled for both functions because each function
  performs its own shared-key authentication.

No credentials or secret values belong in this repository.

# Learnings — format

One file per insight. Filename convention:
```
YYYY-MM-DD-<kebab-case-slug>.md
```

Prefixes:
- `proposal-` — a suggestion for a rule change that the routine is NOT making unilaterally; Andy to review
- `discovery-` — a new heuristic the routine DID add to `brain/regime-heuristics.md`
- `incident-` — something that went wrong (silent write failure, regime misclassification, etc.)
- `outcome-` — post-trade analysis worth remembering

## Required sections

```markdown
# <Title>

**Date:** 2026-04-19
**Routine:** crypto-regime / crypto-close / crypto-weekly
**Category:** proposal | discovery | incident | outcome

## Observation
What happened (facts, with prices / timestamps / DB state).

## Reasoning
Why it matters. What pattern does it reveal?

## Action taken
What you changed (if anything). If `proposal-`, leave this empty.

## How to apply in future
Specific, testable rule. If it can't be stated as "if X then Y", it's probably not a learning yet.
```

Keep each file under 300 words. If you can't, you're writing prose, not a learning.

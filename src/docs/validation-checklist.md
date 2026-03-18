# Validation Checklist

When adding content, ensure all items below are satisfied:

## Document Structure

- [ ] Title uses proper `#` heading (document title)
- [ ] **Information Architecture** field present and describes how player discovers puzzle
- [ ] **Player Action Pattern** uses numbered list with concrete steps
- [ ] **Core Mechanic** is exactly one sentence
- [ ] **Variations** section lists possible manifestations

## Game Examples Section

- [ ] Each example has `### [Game]: [Puzzle Name]` header
- [ ] **Setup** provides brief context description
- [ ] **Solution Chain** uses numbered list with specific actions (1-5 steps typical)
- [ ] Actions describe discoveries, not generic "solve puzzle" language
- [ ] **Why It's This Type** explicitly connects example to core mechanic above

## Cross-Referencing

- [ ] `## Related Types` section included at end of document
- [ ] At least 2 related types identified in table format
- [ ] Similarity column explains what they share
- [ ] Distinction column clarifies difference clearly

## Convention Compliance

- [ ] Game source code used (MI1, MI2, KQVI) — not full game name
- [ ] Filename matches kebab-case of document title
- [ ] No vague adjectives ("clever," "creative") in descriptions
- [ ] Tone is mechanical and precise throughout

## Before Submitting

Run the following to verify markdown syntax (optional):

```bash
npx -y remark-cli README.md puzzles/*.md docs/*.md
```

Check that all linked files exist:
```bash
grep -o "\./[^)]*\.md" SUMMARY.md | xargs -I {} test -f {} && echo "All links valid"
```

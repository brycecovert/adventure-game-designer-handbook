# Style & Formatting Guidelines

## Frontmatter

No YAML headers required (unlike Jekyll/Hugo sites).

## Link Format

Use relative links: `./puzzles/file.md` or just `[./file-name.md](./file-name.md)`

## Headings Structure

- `# Type Name` — Document title (one per file)
- `## Game Examples` — Section for concrete instances
- `### [Game]: [Puzzle Name]` — Individual example
- `## Related Types` — Cross-references section

## Tables

Use for:
- Comparisons between puzzle types
- Requirement summaries
- Quick-reference matrices

```markdown
| Type | Similarity | Distinction |
|------|------------|-------------|
| Multi-Faceted Plan | Both gather across sources | MFP = different categories, not unified system |
```

## Lists

- **Numbered lists** for sequential steps or solution chains
- **Bullet lists** for enumerations without order

## Emphasis

Use bold (`**text**`) for:
- Field labels: **Setup**, **Solution Chain**, **Why It's This Type**
- Key terms (sparingly)

## Code Blocks

Use triple-backticks with `markdown` for example structures showing game flows:

````markdown
```markdown
1. Examine object A → discover property X
2. Talk to NPC B → learn about need Y
3. Combine A with Z → solution unlocks
```
````

## Tone

- **Mechanical and precise** — avoid vague terms like "clever," "creative"
- Describe **how** not just **that**
- Example: Instead of "The player cleverly uses the mirror," write "The player examines the mirror, notes its reflective surface matches the telescope requirement discovered earlier"

## File Naming

Use kebab-case: `multi-faceted-plan.md`, `pattern-learning.md`, `cross-temporal-causality.md`

# Puzzle Design Knowledge Base

A handbook documenting puzzle design patterns from classic point-and-click adventure games (King's Quest VI, Monkey Island series). This repository captures mechanical patterns—how information is conveyed and what player actions solve puzzles.

## Agent Instructions

### Repository Purpose

This is a **documentation-only knowledge base** built with [mdbook](https://rust-lang.github.io/mdBook/).

- `/src/puzzles/` — Markdown documents defining puzzle type patterns
- `/src/docs/` — Style guides and validation checklists
- `/src/SUMMARY.md` — Navigation structure for mdbook
- `/book/` — Generated HTML documentation (after `mdbook build`)

### Building the Documentation

```bash
# Build static HTML
mdbook build

# Serve with auto-reload during editing
mdbook serve --open
```

### Adding New Content

**When analyzing a new game walkthrough:**

1. Extract each puzzle's solution from walkthrough text
2. For each, identify: what info was needed, how it was conveyed, what action solved it
3. Match against existing types in `/README.md` table OR create new type document
4. Add example to relevant `.md` file in `/src/puzzles/` under `## Game Examples`
5. If creating new type: update `/README.md` table and `/src/SUMMARY.md` (increment number, add link)

**File naming**: Use kebab-case (`multi-faceted-plan.md`, `pattern-learning.md`)

**Game source codes**: KQVI (King's Quest VI), MI1 (Monkey Island 1), MI2 (Monkey Island 2)

### Document Structure Template

Each puzzle type follows this standard format:

```markdown
# [Type Name]

**Information Architecture**: How player discovers puzzle structure.

**Player Action Pattern**:
1. Step one
2. Step two
3. Solution

**Core Mechanic**: Single sentence explaining underlying logic.

**Variations**: Brief list of possible manifestations

---

## Game Examples

### [Game]: [Puzzle Name]

**Setup**: Brief context description.

**Solution Chain**:
1-5. Actions with discoveries...

**Why It's This Type**: Explicit connection to core mechanic above.

---

## Related Types

| Type | Similarity | Distinction |
```

### Style & Formatting Guidelines

**Frontmatter**: None required (no YAML headers)

**Link format**: Relative links using `puzzles/file.md` (in SUMMARY.md and docs)

**Tables**: Use for comparisons, requirement summaries, and quick-reference matrices

**Lists**: 
- Numbered lists for sequential steps or solution chains
- Bullet lists for enumerations without order

**Emphasis**: Bold (`**text**`) for field labels like **Setup**, **Solution Chain**, key terms

**Code blocks**: Use triple-backticks with `markdown` for example structures showing game flows

**Tone**: Mechanical and precise. Avoid vague terms ("clever," "creative"). Describe *how* not just *that*.

### Cross-Referencing Rules

Every new puzzle type must include a `## Related Types` section linking to:
- Most similar existing types (explain what they share)
- Easily confused types (explain the distinction)

Use table format for related types:
```markdown
| Type | Similarity | Distinction |
|------|------------|-------------|
| Multi-Faceted Plan | Both gather across sources | MFP = different categories, not unified system |
```

### Validation Checklist

When adding content, ensure:

- [ ] Core Mechanic is exactly one sentence
- [ ] Solution Chain uses numbered list with specific actions (not "solve puzzle")
- [ ] "Why It's This Type" explicitly connects example to core mechanic
- [ ] Related Types section differentiates from at least 2 similar types
- [ ] Game source code used (MI1, MI2, KQVI) — not full game name
- [ ] Filename matches kebab-case of document title

### Common Pitfalls

**Pattern Learning vs Observation Replay**: Pattern learning teaches a *system* with reusable rules. Observation replay memorizes a *sequence* to reproduce verbatim.

**Multi-Faceted Plan vs Meta-Construction**:
- MFP: Multiple requirements gathered in any order, synthesized at the end
- Meta-Construction: Sequential chain where step N's output enables step N+1

**Brokerage vs Sensory Exploitation**: Brokerage = trade network (item for item). Sensory = exploit NPC perception weakness directly.

### Workflow Commands

```bash
# Build documentation
mdbook build

# Validate markdown syntax (optional)
npx -y remark-cli src/*.md src/puzzles/*.md src/docs/*.md
```

### Skill Integration

The `.opencode/skills/adventure-puzzle-analyzer/` directory contains:
- `SKILL.md` — Full agent workflow for analyzing walkthroughs
- `examples.md` — Concrete formatting examples

Agents should load the `adventure-puzzle-analyzer` skill when working with this repository.

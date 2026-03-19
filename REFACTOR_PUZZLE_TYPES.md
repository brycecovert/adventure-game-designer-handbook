# Refactoring Puzzle Type Pages

## Analysis

### Current State

The puzzle type pages in `/src/puzzles/` suffer from severe inconsistency and bloat:

| File | Lines | Issues |
|------|-------|--------|
| `pattern-learning.md` | 825 | Massive dump of all analysis, no clear sections |
| `sensory-exploitation.md` | 860+ | Same problem |
| `multi-faceted-plan.md` | 1000+ | Same problem |
| `sequential-construction.md` | ~300 | Slightly better but still inconsistent |

**What works:**
- Game inspiration pages (e.g., `beneath-a-steel-sky.md`) use a clean, consistent format:
  - Problem
  - Why It Works
  - Solution
  - Steps (numbered)
  - Pattern Type links

### Target Format (per README)

The README specifies playbook pages should have:
1. Understandable title describing the core mechanic
2. What this puzzle type achieves and when to use it
3. Mechanic-oriented analysis (setting-independent patterns)
4. Three illustrative examples from reference games
5. Cross-links to cited puzzles in Inspiration section
6. Index table of other game implementations

### Problems to Fix

1. **No Core Mechanic section** — Most pages bury the core mechanic in prose
2. **No Solution Chain format** — Should be numbered steps, not prose
3. **Too many examples** — Pages try to include ALL examples; should be exactly 3
4. **Inconsistent "Why It's This Type"** — Some have it, some don't
5. **Missing Related Types tables** — Some have it, format varies
6. **Verbose analysis should move to inspiration pages** — The deep walkthrough analysis belongs in game inspiration docs, not in the type definitions

---

## Refactoring Template

Every puzzle type page should follow this structure:

```markdown
# [Puzzle Type Name]

## Core Mechanic

(3 sentences max explaining what this pattern achieves)

## When to Use

(When designer should consider this puzzle type)

## Solution Chain

1. (Specific player action)
2. (Specific player action)
3. (Specific player action)

## Examples

### [Game Code]: [Puzzle Name]

**Problem**: One sentence on the obstacle.

**Why It's This Type**: Explicit connection to Core Mechanic.

**Solution**:
1. Step...
2. Step...

---

### [Game Code]: [Puzzle Name]

(Same format)

---

### [Game Code]: [Puzzle Name]

(Same format)

---

## Related Types

| Type | Similarity | Distinction |
|------|------------|-------------|
| [Type A](path.md) | Shared characteristic | Key difference |
| [Type B](path.md) | Shared characteristic | Key difference |

## Index

| Game | Puzzle | Section |
|------|--------|---------|
| MI1 | Swordfight Insults | Examples |
| KQVI | [Puzzle Name] | Inspiration |
```

---

## Files to Refactor

### Tier 1 (High Priority — Most Verbose)

1. **`pattern-learning.md`** (825 lines)
   - Keep: Core Mechanic, Solution Chain, 3 best examples
   - Move: Extended MI2/MI1/BAS/QFG4 analysis → respective game inspiration pages
   - Remove: Redundant examples beyond 3

2. **`sensory-exploitation.md`** (860+ lines)
   - Keep: Core Mechanic, 3 examples (parrot, poodle, Medusa mirror)
   - Move: QFG3 honeybird/meerbat, Loom tower, etc. → inspiration pages

3. **`multi-faceted-plan.md`** (1000+ lines)
   - Keep: Core Mechanic, 3 examples
   - Move: QFG2/QFG3/QFG4 multi-examples → inspiration pages
   - Keep meta-puzzle distinction in Related Types

### Tier 2 (Medium Priority)

4. **`sequential-construction.md`** — Needs Core Mechanic section, trim examples
5. **`information-brokerage.md`** — Needs format cleanup
6. **`environmental-storytelling.md`** — Needs format cleanup
7. **`memo-chain.md`** — Needs format cleanup

### Tier 3 (Lower Priority — Already Compact)

8. **`truth-revelation.md`** — Already reasonable length
9. **`cross-temporal-causality.md`** — Needs minor cleanup
10. **`cross-realm-logistics.md`** — Needs minor cleanup
11. **`multi-character-coordination.md`** — Needs minor cleanup
12. **`timed-consequence.md`** — Needs minor cleanup
13. **`comedy-based-persuasion.md`** — Needs minor cleanup
14. **`distraction-environmental-manipulation.md`** — Needs minor cleanup
15. **`class-specific-ritual.md`** — Needs minor cleanup
16. **`multi-faction-diplomacy.md`** — Needs minor cleanup
17. **`robot-programming.md`** — Needs minor cleanup
18. **`escalating-combat-progression.md`** — Needs minor cleanup
19. **`surreal-logic-bridge.md`** — Needs minor cleanup
20. **`metaphor-literal.md`** — Needs minor cleanup
21. **`observation-replay.md`** — Needs minor cleanup
22. **`symbol-code-translation.md`** — Needs minor cleanup

---

## Migration Strategy

### Moving Analysis to Inspiration Pages

For each example removed from puzzle type pages:

1. Add to appropriate game inspiration page under "Other Notable Puzzles" table
2. Link back to the puzzle type page
3. Include brief description (1-2 sentences)

**Example:**

Before (in `pattern-learning.md`):
```markdown
### Grim Fandango: Coat Check System + Photo Finish Ticket (GF - Year Two)

[800 lines of detailed analysis...]
```

After (in `inspiration/grim-fandango.md`):

Add to "Other Notable Puzzles":
```markdown
| Grim Fandango: Coat Check + Photo Finish | [[Pattern Learning](../puzzles/pattern-learning.md)] | Color-coded ticket systems encode information requiring symbol translation |
```

### Updating Cross-References

After refactoring:
1. Verify all links in `SUMMARY.md` still work
2. Update any `Also Uses:` references in inspiration pages
3. Ensure Related Types tables point to correct files

---

## Quality Checklist

After refactoring each page, verify:

- [ ] Core Mechanic is ≤ 3 sentences
- [ ] Solution Chain uses numbered list with specific actions
- [ ] Exactly 3 examples with "Why It's This Type" analysis
- [ ] Related Types differentiates from ≥ 2 similar types
- [ ] Filename matches kebab-case title
- [ ] Page targets ≤ 400 lines
- [ ] All game references use source code (MI1, KQVI) not full names
- [ ] Links to inspiration pages for extended examples

---

## Implementation Order

1. **Update skill template** (`adventure-puzzle-analyzer/SKILL.md`) to reflect target format
2. **Refactor Tier 1 pages** as pilot (pattern-learning, sensory-exploitation, multi-faceted-plan)
3. **Update inspiration pages** with migrated examples
4. **Refactor Tier 2 pages**
5. **Review and cleanup Tier 3 pages**
6. **Run validation** (`npx remark-cli`) on all changed files
7. **Build and verify** (`mdbook build`)

---
name: adventure-puzzle-analyzer
description: Analyzes point-and-click adventure game walkthroughs to identify, categorize, and document puzzle mechanics. Use when analyzing new game walkthroughs or updating the puzzle design handbook.
---

# Adventure Puzzle Analyzer Skill

## Quick Start

```
1. Read walkthrough, list all puzzle solutions
2. For each: what info + how conveyed + what action solved it?
3. Match to existing types in /puzzles/ OR create new type
4. Document and update README.md table of contents
```

## Instructions

### Step 1: Extract Puzzle Solutions

For each walkthrough section, note:
- What player needed to discover
- How information was conveyed (dialogue, environment, text, trial-and-error)
- Action(s) that solved it
- Whether info came from one or multiple sources

### Step 2: Classify Against Existing Types

**Read /README.md** for full list of existing types. Quick reference:

| Type | Key Indicator |
|------|---------------|
| Pattern Learning / Knowledge Transfer | Learn system in Domain A, apply same rules in Domain B |
| Multi-Faceted Plan | Multiple INDEPENDENT requirements gathered from different sources |
| Meta-Puzzle Construction | Sequential chain where STEP N'S OUTPUT = Step N+1's INPUT |
| Memo Chain | Scattered written fragments that synthesize into solution |
| Metaphor-to-Literal | Idiomatic/poetic language decoded into literal game objects |
| Information Brokerage | NPC exchange network: who wants what from whom |
| Sensory Exploitation | NPC has perceptual weakness/sense; exploit directly |
| Distraction Physics | Manipulate ENVIRONMENT to break NPC blocking pattern |
| Observation Replay | Watch sequence once under blocked conditions, reproduce exactly later |
| Timed Consequence | Story urgency without mechanical timer/deadline |

**If none fit**: Read existing type definitions in `/puzzles/` to confirm no match. Consider new type if at least 2 distinct puzzles share same information architecture.

### Step 3: Document

**Adding example to existing type:**
1. Open relevant file in `puzzles/`
2. Add under "## Game Examples" section using standard format (see Template below)
3. Optionally add to "## Related Types" or "## Common Misidentifications" if it clarifies boundaries

**Creating new type:**
1. Create new markdown file in `puzzles/` with kebab-case name
2. Use template below for structure
3. Update `/README.md` table of contents (add row, increment number)
4. Cross-reference from most similar existing types

## Standard Template

Every puzzle type page should follow this structure (target: ≤400 lines):

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

**Key Rules:**
- Core Mechanic: ≤ 3 sentences
- Exactly 3 examples (not 5, not 10)
- Solution Chain: numbered, specific actions (not "solve puzzle")
- "Why It's This Type": explicit connection to Core Mechanic
- Move extended analysis to game inspiration pages, not type definitions
- Use source codes (MI1, KQVI, QFG3) not full game names

## Guidelines

### DO:
- Focus on MECHANICS, not story details
- Keep Core Mechanic to ≤ 3 sentences
- Use exactly 3 examples with consistent format
- Link extended analysis to game inspiration pages
- Use source codes (MI1, KQVI, QFG3) not full game names
- Distinguish parallel (MFP) vs sequential (Meta-Construction) requirements

### DON'T:
- Document game-specific mechanics that don't generalize
- Create new types without 2+ examples OR one very complex example
- Use vague terms ("clever," "creative") — be mechanical
- Exceed 400 lines per page — move details to inspiration pages

## Quick Pitfalls

| Confusion | Test |
|-----------|------|
| Pattern Learning vs Observation Replay | Learn SYSTEM (PL) vs memorize SEQUENCE (OR) |
| MFP vs Meta-Construction | Gather in any order? Yes = MFP, No = Meta-Construction |
| Brokerage vs Sensory Exploitation | Trade ITEM for ITEM (IB) vs exploit PERCEPTION weakness (SE) |
| Page length | If >400 lines, move examples to inspiration pages |

## Reference

- `/puzzles/` directory: All existing puzzle type definitions
- `/README.md`: Master table of contents — use to find related types for cross-reference ideas

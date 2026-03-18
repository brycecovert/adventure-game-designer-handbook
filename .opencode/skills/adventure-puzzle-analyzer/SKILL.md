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

```markdown
# [Puzzle Type Name]

**Information Architecture**: How info is conveyed to player

**Player Action Pattern**: 
1. Step one
2. Step two  
3. Solution

**Core Mechanic**: One sentence on underlying logic.

**Variations**: Brief list or table of manifestations

---

## Game Examples

### [Game]: [Puzzle Name]

**Mechanic**: Brief setup.

**Solution Chain**:
1. Action with discovery...
2. Action...
3. Result...

**Why It's This Type**: Explicit connection to core mechanic.

---

## Related Types

| Type | Similarity | Distinction |
```

## Guidelines

### DO:
- Focus on MECHANICS, not story details
- Use /README.md as reference for related types when cross-linking
- Keep Core Mechanic to ONE sentence
- Distinguish parallel (MFP) vs sequential (Meta-Construction) requirements

### DON'T:
- Document game-specific mechanics that don't generalize
- Create new types without 2+ examples OR one very complex example
- Use vague terms ("clever," "creative") — be mechanical

## Quick Pitfalls

| Confusion | Test |
|-----------|------|
| Pattern Learning vs Observation Replay | Learn SYSTEM (PL) vs memorize SEQUENCE (OR) |
| MFP vs Meta-Construction | Gather in any order? Yes = MFP, No = Meta-Construction |
| Brokerage vs Sensory Exploitation | Trade ITEM for ITEM (IB) vs exploit PERCEPTION weakness (SE) |

## Reference

- `/puzzles/` directory: All existing puzzle type definitions
- `/README.md`: Master table of contents — use to find related types for cross-reference ideas

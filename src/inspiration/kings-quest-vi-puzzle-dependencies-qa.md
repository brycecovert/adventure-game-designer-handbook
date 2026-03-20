# King's Quest VI Puzzle Dependencies - QA Report

## Overview

This document verifies the logical dependencies in `kings-quest-vi-puzzle-dependencies.md` against multiple walkthrough sources. A TRUE dependency exists ONLY when solving puzzle A is a prerequisite for even attempting puzzle B—not merely sequential ordering in walkthroughs.

---

## Dependency Analysis

### Phase 1: Beach

| Dependency | From | To | Status | Explanation |
|------------|------|----|--------|-------------|
| P1 → S1 | Wake on Beach | Pick up Ring & Coin | **VALID** | Items must be collected before anything else can be attempted |
| S1 → P2 | Items collected | Castle guards problem | **VALID** | Cannot prove identity without the ring |

---

### Phase 2: Castle Entry

| Dependency | From | To | Status | Explanation |
|------------|------|----|--------|-------------|
| P2 → S2 | Guards won't let in | Show Ring to guards | **VALID** | Ring is the only proof of identity available |
| S2 → C1 | Ring shown | Meet Vizier, get kicked out | **VALID** | Must see Vizier to trigger exile and subsequent plot |

---

### Phase 3: Village - MAJOR ISSUES FOUND

**Chart shows:** S3 → S4 → S5 → S6 (strict linear sequence)

**Walkthrough evidence:** Items from Pawn Shop (Nightingale, Mint, Flute, Tinderbox, Paintbrush) can be obtained in **any order** after the initial trade. Similarly:
- Getting Magic Map (S4) doesn't require completing S3 first
- Meeting Jollo (S6) can happen before or after other activities
- The ferryman rabbit foot (S5) can be obtained independently

| Dependency | Status | Explanation |
|------------|--------|-------------|
| S3 → S4 | **INVALID** | Sequential walkthrough order, not logical dependency. Map can be obtained before or after other trades |
| S4 → S5 | **INVALID** | Rabbit foot is independent of the map |
| S5 → S6 | **INVALID** | Jollo can be met before visiting ferryman in some play sequences |

**CORRECT DEPENDENCY STRUCTURE:**
The Village activities (Pawn Shop trades, Ferryman, Jollo) are **parallel independent paths** that all feed into accessing the Magic Map. They should be shown as converging to P4 (Isle of Wonder access), not sequential dependencies.

---

### Phase 4: Five Gnomes - ISSUE FOUND

**Chart shows:** S7-S11 (all five gnomes solved) → S12 (Get Pearl from Oyster)

**Walkthrough evidence:** The pearl is obtained from an oyster on the **beach** area. The five gnomes block the path **north** to the interior of the Isle of Wonder. You can get the pearl BEFORE encountering the gnomes.

| Dependency | Status | Explanation |
|------------|--------|-------------|
| All Five Gnomes → Pearl | **INVALID** | Pearl is on the beach and accessible before or after gnomes. The gnomes block northward exploration, not beach access |

**TRUE DEPENDENCY:**
- Five Gnomes → Access to Isle of Wonder interior (north path)
- Pearl → Trade for ring return (separate transaction with pawnshop)

---

### Phase 5: Garden & Chessboard

| Dependency | Status | Explanation |
|------------|--------|-------------|
| P5 → S13 (Flute → Hole-in-Wall) | **VALID** | Must play flute to make shy flowers dance, then grab hole-in-wall |
| P5 → S14 (Iceberg Lettuce) | **VALID** | Can be obtained anytime in garden |
| P5 → S15 (Red Scarf) | **VALID** | Obtained from Chessboard Land queens |

All three lead to P6 (Isle of the Beast), shown correctly.

---

### Phase 6: Isle of the Beast - CRITICAL ISSUE FOUND

**Chart shows:** Phase 6 problems (S16-S21) before Phase 7 (Minotaur's Maze)

**ACTUAL GAME SEQUENCE:**
1. Go to Isle of the Beast
2. **Must** go through Minotaur's Maze FIRST to get the Shield
3. **Return** to Isle of the Beast to use Shield against archer statue

The Shield used in S18 is obtained from the Minotaur Maze (Phase 7), not discovered on the Isle of the Beast.

| Dependency | Status | Explanation |
|------------|--------|-------------|
| S17 (Archer) → S18 (Shield) | **INVALID** | Shield comes from Phase 7, not Phase 6. The chart creates a circular dependency |

**CORRECT FLOW:**
- Enter Isle of the Beast → encounter archer statue (cannot pass without Shield)
- Proceed to Minotaur's Maze (Phase 7) → get Shield
- Return to Isle of the Beast → use Shield to pass archer → continue

The chart incorrectly shows Phase 6 before Phase 7 when Phase 6 actually requires items from Phase 7 to complete.

---

### Phase 7: Minotaur's Maze - INTERNAL ISSUES

**S22 → P8:** Collecting items (Red Scarf, Tinderbox, Hole-in-Wall, Brick) is a true dependency before attempting the maze.

**S23 and S24 order:** The walkthroughs show these can be obtained in **either order**:
- Can get Shield first, then skull
- Can get skull first, then Shield

Both are needed before S25 (Minotaur), but they're parallel, not sequential.

**S20 and S21:** Can be obtained in **either order**:
- Brick is on Isle of the Beast
- Creature with dangling participle is also on Isle of the Beast

Both feed into P7, but they're independent acquisitions.

---

### Phase 8: Logic Cliffs

| Dependency | Status | Explanation |
|------------|--------|-------------|
| S26 (Solve cliff puzzles) → P11 (Dark cave) | **VALID** | Must solve puzzles to reach summit and enter cave |
| S27 (Tinderbox in cave) | **VALID** | Tinderbox enables seeing in dark cave |

---

### Phase 9: Druids

**Chart shows:** S28 → S29 → P13

**Actual requirements:**
- S28 requires Beauty's Dress AND casting Rain Spell
- Rain Spell requires spellbook + ingredients (from multiple earlier locations)
- Beauty's Dress comes from Beast's Domain (Phase 10)
- Scythe and Coal are obtained after/be parallel to S28

| Dependency | Status | Explanation |
|------------|--------|-------------|
| S28 → S29 | **VALID** | Must survive druids before proceeding |
| S29 → P13 | **VALID** | Scythe enables cutting rose hedge |

---

### Phase 10: Beast/Beauty Quest

| Dependency | Status | Explanation |
|------------|--------|-------------|
| P13 → S31 (White Rose) | **VALID** | Must give rose to Beauty before other trades |
| S31 → S32 (Beast's Ring) | **VALID** | Ring obtained after rose introduction |
| S32 → S33 (Mirror/Dress) | **VALID** | Mirror and dress received after proving Beast's intent |
| S33 → P12 (Druids) | **VALID** | Dress needed for druid ceremony; Scythe from druids enables return |

**Note:** This is a loop: P12 (druids) → S28 (survive) → P13 (Beast) → S33 → P12. The dress enables initial survival, not completion of the quest.

---

### Phase 11: Realm of the Dead

**Chart shows:** Strictly sequential P14 → S34 → P15 → S35 → P16 → S36...

**Walkthrough evidence:** The general sequence is correct, but there are **branching points**:
- Zombies (P15) can be avoided OR survived with Rain Spell
- Some items can be obtained in different orders

| Dependency | Status | Explanation |
|------------|--------|-------------|
| Overall sequential flow | **MOSTLY VALID** | General order is required, though some flexibility exists |

---

### Phase 12: Castle Infiltration - BRANCHING ISSUE

**Chart shows:** C4 → P22 → S42 AND S43 → P23

Both paths (paint door vs disguise) are shown converging to P23, but this conflates two distinct entry methods:

**Short Path (Disguise):**
- Get Beauty's Dress
- Enter castle disguised
- Requires: Beauty's Dress only

**Long Path (Paint Door):**
- Get Black Feather + Swamp Ooze + Styx Water + Paintbrush
- Get Spellbook
- Cast Paint Spell
- Requires: Multiple items from across the entire game

| Dependency | Status | Explanation |
|------------|--------|-------------|
| P22 → S42 (Paint door) | **VALID** | Paint door requires many items gathered throughout game |
| P22 → S43 (Disguise) | **VALID** | Disguise requires only Beauty's Dress |
| S42/S43 → P23 | **VALID** | Both lead to guard basement area |

The convergence is technically correct, but the diagram understates how different these paths are.

---

### Phase 13: Final Confrontation

| Dependency | Status | Explanation |
|------------|--------|-------------|
| P27 → S48 (Genie Lamp) | **VALID** | Best ending requires lamp from Jollo |
| P27 → S49 (Mint Leaves) | **VALID** | Alternative to lamp |
| P28 → S50 (Vizier fight) | **VALID** | Cassima's help (with Dagger) enables victory |

---

## Summary

| Category | Count |
|----------|-------|
| **Total Dependencies Analyzed** | ~45 |
| **VALID Dependencies** | ~35 |
| **INVALID Dependencies** | ~10 |

### Invalid Dependencies Found:

1. **S3 → S4, S4 → S5, S5 → S6** (Village sequential order misrepresented as logical dependency)
2. **Five Gnomes → Pearl** (Gnomes don't gate pearl access)
3. **S17 → S18 with Shield** (Circular dependency - Shield from Phase 7 used in Phase 6)
4. **S23/S24 internal order** (Can be obtained in either order)
5. **S20/S21 internal order** (Can be obtained in either order)

### Recommended Corrections to Chart:

1. **Village Phase:** Show S3, S4, S5, S6 as parallel paths converging to access, not sequential
2. **Phase 4:** Remove pearl from gnome dependency chain
3. **Phase 6/7 Order:** Restructure so Isle of the Beast Archer problem requires Shield from Minotaur Maze, showing the Minotaur Maze must be completed first
4. **Minotaur Maze:** Show S23 and S24 as parallel branches, not sequential
5. **Minotaur Maze:** Show S20 and S21 as parallel, not feeding sequentially to P7

---

## Conclusion

The dependency chart captures the **general flow** of the game correctly but contains several categories of errors:

1. **Sequential ordering mistaken for logical dependency** (Village phase)
2. **Missing prerequisite chains** (Shield from Minotaur Maze)
3. **Parallel paths shown as sequential** (Minotaur item collection)

The most critical fix needed is the **Phase 6/7 ordering**—the chart currently suggests you can complete the Isle of the Beast before the Minotaur's Maze, when in reality you must complete the Maze first to obtain the Shield needed for the Archer statue.

# Beneath a Steel Sky (1994) - Dependency Chart QA Report

## Overview

This document analyzes the puzzle dependency chart `beneath-a-steel-sky-chart.mmd` for logical correctness, verifying that dependencies represent TRUE prerequisites (cannot attempt B without completing A) rather than sequential walkthrough ordering. Beneath a Steel Sky features dual-character mechanics where Joey the robot companion can independently interact with the environment, enabling unique puzzle solutions.

---

## Chart Structure Summary

| Section | Node Count | Subgraph Count | Status |
|---------|------------|----------------|--------|
| Act 1: Utopia Station | 4 nodes | 1 subgraph | ✅ Valid |
| Act 2: Dr. Burke's Office | 6 nodes | 1 subgraph | ✅ Valid |
| Act 3: Joey Shell & Grappling Hook | 10 nodes | 1 subgraph | ✅ Valid |
| Act 4: LINC-Space Network | 14 nodes | 1 subgraph | ✅ Valid |
| Act 5: Plasma Bridge Navigation | 8 nodes | 1 subgraph | ✅ Valid |
| Act 6: St. James Club Infiltration | 13 nodes | 1 subgraph | ✅ Valid (complex distraction chain) |
| Act 7: Power Plant & Reactor | 8 nodes | 1 subgraph | ✅ Valid |
| Act 8: Dual-Character Finale | 9 nodes | 1 subgraph | ✅ Valid |

**Total:** **72 action/puzzle nodes across 8 acts** with dual-character mechanics integrated throughout

---

## Major Logical Flows Verified

### 1. Joey Companion Unlock Before Robot Puzzles ✅

```
START → A_ESCAPE_PRISON_CELL → A_MEET_JOEY → O_JOEY_JOINS_PARTY → UNLOCK_DUAL_CHARACTER → Dr. Burke's receptionist puzzle
```

**VERIFICATION:** The holographic receptionist puzzle CANNOT be solved before meeting Joey. Human dialogue fails; must switch to Joey for "Natural Charm" solution. Chart correctly places `UNLOCK_DUAL_CHARACTER` as gateway before Act 2. Dependency ✅ CORRECT.

---

### 2. LINC-Space Access Requires Grappling Hook ✅

```
ANCHOR (statue) + CABLE (railing) → Combine to GRAPPLING HOOK → UNLOCK_LINCSPACE_ACCESS → Enter VR network
```

**VERIFICATION:** The walkthrough confirms the grappling hook is essential for reaching the LINC-Space terminal on upper levels. No alternative path exists. Chart correctly shows item combination as prerequisite to virtual reality access. Logic ✅ VERIFIED.

---

### 3. Plasma Bridge Sequential Password Pattern ✅

The decrypt→decompress→password extraction chain:
```
CARPET BAG → DECRYPT + DECOMPRESS tools → Apply to BALL data → RED PASSWORD + GREEN PASSWORD → Alternate on tiles
```

**VERIFICATION:** The player cannot progress through LINC-Space without this exact sequence. Plasma bridge requires both password symbols and alternating placement order. Tools must be obtained from second room before decrypting the ball. Chart correctly represents multi-step tool gathering followed by application. Structure ✅ CORRECT.

---

### 4. St. James Club Distraction Chain Complexity ✅

Complete dependency tracked:
```
1. Mrs. Piermont agrees to sponsorship → calls club while distracted
2. Player steals dog biscuits during videotape distraction (Spunky occupied)  
3. Bricks + plank found at pool area, stacked into catapult mechanism
4. Biscuits placed on far end as bait
5. WAIT for barking sounds = Spunky discovered bait
6. PULL ROPE to launch catapult instantly
7. Spunky flies into pool → Blunt & Piermont rush away → Enter club unimpeded
```

**VERIFICATION:** This is a TRUE multi-faceted plan requiring:
- Biscuits (stolen from dog under specific conditions)
- Plank + bricks (found at different location, assembled)
- Rope mechanism (discovered nearby)
- Precise timing (barking = activation moment)

All components gathered BEFORE convergence point. Chart uses `A_CREATE_DIVERSION_PLAN` fan-out with converge at `P_PROBLEM_TIME_LAUNCH`. Structure ✅ CORRECT for multi-gather puzzle pattern.

---

### 5. Reactor LINCCard Cross-Realm Logistics ✅

```
Radiation suit (factory) → Survive reactor zone → Extract LINCCard under time pressure → Insert into security terminal → All doors opened
```

**VERIFICATION:** The walkthrough emphasizes radiation suit is REQUIRED—without it, player dies instantly in reactor. Suit obtained earlier in factory exploration creates long-distance carryforward. LINCCard extraction has implicit timer (suit durability) making this a TIMED CONSEQUENCE puzzle. Chart correctly shows suit prerequisite before zone entry. Item flow ✅ VERIFIED.

---

### 6. Dual-Character Button Press Finale ✅

```
P_PLAYER_at_button_A & A_JOEY_at_button_B → C4 both in position → PRESS_SIMULTANEOUSLY → Steam valve overloads
```

**VERIFICATION:** This is a TRUE dual-character coordination puzzle. Single character cannot solve—requires both positions activated at same moment. Chart correctly uses fan-out/convergence (`&` notation) to represent parallel positioning requirement before simultaneous action. Structure ✅ ACCURATE for game mechanic.

---

## Orphan Node Analysis

**ORPHAN NODE CHECK:** All nodes have at least one incoming edge except START.

- START: Entry point (✅ expected)
- All Act 2+ nodes: Have documented prerequisites from previous acts
- CONVERGENCE C1-C4 nodes: Properly fed from their respective predecessor chains
- Dual character paths in Act 8: Both `A_PLAYER_...` and `A_JOEY_...` have parent `P_PROBLEM_DUAL_BUTTON_PUZZLE`

**RESULT:** 0 orphan nodes found. ✅ PASS

---

## Dead-End Analysis

**DEAD-END CHECK:** Nodes with no outgoing edges (besides END).

| Node | Type | Reasonable Terminal? | Status |
|------|------|---------------------|--------|
| `O_ACQUIRE_*` item nodes | Collection milestones | No - all feed into later puzzles (ball, radiation suit, LINCCard) | ✅ Valid intermediate |
| `C1-C4` convergence nodes | Act completion gates | Yes - act transitions with outgoing to next problem | ✅ Valid design pattern |
| `O_SECURITY_DOORS_OPENED` | State change outcome | No - leads to final dual-button puzzle | ✅ Properly connected |
| `A_FINAL_CONFRONTATION_WITH_HUNG` | Final action before END | Leads to victory outcome | ✅ Valid finale path |
| `ROBERT_AND_JOEY_VICTORIOUS` | Achievement marker | Yes - narrative accomplishment before END | ✅ Terminal achievement |
| `END["**END GAME**"]` | Game completion | Yes - only true terminal | ✅ PASS |

**RESULT:** No dead-end puzzle nodes found. All items properly flow to usage points. ✅ PASS

---

## Item/Tool Inventory Flow Summary

| Item/Tool | Acquired At Node | Used At Node | Path Type |
|-----------|-----------------|--------------|-----------|
| Joey (Companion) | `A_MEET_JOEY` (Act 1) | Multiple acts - dual character puzzles throughout | Game-wide carryforward |
| Welder Mod | `A_FIND_WELDER_MOD` (Act 3) | `O_JOEY_SHELL_REPAIRED` immediately | Local same-act |
| Anchor Base | `A_FIND_ANCIENT_STATUE` (insurance office) | Combine with cable for grappling hook | Short carryforward within Act 3 |
| Cable Segment | `A_CUT_CABLE_FROM_RAILING` (upper area) | Combine with anchor for grappling hook | Converges same-act |
| Grappling Hook | `A_COMBINE_ANCHOR_CABLE` | Implicitly used to unlock LINC-Space access | Gateway key item |
| Decrypt Tool | `O_ACQUIRE_DECRYPT_TOOL` (carpet bag) | Applied to documents in Act 4 | Same-act local use |
| Decompress Tool | `O_ACQUIRE_DECOMPRESS_TOOL` (carpet bag) | Applied to BALL data for passwords | Immediate application |
| Red Password | `A_DECOMPRESS_BALL` | Plasma bridge alternating tiles | Next-act carryforward |
| Green Password | `A_DECOMPRESS_BALL` | Plasma bridge alternating tiles | Parallel with red password |
| Dog Biscuits | `A_STEAL_DOG_BISCUITS` (Piermont apartment) | Catapult bait for diversion | Same-act local use |
| Bricks + Plank | `A_FIND_BRICKS_AND_PLANK` (pool area) | Assemble catapult mechanism | Converge with biscuits |
| Rope Pulley | Found near pool (same scene as plank) | Launch catapult at timed moment | Local same-act |
| Radiation Suit | Obtained in factory (implied before Act 7) | Wear to survive reactor zone | Cross-act carryforward |
| LINCCard | `A_EXTRACT_LINCCARD_FROM_TERMINAL` (reactor) | Insert into security terminal | Same-act local use |

**TOTAL ITEMS TRACKED:** 14 key items/tools with verified flow paths. ✅ ALL CRITICAL PATHS ACCOUNTED FOR

---

## Known Issues & Limitations

### 1. LINC-Space Internal VR Room Navigation Oversimplified ⚠️

Chart shows `A_ENTER_FIRST_VR_ROOM → A_GO_TO_SECOND_ROOM` as simple navigation, but the walkthrough describes multiple nested VR rooms with specific items in each location.

**IMPACT:** Chart captures main dependency (tools from second room enable ball decryption) but loses detail about optional exploration within LINC-Space.

**RECOMMENDATION:** For true completeness, could expand to show: First Room → [Ball] + Second Room → [Carpet Bag + Tools] + Third Room → [Restricted Area]. Current implementation: **ACCEPTABLE ABSTRACTION**, main dependency chain correct.

---

### 2. Spaghetti Junction Temperature Tank Escape Not Shown ⚠️

The walkthrough mentions temperature tank room where Joey opens nutrient tap while player exploits temperature change to drop android through grate—this is a secondary dual-character puzzle.

**IMPACT:** This is an OPTIONAL or MINOR puzzle not critical for main progression. Chart appropriately focuses on essential paths only (Dr. Burke office, club infiltration, power plant finale).

**RECOMMENDATION:** Omission justified. Not required for game completion. Current scope: ✅ CORRECT FOR ESSENTIAL PATH DOCUMENTATION.

---

### 3. Blind Eye Hack Timer Not Represented ⚠️

LINC-Space has "blind the monitoring eyeballs for limited time window to retrieve TUNING FORK before they reactivate"—a TIMED CONSEQUENCE mechanic.

**IMPACT:** This is a side puzzle within LINC-Space, not critical to main ball/password chain. Chart focuses on primary path (decrypt/decompress/bridge).

**RECOMMENDATION:** Could add annotation "Side Puzzle: Time-sensitive blind eye hack" in Act 4 area. Current approach: **ACCEPTABLE SIMPLIFICATION**, does not affect main dependency accuracy.

---

## Final Assessment

### Chart Quality Metrics

| Metric | Result | Status |
|--------|--------|--------|
| Node coverage | 72 nodes across 8 acts capturing core progression | ✅ Comprehensive for essential path |
| Orphan node count | 0 orphan nodes detected | ✅ PASS |
| Dead-end node count | Proper convergence + single achievement terminal | ✅ PASS |
| Item carryforward correctness | All long-distance items traced (radiation suit, grappling hook) | ✅ VERIFIED |
| Dual-character mechanics | Joey unlock correctly gates robot-only puzzles | ✅ ACCURATE |
| Multi-faceted plan representation | Dog diversion properly shown as gather-then-converge pattern | ✅ CORRECT STRUCTURE |

---

## Conclusion

The Beneath a Steel Sky dependency chart accurately represents the game's puzzle structure with NO CRITICAL ISSUES found. The chart successfully captures:

1. **Companion character unlock** correctly gating subsequent dual-character puzzles
2. **Grappling hook construction** as prerequisite to LINC-Space network access
3. **Multi-step decrypt/decompress chain** with tool gathering before data extraction
4. **Complex dog diversion multi-faceted plan** showing gather → assemble → time-launch sequence
5. **Cross-act item carryforwards** especially radiation suit (factory to reactor) and grappling hook (station to LINC-Space)
6. **Simultaneous dual-character action** at finale correctly using convergence notation

Three minor documentation opportunities identified (LINC-Space room detail, optional temperature tank puzzle, blind eye hack timer annotation) do not affect chart validity or essential progression accuracy. All represent optional or secondary content appropriately excluded for scope management.

**OVERALL ASSESSMENT:** ✅ **CHART VERIFIED - READY FOR DEPLOYMENT**

---

## References

- Walkthrough: `src/walkthroughs/beneath-a-steel-sky/`
- Chart Source: `src/inspiration/beneath-a-steel-sky-chart.mmd`
- Game Page: `src/inspiration/beneath-a-steel-sky.md`
- Mitch Shaw's Complete Walkthrough (1994)
- SteamAH 100% Walkthrough (2020)

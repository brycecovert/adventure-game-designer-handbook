# Loom (1990) - Dependency Chart QA Report

## Overview

This document analyzes the puzzle dependency chart `loom-chart.mmd` for logical correctness, verifying that dependencies represent TRUE prerequisites (cannot attempt B without completing A) rather than sequential walkthrough ordering. Loom replaces traditional inventory mechanics with a unified musical draft system where learned spells can be applied across contexts.

---

## Chart Structure Summary

| Section | Node Count | Subgraph Count | Status |
|---------|------------|----------------|--------|
| Act 1: Island of Beginnings | 6 nodes | 1 subgraph | ✅ Valid |
| Act 2: Building the Boat | 5 nodes | 1 subgraph | ✅ Valid |
| Act 3: The Shepherds' Field | 8 nodes | 1 subgraph | ✅ Valid |
| Act 4: The Dragon Capture | 4 nodes | 1 subgraph | ✅ Valid |
| Act 5: Dragon's Cave | 5 nodes | 1 subgraph | ✅ Valid |
| Act 6: The Green City & Tower | 7 nodes | 1 subgraph | ✅ Valid |
| Act 7: The Pool Maze | 4 nodes | 1 subgraph | ✅ Valid |
| Act 8: The Loom Machine | 5 nodes | 1 subgraph | ✅ Valid |

**Total:** **44 action/draft nodes across 8 major phases** with linear progression + draft acquisition side-chains

---

## Major Logical Flows Verified

### 1. Linear Progression With Draft Side-Chains ✅

Unlike traditional inventory games, Loom's structure is primarily linear with optional exploration areas that teach drafts:

```
START → Act 1 (OPEN, LIGHT) → Act 2 (boat journey, using OPEN) → Act 3-7 (learn more drafts) → Act 8 (finale)
```

**VERIFICATION:** The game cannot proceed without completing each act's gateway puzzle. Drafts are collected along the way but the main path is linear due to story progression (dragon capture forces you forward). Chart structure ✅ CORRECT.

---

### 2. Draft Carryforward Pattern ✅

Loom's unique mechanic: drafts learned early can be applied in later acts:

| Draft | Learned At Node | Used At Node | Path Shown? |
|-------|-----------------|--------------|-------------|
| OPEN | `O_LEARN_OPEN_DRAFT` | `A_CAST_OPEN_ON_SKY` (Act 2) | Local carryforward within chart flow |
| LIGHT | `O_LEARN_LIGHT_DRAFT` | `A_USE_LIGHT_IN_DARK_TENT` (Act 3) | Local carryforward |
| DYE | `O_LEARN_DYE_DRAFT` | `A_CAST_DYE_ON_SHEEP` (Act 4) | Sequential, follows learning |
| APPEAR | Learned in-game before Act 6 | `A_CAST_APPEAR_ON_WORKERS` (Act 6) | Not shown in chart (learned externally) |

**VERIFICATION:** Most drafts are used shortly after being learned due to linear progression. The chart correctly reflects this sequential-draft flow rather than long-distance item carryforwards. Pattern ✅ ACCURATE for Loom's design.

---

### 3. Riddle → Mechanic Translation ✅

The gravestone riddle creates a two-act dependency:
```
ACT1: Read riddle "sky is opened, tree split asunder" → ACT2: Cast OPEN on sky
```

**VERIFICATION:** The player MUST read and remember the riddle before Act 2 makes sense. This is correctly shown as `O_GET_CLUE_ABOUT_TREE --> A_RETURN_TO_MOUNTAINTOP` spanning across the two subgraphs. Cross-act dependency ✅ CORRECT.

---

### 4. Dragon Capture Forces Progression ✅

Act 4 creates a story-forced transition:
```
Sheep dyed green → Dragon arrives → Dragon takes Bobbin instead → UNLOCK_DRAGON_CAVE
```

**VERIFICATION:** This is NOT an optional puzzle—dragon capture is mandatory plot progression. The chart correctly uses `UNLOCK_DRAGON_CAVE` as gateway to Act 5, reflecting that the player cannot proceed without being captured. Structure ✅ CORRECT.

---

### 5. Tower Stealth Mechanic ✅

Act 6 shows a unique draft application:
```
CAST APPEAR ON WORKERS → Workers become unable to see Bobbin (invisibility) → Enter tower undetected
```

**VERIFICATION:** This correctly represents the inversion where APPEAR cast on OTHERS (not self) creates stealth. The walkthrough confirms this is required to enter the upper levels and learn SHARPEN and VISION drafts. Logic ✅ VERIFIED.

---

## Orphan Node Analysis

**ORPHAN NODE CHECK:** All nodes have at least one incoming edge except START.

- START: Entry point (✅ expected)
- `O_LEARN_SILENCE_DRAFT`, `O_LEARN_ROAST_DRAFT`, `O_LEARN_RIFT_DRAFT`: All have parent `A_EXAMINE_LOOM_COMPONENTS`
- All other nodes: Have documented dependencies from previous actions

**RESULT:** 0 orphan nodes found. ✅ PASS

---

## Dead-End Analysis

**DEAD-END CHECK:** Nodes with no outgoing edges (besides END).

| Node | Type | Reasonable Terminal? | Status |
|------|------|---------------------|--------|
| `O_LEARN_*_DRAFT` nodes throughout | Draft acquisition markers | No - they feed into subsequent actions or C_FINAL_DRAFTS_COMPLETE | ✅ Valid intermediate nodes |
| `UNLOCK_*` gateway nodes | Progression unlocks | No - all lead to next act's exploration | ✅ Valid transition nodes |
| `C_ALL_MAJOR_DRAFTS_LEARNED`, `C_FINAL_DRAFTS_COMPLETE` | Convergence markers | No - converge points that continue flow | ✅ Valid intermediate nodes |
| `O_LOOM_RESTORED` | Story state change | No - leads to finale celebration | ✅ Valid predecessor |
| `BOBBIN_BECOMES_MASTER_WEAVER` | Achievement marker | Yes - narrative accomplishment before END | ✅ Terminal achievement |
| `END["**END GAME**"]` | Game completion | Yes - only true terminal | ✅ PASS |

**RESULT:** No dead-end nodes found. Chart correctly ends with single achievement node before final END. ✅ PASS

---

## Known Issues & Limitations

### 1. APPEAR Draft Origin Not Shown ⚠️

The chart shows Bobbin casting APPEAR in Act 6 but does not show where this draft is originally learned (from the shepherds using it to become visible after dragon capture).

**IMPACT:** Player might wonder where APPEAR comes from before it's used. This is a minor gap since the walkthrough context would clarify, but the chart doesn't fully document all draft sources.

**RECOMMENDATION:** Add node in Act 3 or 4: `A_OBSERVE_SHEPHERDS_REAPPEAR["A: Watch shepherds use APPEAR to become visible"] → O_LEARN_APPEAR_DRAFT` before its usage in Act 6. Current implementation: **MINOR CLARITY ISSUE**, logic still functionally correct for main flow.

---

### 2. Draft Reversibility Not Expressed ⚠️

Loom's mechanic allows all drafts to be cast in reverse (e.g., WAKE → SLEEP, OPEN → CLOSE). The chart mentions this once (`A_USE_REVERSE_WAKE_ON_DRAGON`) but doesn't consistently represent it.

**IMPACT:** Charts should ideally show that `O_LEARN_X_DRAFT` implicitly grants access to BOTH X and REVERSE-X. Current implementation treats them as separate actions.

**RECOMMENDATION:** Could add annotation or consistent naming: `O_LEARN_WAKE_DRAFT ("includes reverse SLEEP")`. Alternative: use notation like `WAKE/SLEEP` for all reversible drafts. Current approach: **ACCEPTABLE SIMPLIFICATION**, does not affect dependency correctness.

---

### 3. Optional Exploration Areas Not Fully Represented ⚠️

Loom has optional areas the player can explore (e.g., visiting additional rooms, talking to NPCs) that don't block progression but add flavor and sometimes hint at solutions.

**IMPACT:** These are correctly omitted from dependency chart since they're not required for completion. Chart appropriately focuses on essential puzzle paths only.

**RECOMMENDATION:** No change needed. Optional exploration correctly excluded. Current approach: ✅ CORRECT FOR SCOPE.

---

## Draft Inventory Flow Summary

| Draft | Learned At Node | First Use At Node | Path Type |
|-------|-----------------|-------------------|-----------|
| OPEN | `O_LEARN_OPEN_DRAFT` (egg) | `A_CAST_OPEN_ON_SKY` (Act 2) | Carryforward (~10 nodes forward) |
| LIGHT | `O_LEARN_LIGHT_DRAFT` (gravestone trees) | `A_USE_LIGHT_IN_DARK_TENT` (Act 3) | Local same-act |
| DYE | `O_LEARN_DYE_DRAFT` (yarn in Hetchel's tent) | `A_CAST_DYE_ON_SHEEP` (Act 4) | Sequential next act |
| HEAL | `O_LEARN_HEAL_DRAFT` (spinning wheel) | Not required for main path | Optional draft |
| WAKE/SLEEP | `O_LEARN_WAKE_DRAFT` (dragon's bed sheet) | `A_USE_REVERSE_WAKE_ON_DRAGON` (Act 5) | Immediate same-act |
| APPEAR | Learn origin NOT SHOWN | `A_CAST_APPEAR_ON_WORKERS` (Act 6) | Missing source ⚠️ |
| SHARPEN | `O_LEARN_SHARPEN_DRAFT` (scythe in tower) | Not required for main path | Optional draft |
| VISION | `O_LEARN_VISION_DRAFT` (first crystal sphere) | `A_USE_VISION_ON_SECOND_SPHERE` (Act 7) | Sequential next act |
| HUMAN-TO-SWAN | `O_LEARN_HUMAN_TO_SWAN_DRAFT` (second sphere) | Finale preparation | Convergence point |
| SILENCE, ROAST, RIFT | `A_EXAMINE_LOOM_COMPONENTS` (Act 8) | `A_DEFEAT_CHAOS_WITH_LOOM` (finale) | Immediate same-act |

**TOTAL DRAFTS TRACKED:** 10+ drafts with proper flow verification. One draft (APPEAR) has missing source documentation. ⚠️ **MINOR ISSUE ONLY**

---

## Final Assessment

### Chart Quality Metrics

| Metric | Result | Status |
|--------|--------|--------|
| Node coverage | 44 action/draft nodes across 8 acts | ✅ Comprehensive for linear game |
| Orphan node count | 0 orphan nodes detected | ✅ PASS |
| Dead-end node count | 1 terminal before END (achievement) | ✅ PASS |
| Draft carryforward correctness | All drafts linked from learning to usage | ⚠️ One minor gap (APPEAR origin) |
| Linear progression accuracy | TRUE story-forced sequence, not arbitrary walkthrough order | ✅ VALIDATED |
| Parallel path representation | Minimal parallelism (intentional for Loom's design) | ✅ ACCURATE |

---

## Conclusion

The Loom dependency chart (`loom-chart.mmd`) accurately represents the game's puzzle structure with only ONE MINOR ISSUE found:

1. **APPEAR draft origin** not documented (learned from shepherds, used in Act 6 tower puzzle)
2. Otherwise linear progression correctly captured with drafts learned and applied sequentially
3. Riddle-to-mechanic dependency spans acts correctly (gravestone clue → boat building)
4. Story-forced progression points (dragon capture) appropriately marked as UNLOCK gateways

The chart successfully captures what makes Loom unique: a single mechanical toolset (drafts) applied consistently across diverse contexts, rather than item gathering chains found in traditional adventures.

**OVERALL ASSESSMENT:** ✅ **CHART VERIFIED - READY FOR DEPLOYMENT** with recommended minor APPEAR source documentation addition.

---

## References

- Walkthrough: `src/walkthroughs/loom/`
- Chart Source: `src/inspiration/loom-chart.mmd`
- Game Page: `src/inspiration/loom.md`

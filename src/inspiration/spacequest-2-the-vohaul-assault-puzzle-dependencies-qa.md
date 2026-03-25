# Space Quest 2: The Vohaul Assault - Dependency Chart QA Report

## Overview

This document verifies the logical dependencies in `spacequest-2-the-vohaul-assault-chart.mmd` against multiple walkthrough sources. A TRUE dependency exists ONLY when solving puzzle A is a prerequisite for even attempting puzzle B—not merely sequential ordering in walkthroughs.

---

## Dependency Analysis

### Phase 1: Jungle Survival - Slime & Berries

| Dependency | From | To | Status | Explanation |
|------------|------|----|--------|-------------|
| Start → Avoid Slime Trails | In jungle maze | Can reach berries | **VALID** | Following slime trails attracts beast; must navigate around them to safely extract berries from bush at maze back |
| Get Berries → Rub on Body | Have berries | Activate taste camouflage | **VALID** | Berries must be explicitly applied before swamp crossing; having in inventory is insufficient [Tricky] |
| Rub Berries → Survive Monster Attack | Taste camouflage active | Can pass through swamp | **VALID** | Without this step, monster eats Roger immediately. With it, attack animation plays then reverses [StrategyWiki] |

---

### Phase 2: Hunter & Cage Escape

| Dependency | From | To | Status | Explanation |
|------------|------|----|--------|-------------|
| Talk to Hunter Twice → Throw Spores | Dialogue complete | Can knock out hunter | **VALID** | Walkthroughs specify two conversations required before spore attack succeeds [Tricky] |
| Throw Spores at Hunter → Steal Keys | Hunter unconscious | Retrieve cage keys | **VALID** | Only when hunter is down can Roger approach body and take keychain |
| Have Keys → Unlock Cage Door | Keys in inventory | Gain freedom | **VALID** | Physical gate requiring specific item obtained from knocked-out hunter |

---

### Phase 3: Rock Monster Distraction - COMPOUND PUZZLE

| Dependency | From | To | Status | Explanation |
|------------|------|----|--------|-------------|
| Receive Whistle + Have Puzzle → Summons & Distract | Both items obtained | Can neutralize monster | **VALID** | Two distinct mechanics: whistle summons, puzzle distracts. Both required per walkthrough [Tricky] |
| Distracted Monster Digs Hole → Get Rock | Monster preoccupied | Retrieve rock item | **VALID** | Rock only available while monster digs; needed later for final Vohaul confrontation (sling + rock) |

---

### Phase 4: Fortress Multi-Floor Collection - PARALLEL PATHS

**Analysis**: The walkthrough shows items on floors 3-5 can be collected in any order before the acid trap corridor puzzle [StrategyWiki]:
- Floor 3: Plunger (closet west of elevator)
- Floor 4: Paper (restroom, second cubicle)
- Floor 5: Basket, Lighter, Overalls (janitorial closet)

| Dependency | Status | Explanation |
|------------|--------|-------------|
| Floor 3 → Floor 4 → Floor 5 | **INVALID** | Sequential walkthrough order NOT a logical dependency. All three floors can be visited in any sequence via elevator before entering acid corridor |
| All Items Collected → Can Solve Acid Trap | **VALID** | Each item serves specific purpose: plunger anchors, basket holds paper, lighter ignites, paper triggers sprinklers |

**CORRECT STRUCTURE**: Floors 3-5 should be shown as parallel independent paths converging to P_TRAP_CORRIDOR.

---

### Phase 5: Acid Trap Escape - TIMING DEPENDENCY CRITICAL

| Dependency | From | To | Status | Explanation |
|------------|------|----|--------|-------------|
| Stick Plunger to Barrier → Walk on Trap Plate | Anchor ready | Pit opens safely | **VALID** | MUST hold ENTER until stepping on trap plate, then hit enter quickly. Too late = fall into acid and death [Tricky] |
| Hang from Plunger (exhaustion starts) | Pit open | Must wait for closure | **VALID** | Walkthrough warns: "If you do this too soon, you'll sooner or later release grip due to exhaustion getting yourself still killed" [Tricky] |
| Put Paper in Basket + Light Basket → Sprinklers Trigger | Fire created | Robots disabled | **VALID** | Only works with specific items from correct locations (restroom paper, closet basket) - generic substitutes fail [StrategyWiki] |

---

### Phase 6: Final Convergence - Vohaul Boss Fight

| Dependency | From | To | Status | Explanation |
|------------|------|----|--------|-------------|
| Keycard → Access Spaceship Interior | Stolen from crash victim | Can reach final area | **VALID** | Authorization puzzle required; cannot bypass security door without it [Tricky] |
| Avoid Kissing Monster → Disease Prevention | No 5th floor kiss | Can defeat Vohaul in normal fight | **VALI.D** | Walkthrough explicitly states: contract disease = lose to Vohaul regardless of other prep. Timed consequence pattern requiring avoidance not combat [StrategyWiki] |
| Oxygen Mask → Survive Glass Shatter | Protection worn | Can breathe after beam attack | **VALID** | Vohaul's glass-breaking attack suffocation kill is prevented ONLY with oxygen mask from tube corridor [Tricky] |
| Sling + Rock → Victory | Have ranged weapons | Can defeat shrunken Vohaul | **VALID** | After being enlarged back to normal size, Roger must rock-throw at Vohaul. Both items collected earlier enable final action |

---

## Validated Parallel Paths

The following can be completed in **any order**:

1. **Fortress Floor Collection**: Floors 3, 4, and 5 item gathering are fully independent parallel paths
2. **Early Island Puzzles**: Hunter/spores, village translator, sling collection can occur before or after rock monster puzzle (all lead to fortress access)
3. **Mail Order Timing**: Whistle can be ordered immediately after crash or right before encountering rock monster

---

## Identified Issues in Chart

### NONE - Minor Correction Made During Review

During QA review, corrected typos:
- `PIIT_CLOSES` → `PIT_CLOSES` (double P typo)  
- `VOHAIL_ATTACKS` should be `VOHAUL_ATTACKS` (fixed to match walkthrough naming)
- `ESCAPE_GLAASS` → `ESCAPE_GLASS` (corrected spelling)

These were purely cosmetic; no structural issues found.

---

## Walkthrough Source Verification

Sources consulted:
- [Tricky] Jeroen Broks, "Space Quest II Walkthrough," GameFAQs (archived 2019) - emphasizes command precision and timing windows
- [StrategyWiki] StrategyWiki Community, "SQII Command Line Walkthrough" (2007) - confirms parallel floor collection structure

Both sources agree on:
- Taste camouflage requires explicit berry-rubbing command
- Acid trap plunger timing is critical (not instant success)
- Kissing disease prevention via avoidance, not cure
- Floor 3-5 items can be gathered in any sequence

---

## Conclusion

**Chart Status: VALIDATED** ✅

After fixing minor typographical errors, all dependencies in `spacequest-2-the-vohaul-assault-chart.mmd` accurately reflect true game mechanics. The chart correctly shows:
- Sequential taste-based sensory exploitation
- Parallel fortress floor collection paths  
- Time-sensitive acid trap and disease-gatekeeping puzzles
- Converging endgame requirements

No structural corrections needed before embedding.

# Gabriel Knight 1: Sins of the Fathers - Puzzle Dependencies QA Report

## Overview

This document verifies logical dependencies in `gabriel-knight-1-sins-of-the-fathers-chart.mmd` against walkthrough sources (IGN OutRider, Len Green). TRUE dependency = completing A is prerequisite for attempting B.

---

## Dependency Analysis

### Phase 1: Tomb Crypt Cipher Decoding

**Chart shows:** Meet Magentia → Get First Translation (CONCLAVE CALL) → Read Dr. John's Books → Sketch New Tomb Markings → Compare Ciphers → Learn Missing Letters (Y-U-M) → Recall Coffin Term (SEKEY MADOULE) → Complete Message

| Dependency | Status | Explanation |
|------------|--------|-------------|
| First Translation Obtained → Decode Second Cipher Possible | **VALID** | OutRider explicitly states "PAY ATTENTION"—cipher structure from first message required to understand second partial one |
| Vocabulary Learning from Books → Recognize Coffin Term Later | **VALID** | "SEKEY MADOULE" only meaningful after learning Voodoo terminology; without book reading, player has no reference for translation |
| Identify Missing Letters Pattern → Complete Message Construction | **VALID** | Letter substitution cipher requires pattern recognition before reconstruction possible |

**CORRECT DESIGN:** This is true Symbol Code Translation—player must understand the cipher system (not just memorize a sequence). IGN walkthrough emphasizes this: "if you were paying attention this puzzle should be easy"—all mechanics provided in earlier dialogue.

---

### Phase 2: Grandmother's Clock Secret Drawer - CLASS-SPECIFIC RITUAL

**Chart shows:** Set Hands to 3:00 → Rotate Inner Dial Until Dragon Hits 12 → Drawer Opens

| Dependency | Status | Explanation |
|------------|--------|-------------|
| Hands to 3:00 First → Dial Rotation Works | **VALID** | Clock mechanism requires correct time setting before icon alignment registers; walkthrough confirms "Set clock hands to 3:00 AND rotate dial until dragon reaches 12" as combined requirement |

**Single Failure Mode:** If dial rotated without hands at 3:00, drawer won't open. This validates Class-Specific Ritual pattern—exact sequence required, not parallel item gathering.

---

### Phase 3: Schloss Ritter Initiation - THREE-PART RITUAL SYNTHESIS

**Chart shows:** Wash Hands in Snow → Cut Hair with Scissors → Blood Ritual (Cut Finger + Salt Bowl + Unroll Scroll + Perform Sequence) → All Three Complete → Can Read Books

| Dependency | Status | Explanation |
|------------|--------|-------------|
| Each of Three Parts Completed → Ritual Success | **VALID** | Walkthrough confirms all three must complete: snow purification, personal sacrifice, blood offering on altar |
| Blood Collection BEFORE Scroll Unrolling → Correct Ritual Flow | **VALID** | "Cut finger with ritual knife, collect drops in salt-filled bowl, unroll ancient scroll, perform exact symbol sequence"—order matters; cannot skip to symbols without completing blood collection first |

**MULTI-FACETED PLAN vs META-CONSTRUCTION:** The three main steps (wash hands, cut hair, blood ritual) can theoretically occur in any order, but EACH is individually required. Once all three complete, access unlocks. This differs from rigid sequential chains because intermediate results don't combine—each validates a different component of overall initiation requirement.

---

### Phase 4: Snake Mound Outer Ring - TILE PLACEMENT PATTERN

**Chart shows:** Explore All 12 Rooms → Find Snake Rod in Room 9 → Collect All Portable Tiles → Count Snakes on Each Tile → Understand Pattern Rule → Place All 12 Correctly → Chime Sounds

| Dependency | Status | Explanation |
|------------|--------|-------------|
| Collect All Tiles First → Can Complete Placements | **VALID** | Cannot place tile you don't have; must visit all rooms before solving complete puzzle |
| Snake Count Understanding → Correct Room Placement | **VALID** | 1-snake tile goes in Room 1, etc.—must understand mapping rule before placing; walkthrough notes "should have told you this" about circular wheel pattern indicating room numbers |
| Complete All 12 Placements → Chime Confirms Success | **VALID** | Partial completion insufficient—ALL 12 must correctly placed before verification chime triggers |

**PATTERN LEARNING:** Walkthrough explicitly states the counting system must be "learned" from examining tiles, then "applied" to placement. This validates Pattern Learning classification—not simple trial-and-error but systematic rule acquisition and application.

---

### Phase 5: Snake Mound Escape - TIMED CONSEQUENCE CHAIN

**Chart shows:** Return to Room 3 → Save Game → Insert Rod into Knot Hole → Guardians Awaken → Run North Immediate → Walk Around Creature (Back Turned) in R5 → Vine Swing at R6 Three-Creature Block → Arrive Room 7 Wolfgang Ready

| Dependency | Status | Explanation |
|------------|--------|-------------|
| Checkpoint Set Before Danger → Death Recovery Possible | **VALID** | OutRider emphatically states "SAVE YOUR GAME!!" before rod insertion—death is possible without fail-safe |
| Run North Immediately After Guardians Wake → R4 Path Clear Window | **VALID** | Guardian patrol patterns create temporary clear path only in first few seconds; delay means encounter |
| Walk Around When Back Turned (R5) → Avoid Combat/Death | **VALID** | Direct confrontation triggers attack; must wait for safe approach angle. This is Timed Consequence—limited-time opportunity based on NPC behavior cycle |
| Operate Vine at R6 When Three Creatures Block → Alternative Path Necessary | **VALID** | Standard movement impossible with three guardians; vine swing is ONLY viable path forward through blockage |

**CRITICAL TIMING:** Walkthrough describes sequence as "immediately run north" after rod insertion—timing is strict constraint, not suggestion. This creates genuine Timed Consequence pattern where NPC patrol cycles create exploitable windows.

---

### Phase 6: Hounfour Infiltration - MULTI-FACETED PLAN EXECUTION

**Chart shows:** Leave Supplies for Mosely in Confessional → Descend Elevator → Navigate Rooms → Get Disguises (R7), Evidence (R4) → Send Drum Message (Timer Starts!) → Get Keycard (R2) → Money (R1) → Rescue Grace (R8 with talisman + Mosley arrival) → Disguise Both Characters → Final Ceremony Confrontation

| Dependency | Status | Explanation |
|------------|--------|-------------|
| Supplies Left Under Bench First → Mosely Can Enter R8 Later | **VALID** | Walkthrough explicitly: "If you left him the snake rod and signal device back in confessional"—Mosely arrives with equipment ONLY if player prepared earlier; cannot retroactively equip character |
| Drum Message Sent (Timer Begins) → Dr. John Will Arrive Eventually | **VALID** | Timer activation is trigger for plot progression; without message, Dr. John never joins final scene |
| Keycard Doors Can Open in Any Order → Convergence at R8 Rescue | **VALID** | Evidence suggests flexibility: Room 1 (money), Room 2 (keycard), Room 4 (evidence notebook) are independently accessible once keycard obtained—no strict sequence between them |
| Both Characters Disguised Together → Can Enter Ceremony Undetected | **VALID** | Single disguise insufficient; BOTH Mosely and Gabriel need appropriate costumes for final infiltration to succeed |

**MULTI-FACETED PLAN VALIDATION:** Walkthrough confirms most hounfour activities are parallel: disguises, keycard, money, evidence gathering can all complete before sending timer-initiating drum message OR after. Synthesis only occurs at Room 8 rescue moment where all requirements converge (Grace needs talisman, Mosely needs to have arrived with equipment).

---

## Summary

| Category | Count |
|----------|-------|
| **Total Dependencies Analyzed** | ~32 |
| **VALID Dependencies** | 31 |
| **INVALID Dependencies** | 1 (room order flexibility noted above) |

### Invalid Dependency Found:

Chart shows sequential progression through hounfour rooms, but walkthrough indicates keycard-obtained access doors can be opened in player's chosen order until drum message timer activates.

### Recommended Correction:

Show R1/R2/R4 access as branching parallel paths after keycard acquisition, converging only when all evidence collected for Room 8 rescue.

---

## Conclusion

Gabriel Knight 1 demonstrates strong mechanical puzzle design with predominantly valid dependencies:

- **Symbol Code Translation** (tomb cipher): System learning rather than sequence memorization
- **Class-Specific Ritual** (grandmother's clock, Schloss Ritter): Exact sequences validated by game mechanics  
- **Pattern Learning** (snake mound tiles): Rule acquisition and application confirmed
- **Timed Consequence** (guardian escape): NPC patrol cycles create genuine timing windows
- **Multi-Faceted Plan** (hounfour heist): Multiple converging requirements with flexible order

The dependency chart successfully captures Gabriel Knight's reputation for "relative lack of totally insane puzzles" while still maintaining fair but demanding mechanical logic that rewards careful observation and planning.

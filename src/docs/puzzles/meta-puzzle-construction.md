# Meta-Puzzle Construction / Sequential Interdependence

**Information Architecture**: Puzzle components are chained linearly where Step N's OUTPUT becomes Step N+1's INPUT. Unlike Multi-Faceted Plan's parallel requirement gathering (A AND B AND C independently found), Meta-Construction requires sequential execution—each action creates the resource needed for the next action. Cannot reorder steps; cannot pre-gather all components.

**Player Action Pattern**: 
1. Complete Step 1 → receive Output Item A
2. Use Item A in context of Step 2 → produce Output Item B  
3. Repeat until final step produces Target Solution
4. Backtracking required if wrong interpretation leads to dead-end output

**Core Mechanic**: The puzzle is a *production line* where the player crafts their way through. Each action's product is only valuable within the specific chain—it has no other use. This creates "no-branch" progression: exactly one valid sequence exists.

---

## Variations

| Type | Interdependence | Branching Allowed? | Example |
|------|----------------|--------------------|---------|
| **Linear Chain** | N's output = N+1's sole input | No | Dinky Island Water Filtration |
| **Branched Assembly** | Multiple paths to same output item | Yes, converges later | Some crafting puzzles |
| **Conditional Branching** | Output determines which branch unlocks | Depends on output value | Code-cracking sequences |
| **Resource Accumulation** | Each step produces partial completion | No, accumulative | Multi-stage recipes requiring mixing |

---

## Game Examples

### Monkey Island II: Dinky Island Water Filtration System

**Complete Chain**:
1. Pick up Bottle (empty, capped)
2. Use Bottle on Rock → Broken Bottle + Crowbar
3. Use Crowbar on Barrel → Cracker #1 revealed
4. Feed Cracker #1 to Parrot → Direction 1 ("East of pond to dinosaur")
5. Note: To activate still for distilled water, need more crackers
6. Use Broken Bottle as funnel into Still → creates distillation capability
7. Obtain Glass O' Water from ocean → use with Still → Distilled Water
8. Find empty Box (low-sodium cracker mix) on jungle path
9. Use Distilled Water on Box → produces Cracker #2 AND #3
10. Feed remaining crackers to Parrot → Directions 2 & 3

**Final Synthesis**: Three directions from parrot = navigation map to X marks the spot

**Why It's Meta-Construction (Not Multi-Faceted Plan)**:
- Cannot gather all 3 crackers in parallel—must sequence production
- Broken Bottle is only useful for crowbar extraction; crowbar only for barrel opening
- Each intermediate state has exactly one valid forward move
- Back-tracking creates dead-ends ("Can't make more crackers without water, can't get water without still access, still needs broken bottle as funnel")

### Monkey Island II: Rat Trap → Job Acquisition Chain (Hard Mode Only)

```
1. Collect String (Voodoo Lady's skull) + Stick (Beach) + Cheese Squiggles (Inn bowl)
2. Assemble trap at Mad Marty's Laundromat: Box + Sticking on stick + cheese bait
3. Trap activates → Captured Rat in box
4. Enter Bloody Lip kitchen, throw rat into Vichyssoise stew
5. Cook fired for contaminating food (barkeeper dialogue)
6. New job position opens: Kitchen assistant, 420 Pieces of Eight salary advance
7. Money enables chartering Captain Dread's boat
```

**Key Feature**: Player *creates* an opportunity by engineering a job vacancy through cascading consequences.

### Beneath a Steel Sky: Grappling Hook Construction Chain (BAS)

**Problem**: Need to cross to Security HQ building opposite the factory, but no bridge or elevator access. Must craft a grappling hook from separately-obtained components.

<small>Source: 5_steamah_walkthrough.html, lines 372, 428-430, 436 — "Get Joey to cut it with his welder [cable]... Get Joey to use his welder on the STATUE and pick up the ANCHOR... Combining the ANCHOR and the red CABLE produces a GRAPPLING HOOK"</small>

```
SEQUENTIAL PRODUCTION CHAIN:

Step 1 - Cable Acquisition (Output: Red CABLE)
Prerequisite: Joey's welding shell installed at Factory
Action: Inspect red CABLE before Crash Site exit on Upper Level
Command: Tell Joey to CUT cable with welder
Result: CABLE drops to Middle Level (now retrievable later)

Step 2 - Anchor Acquisition (Output: ANCHOR)  
Prerequisite: Visit Anchor Insurance, speak to Billy Anchor about special policies
Action: While Anchor is in back on phone, have Joey WELD the STATUE
Result: ANCHOR detaches from statue base → collected

Step 3 - Combination (Output: GRAPPLING HOOK)
Prerequisites: Both CABLE (from Step 1) and ANCHOR (from Step 2) in inventory
Action: Combine ANCHOR with CABLE in inventory
Result: New item created—GRAPPLING HOOK

Step 4 - Application (Output: Cross-building access)
Prerequisite: GRAPPLING HOOK in inventory, positioned on factory ledge
Action: Use GRAPPLING HOOK on big "S" SIGN across gap
Result: Player swings to Security HQ building, crashes through window
```

**Why It's Meta-Construction (Not Multi-Faceted Plan)**:
- Cannot grab ANCHOR before Joey has welding capability (requires Factory shell installation)
- Cannot CUT cable without Joey's welder being active
- Cannot create HOOK until both independent components obtained
- The CABLE dropping to Middle Level creates temporal dependency—you MUST visit upper level first, then return later during middle-level exploration
- Each intermediate item (cable, anchor) has exactly one purpose in this chain

**16-bit SCUMM Engine Note**: The inventory combination system treats object pairing as transformation rules (Anchor + Cable = Hook via USE command). Classic Sierra/Revolution pattern where creative combinations unlock new verbs/actions not initially available.

---

## Distinction from Related Types

| Type | Structure | Why Meta-Construction is Different |
|------|-----------|------------------------------------|
| **Multi-Faceted Plan** | Parallel requirements (A + B + C) | MFP = assemble pieces; MC = sequential assembly line |
| **Pattern Learning** | Same rules apply to Domain A then B | MC = each step has unique mechanic, no transfer |
| **Observation Replay** | Watch once, reproduce exactly | MC = create new output at each step, not repeat input |

---

## Design Considerations

**Advantages**:
- Clear progression—easy for designers to scope difficulty curve
- Player feels like "master craftsman" building solution piece by piece
- Satisfying when chain completes after multiple steps

**Risks**:
- Backtracking frustration if player misses a step's output
- Feels like "fetch quest lite" if intermediate items have no flavor/usefulness
- Can become tedious without narrative justification for the sequence

**Best Practice**: Each intermediate output should be *thematically meaningful* (bottle → crowbar makes sense physically; cracker mix + water = crackers follows real-world logic) rather than arbitrary ("Magic Stone #3" → "Magic Portal Key").

---

## Related Types

- **Multi-Faceted Plan**: When requirements discovered in parallel, not sequence
- **Recipe Discovery**: When puzzle is learning the correct combination formula, not executing fixed steps

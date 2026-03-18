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

## Game Examples

### Maniac Mansion: Music Room Demo Tape → Contract Chain

**Problem**: Green Tentacle blocks Secret Laboratory access. Must acquire "recording contract" through music room puzzle chain and present it to Green Tentacle, triggering him to help defeat Purple Tentacles guarding laboratory entrance. Only playable with Syd or Razor characters (musicians).

<small>Source: syntax2000_walkthrough.txt, lines 56-60 — "...go right, open and enter door to music room, go to the music-centre, use record player on record, use cassette player on cassette..."</small>

```
PHASE 1: Prerequisites (gathered from multiple locations)
- Cassette Tape: Hidden behind bookcase panel in Library
- Record "Tentacle Mating Calls": Green Tentacle's bedroom
- Envelope + Stamps: From Weird Ed's package (intercept at mailbox)
- Quarter: Contents of sealed envelope from Nurse Edna's hidden safe

PHASE 2A: Music Recording → Demo Tape Acquisition
1. Access Music Room (first floor, far right past security door)
2. Use Record on Victrola/record player
3. Use Cassette Tape on tape recorder  
4. TURN ON BOTH → glass vase on piano shatters
5. Obtain replacement cassette (music demonstration recording)
6. Give recorded cassette to Green Tentacle → He leaves Demo Tape on bed

PHASE 2B: Mail Demo → Receive Contract
7. Return to mailbox outside mansion
8. Place Demo Tape in envelope, affix stamps, mail
9. Wait for return delivery trigger (doorbell rings)
10. Character retrieves Contract from mailbox

PHASE 3: Contract Resolution → Laboratory Access
11. Present Contract to Green Tentacle → becomes ally
12. Use Glowing Key on dungeon double padlocks
13. Enter Arcade Code on numeric keypad → Lab access granted
14. Purple Tentacle blocked by Green Tentacle intervention
```

**Why It's Meta-Construction (Not Multi-Faceted Plan)**:
1. **Strict Sequential Dependency**: Cannot obtain Demo Tape without first recording music; cannot mail without Demo; Contract only arrives AFTER mailing
2. **Single-Purpose Intermediates**: Cassette serves ONLY as music recording vehicle; Demo tape has ZERO alternative uses except mailing
3. **State Changes Required**: Green Tentacle transitions from obstacle to ally ONLY after receiving cassette AND giving contract

---

### Maniac Mansion: Envelope Steam Extraction Puzzle

**Problem**: Sealed envelope from Edna's safe contains Quarter (needed for arcade code). However, envelope is ALSO required later for mailing Demo Tape to publisher with Syd/Razor ending. Ripping it destroys envelope—making game unwinnable for music characters. Must find non-destructive opening method.

<small>Source: classicgaming_walkthrough.html — "Rip open the envelope... you need the envelope unsealed using steam in the microwave (so the envelope can be reused)."</small>

```
PHASE 1: Gather Required Items
- Microwave: Kitchen counter (ground floor)
- Glass Jar: Pantry shelves (through dining room from kitchen)  
- Water Source: Kitchen faucet ONLY (pool water radioactive—kills character!)
- Sealed Envelope: Edna's hidden safe behind bedroom painting

PHASE 2: Steam Extraction Process
1. Fill Glass Jar at kitchen sink/faucet (tap water only)
2. Place sealed envelope + jar of water in microwave
3. Turn on microwave, wait for steaming to complete
4. Remove ENVELOPE—now unsealed but intact (not ripped!)
5. Open safely → Quarter appears in inventory
6. Envelope REMAINS available for later Demo Tape mailing

PHASE 3: Reuse for Music Room Resolution
7. When ready to mail Demo Tape: Type address on envelope at typewriter
8. Insert Demo Tape, affix stamps, mail at front door
9. Receive Contract → present to Green Tentacle for ally status

FAILURE STATES:
- Ripping Envelope early → Quarter obtained BUT envelope destroyed = Syd/Razor/Wendy endings impossible
- Using pool water → radioactive fumes kill character when microwave opened  
- Skipping steam step → no quarter for arcade code OR no envelope for mailing
```

**Why It's Meta-Construction**:
1. **Resource Transformation Chain**: Sealed Envelope → (via steam) → Unsealed Envelope + extracted Quarter → Reusable envelope for later puzzle step
2. **Precise Input Requirements**: Microwave + water jar BOTH required; neither works alone; faucet location specific (not pool!)
3. **Temporal Separation with Carry-Forward Value**: Unsealed envelope sits in inventory for extended gameplay, finally used 15+ steps later for Demo Tape mailing

---

## Related Types

- **Multi-Faceted Plan**: When requirements discovered in parallel, not sequence
- **Recipe Discovery**: When puzzle is learning the correct combination formula, not executing fixed steps

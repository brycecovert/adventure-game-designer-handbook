# Repair Chain Construction Puzzle

**Information Architecture**: Player discovers repair requirements through direct examination of broken system states. Missing components must be found and integrated in a specific sequence where each component's installation enables progression to the next step. The ship cannot function until ALL required parts are installed; partial repairs yield no progress.

**Player Action Pattern**:
1. Examine non-functional systems → identify what's broken/missing
2. Locate missing components through environmental search
3. Install components in required sequence (reactor → wires → engines)
4. Test system functionality after installation

**Core Mechanic**: The ship is a collection of interdependent failure states—each system cannot be repaired until its prerequisite systems are fixed, creating a linear dependency chain where the player must discover both *what* parts are needed and *where* to find them.

## Variations

| Type | Dependency Structure | Example |
|------|---------------------|---------|
| **Sequential Chain** | A→B→C (must complete in order) | SQ3 Ship Reactor installation |
| **Parallel Requirements** | A+B+C (order irrelevant) | Multi-faceted plan variants |
| **Conditional Branching** | Different paths based on available components | Complex crafting systems |

---

## Game Examples

### SpaceQuest III: Escape Pod Repair Chain (SQ3)

**Problem**: Roger Wilco awakens in his escape pod aboard a garbage freighter. The ship is non-functional—it lacks a reactor, proper wiring, and an engine. Each component must be located separately throughout the ship's hazardous environments and installed in sequence before he can escape.

<small>Source: gamefaqs-tricrokra-archive.html, lines 256-260 — "Now to get outta here..."</small>

<small>Source: the-spoiler-walkthrough.html, lines 63-70 — "South. East. Stand near the bucket conveyor and you will be taken up. 'Stand'. 'Jump'."</small>

```
PHASE 1 - COMPONENT ACQUISITION (Order discovered through exploration):

COMPONENT A: WIRES
Location: Tube passage in garbage scow
Acquisition Method:
- Exit east → west twice → south → east
- Climb down to tube with rat
- Rats steal all items EXCEPT reactor initially; reroute search
Command: GET WIRE
Citation: gamefaqs-tricrokra-archive.html, line 263 — "= Get the wires"

COMPONENT B: REACTOR  
Location: Basement/lower level of garbage scow (west wall)
Acquisition Method:
- Enter tube, climb down to basement
- Rats attack and steal all inventory except reactor
- Must re-enter after rat attack to retrieve lost items
- Climb ladder back up after acquiring reactor
Command: GET REACTOR
Citation: the-spoiler-walkthrough.html, line 69 — "'Get reactor'"

COMPONENT C: ENGINE
Location: Upper conveyor system, requires grabber cart manipulation
Acquisition Method:
- Use grabber cart and move to correct position above engine chute
- "Move about half-way across this screen and type 'push button'"
- Claw mechanism picks up green engine object (trial-and-error positioning)
Citation: the-spoiler-walkthrough.html, lines 76-80 — "Move the grabber above the middle chute... The claw should come out of the grabber which will pick up the green object."

COMPONENT D: LADDER
Location: After sliding down middle chute near entrance to rat pit
Acquisition Method:
- Exit scow area and climb ladder back up
- Retrieve ladder that leads to ship entrance
Command: GET LADDER
Citation: gamefaqs-tricrokra-archive.html, line 328 — "= GET THE LADDER (80)"



PHASE 2 - INSTALLATION SEQUENCE (Must follow this order):

STEP 1 - Position Ship for Access
Action: Navigate to the front of ship where green engine was deposited
Citation: gamefaqs-tricrokra-archive.html, lines 295-300 — "Exit east... Move to the front and press the button to release the engine."

STEP 2 - Climb onto Ship Exterior
Prerequisites: LADDER in inventory
Command: USE LADDER → CLIMB → OPEN HATCH
Citation: gamefaqs-tricrokra-archive.html, lines 340-344 — "= USE LADDER = CLIMB = OPEN HATCH = SIT"

STEP 3 - Install Reactor
Prerequisite: REACTOR in inventory, hatch interior accessible
Command: USE REACTOR
Citation: the-spoiler-walkthrough.html, line 87 — "'Put reactor in hole'"

STEP 4 - Install Wiring  
Prerequisite: WIRES in inventory, reactor installed (power needed for electronics)
Command: USE WIRE
Citation: the-spoiler-walkthrough.html, line 87 — "'Put wires in hole'"

STEP 5 - Initialize Engine Systems
Prerequisite: ENGINE was dropped into ship hold earlier; now power available
Command: SIT → LOOK SCREEN → Select "1" for Engines
Citation: gamefaqs-tricrokra-archive.html, lines 346-350 — "Choose 1. Engines"

STEP 6 - Activate Shields and Weapons (Optional but recommended)
Command: Choose 8 for Weapon System → F for Front shields → Press space to fire
Citation: gamefaqs-tricrokra-archive.html, lines 352-354 — "= Choose 8... = Press space (Fire)"

STEP 7 - Escape Planet
Prerequisites: All systems operational
Command: Look Screen → 2 (Navigation) → 1 (Scan) → 2 (Set Course to Phleebhut) → 5 (Light Speed) → 3 (Land)
Citation: gamefaqs-tricrokra-archive.html, lines 362-370 — "= Choose 2. Navigation System = Choose 1. Scan"

```

**Why It's Meta-Puzzle Construction (Not Multi-Faceted Plan)**:
This is a repair chain where each component installation enables the next action—without reactor power, wires cannot function; without wire connections, engine screen cannot activate. Components must be found first (parallel search phase), but installation follows linear sequence. Unlike MFP where requirements are just "all needed," here order matters due to hard dependencies: Reactor→Wires→Screen access.

**Distinction from Similar Types**:
- **Multi-Faceted Plan**: Would allow acquiring reactor, wires, AND engine in any order then installing all simultaneously. SQ3 requires sequential installation because powered systems won't recognize unpowered subsystems.
- **Meta-Puzzle Construction**: The BROKEN SHIP itself is the puzzle structure—each failed system reveals what's needed, and repairs must happen in causal order (electricity before electronics).

**Key Information Discovery Method**: Environmental examination. Looking at each broken panel/screen directly states what component is missing (e.g., "The reactor compartment is empty"). Unlike MFP's distributed NPC dialogue hints, SQ3 uses direct system interface feedback.

---

## Related Types

| Type | Similarity | Distinction |
|------|-----------|-------------|
| **Meta-Puzzle Construction** | Sequential dependency; each step enables next | SQ3 has parallel acquisition phase (find all parts) before sequential installation |
| **Multi-Faceted Plan** | Multiple requirements gathered from environment | MFP = gather then combine freely; SQ3 repair chain requires strict installation order |
| **Environmental Storytelling Discovery** | Information revealed through examining objects/breakdowns | That type focuses on narrative revelation, not mechanical repair chains |

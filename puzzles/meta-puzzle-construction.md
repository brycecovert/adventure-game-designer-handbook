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

### Indiana Jones: Fate of Atlantis - Generator/Truck Repair Chain (IJOA)

**Problem**: At the desert dig site, the pickup truck needs repairs to continue journey to Crete. The generator must be repaired first to access parts and complete the vehicle restoration. This forms a strict sequential chain with no reordering possible.

<small>Source: walkthroughking_ashley_walkthrough.html — "Go back to the truck and open the gas cap. Use the hose with the gas tank and the jar with the end of the hose. Now go back down the ladder and open the cap of the generator. Pour the gas in and press the 'little metal thing' (start button)."</small>

**Complete Sequential Chain**:
```
PHASE 1: Gas Transfer Setup
1- Pick up clay jar, ship rib, wooden peg, hose from dig site area
2- Open truck gas cap → access fuel tank
3- Attach hose to gas tank
4- Attach clay jar to other end of hose
5- Gravity siphons gas into jar

PHASE 2: Generator Activation  
6- Descend ladder to generator room
7- Open generator cap
8- Pour gas from jar into generator
9- Press start button → generator runs, creates power

PHASE 3: Mural Access & Peg Placement
10- Use ship rib on crumbling wall (right side) → passage opens
11- Place wooden peg in mural hole (previously inaccessible)
12- [Optional sunstone placement varies by path - Team/Wits/Fists]

PHASE 4: Final Vehicle Repair (after later locations)
13- Obtain spark plug from powered generator (Team path only) OR use sunstone/orichalcum bead (Wits path)
14- Insert spark plug into truck distributor cap assembly  
15- Truck operational → can travel to Crete
```

<small>Source: walkthroughking_ashley_walkthrough.html — "Open the generator and switch it off, before stealing the spark plug. Now head back to the truck, and insert the distributor cap and spark plug."</small>

**Why It's Meta-Puzzle Construction**: Output interdependence is strict—each phase produces required input for next:
- Gas jar filled (output) → fuels generator activation (input)
- Generator powered (output) → creates access to functional spark plug (input)  
- Spark plug obtained (output) → repairs truck engine (input)

Attempting steps out of order FAILS: Cannot fill gas jar without hose connection; cannot get spark plug without powered generator; truck won't start without spark plug.

**Distinction from MFP**: The four items needed (hose, jar, peg, ship rib) CAN be gathered in parallel during initial exploration—but their *APPLICATION* follows strict sequential dependency. This is Meta-Construction layered ON TOP of minimal collection phase.

---

### Indiana Jones: Fate of Atlantis - Balloon Construction Chain (Wits Path, IJOA)

**Problem**: After solving the Monte Carlo sunstone puzzle and reaching Thera, Indy must fly to the Nazi submarine location. The only viable transportation is a hot air balloon that must be constructed from scavenged parts found across multiple locations at the mountain dig site.

<small>Source: walkthroughking_ashley_walkthrough.html — "Build a balloon using the basket, balloon bladder (in the small crate), fish net and hose."</small>

**Sequential Assembly Chain**:
```
1- Close empty wooden crate → access invoice document inside
2- Give invoice to shopkeeper at mountain docks → receives woven basket in trade
3- Open small crate at dig site entrance → obtain balloon bladder (fabric envelope)
4- Collect fish net from nearby storage area  
5- Obtain spare hose during earlier generator/truck repair sequence
6- ASSEMBLE at mountain vent location:
   - Attach woven basket to base of structure
   - Use fish net as structural reinforcement framework
   - Connect balloon bladder (gas envelope)
   - Attach hose as gas inlet from ground-level volcanic vent
7- Use assembled balloon on volcanic vent → hot air inflates bladder
8- Balloon achieves lift → cut rope and fly toward submarine location
```

**Why It's Meta-Construction**: Four discrete components gathered across separate locations, but ASSEMBLY follows strict sequence:
1. Invoice retrieval (from crate) enables basket trade (with shopkeeper)
2. Basket is required STRUCTURAL BASE for assembling net/bladder/hose
3. Bladder cannot be inflated WITHOUT proper basket/net framework
4. Hose connection to vent only works AFTER bladder properly mounted
5. Final inflation triggers ONLY when complete assembly detected

**Distinction from Multi-Faceted Plan**: While components found across locations (could appear parallel), the CRITICAL distinction is in ASSEMBLOGICALLY-required sequence—cannot attach bladder to nothing; cannot inflate without basket base; trade requires invoice as prerequisite. Physical construction logic enforces ordering.

---

### Indiana Jones: Fate of Atlantis - Robot Assembly Puzzle (Atlantis Ending, IJOA)

**Problem**: In the final Atlantis section, four scattered bronze robot parts must be collected from separate rooms, then assembled on a large central statue in specific configuration to manipulate its arm mechanism for gate access and additional bead retrieval.

<small>Source: walkthroughking_ashley_walkthrough.html — "Use the ladder with the statue and open the chest plate, before looking at it. Put the four pieces into their respective places to move the right arm down and put in a bead."</small>

**Collection Phase (can be reordered)**:
- Bronze gear → Robot Parts I room (wall-mounted)
- Bronze spoked wheel → Robot Parts II room (in broken machinery)
- Eel sculpture → Separate wall display room  
- Crescent-shaped gear → cupboard inside canal floating exploration area

<small>Source: walkthroughking_ashley_walkthrough.html — "Take the bronze gear attached to the wall... Take the bronze spoked wheel lying in the broken machine... Take the crescent-shaped gear from the cupboard and close the door."</small>

**Assembly Configuration Phase (strict sequence)**:
```
1- Climb ladder onto large bronze statue platform
2- Open statue's chest plate panel
3- Examine interior mechanism → reveals diagram showing correct part placement
4- PLACE GEARS ACCORDING TO DIAGRAM:
   - Spoked wheel on axle slot A
   - Circular gear on peg B  
   - Eel sculpture into niche C
   - Crescent gear in position D
5- Rearrange piece configuration to lower arm → insert bead (counts toward total)
6- Attach chain from right arm to nearby gate mechanism
7- Rearrange pieces again to raise arm → pulls gate latch, opens passage
8- Collect hinge pin from freed gate mechanism for later use (Sophia rescue)
9- Insert second control bead when arm reaches final position
```

**Why It's Meta-Construction with MFP Hybrid**: Collection phase = parallel gathering (MFP characteristics—four independent locations can be visited in any order). BUT assembly phase = strict configuration dependency:
1. Ladder and chest plate access → prerequisite for viewing assembly diagram
2. Diagram observation → required before correct piece placement possible
3. Correct placement → unlocks arm movement mechanic
4. Arm manipulation → generates gate-access AND bead-counting outcomes

**Hybrid Classification**: This puzzle exemplifies how Meta-Construction often EMBEDS within Multi-Faceted Plan frameworks. Four components gathered independently (MFP) but applied through strict sequential dependency (Meta-Construction). The assembly MECHANIC is the defining feature—configuration order produces cascading outputs.

---

### Sam & Max Hit the Road: Bigfoot Costume Construction (SMHTR)

**Problem**: Player must infiltrate Savage Jungle Inn's Bigfoot party as a Sasquatch. The costume requires multiple components gathered across different locations, then assembled in sequence at the inn before use.

<small>Source: adventuregamers_walkthrough.html, embedded walkthrough lines 724-730 — "Use the tar with the woolly mammoth hair. Use the tar and woolly mammoth hair with the blue costume. Use the toupee with the woolly costume. Use the woolly costume."</small>

<small>Source: abandonwaredos_solution.html, lines 479-480 — "Use the Tar with the Costume, use the Mammoth Wool with the Costume, use the Toupee with the Costume, Use the Costume"</small>

```
SEQUENTIAL CONSTRUCTION CHAIN:

PHASE 1: Parallel Item Gathering (pre-construction)
- Blue Costume: Found in Trixie's trailer wardrobe at Carnival (via crowbar door opening)
- Mammoth Wool: Obtained by using Max on mammoth at Mount Rushmore Dinosaur park
- Tar: Collected using golf retriever + cup from tarpit at same location  
- Toupee: Acquired via surreal logic bridge (eggplant interaction at Bumpusville house)

PHASE 2: Sequential Costume Assembly (STRICT ORDER):
Location: Savage Jungle Inn entrance (10.2)

1. Start with Base Costume in inventory → plain blue outfit only
2. Use Tar ON Costume → Costume becomes sticky/adhesive base
3. Use Mammoth Wool ON (tar-coated) Costume → Fur attachment successful
   - FAILURE: Cannot apply wool without tar first
4. Use Toupee ON (tarry + woolly) Costume → Head coverage complete  
5. Result: Fully-functional Bigfoot disguise created

PHASE 3: Application and Entry:
6. Use Completed Costume on player character
7. Present to Bigfoot guards at party entrance → Accepted as legitimate Sasquatch
8. Access granted to Party Hall (previously blocked)

WHY IT'S META-CONSTRUCTION:

RIGID SEQUENTIAL DEPENDENCY:
1. Tar application = prerequisite for fur adhesion
2. Fur base = prerequisite for toupee attachment
3. Each step's OUTPUT (modified costume state) becomes next step's INPUT
4. Reordering fails: Wool on bare costume → rejected; Toupee without fur/base → incomplete

NON-INTERCHANGEABLE INTERMEDIATES:
- Tar has other uses but in this chain serves ONLY adhesive function
- Once combined, intermediate states cannot be separated (can't remove tar from costume)
- Each transformation creates irrevocably NEW item state

SINGLE VALID SEQUENCE:
Exactly one path to completed costume. No branching allowed during assembly phase.
```

**Distinction from Multi-Faceted Plan**: While four items can be COLLECTED in parallel (MFP characteristic), the ASSEMBLY phase enforces strict sequential dependency. Costume construction is Meta-Construction; gathering journey was Multi-Faceted Plan. Final solution = MC nested within MFP framework.

---

## Related Types

- **Multi-Faceted Plan**: When requirements discovered in parallel, not sequence
- **Recipe Discovery**: When puzzle is learning the correct combination formula, not executing fixed steps

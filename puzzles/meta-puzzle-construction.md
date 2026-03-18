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

---

### Quest for Glory IV: Dark One's Rituals Collection Chain (QFG4)

**Setup**: Seven ancient rituals must be collected to build the Dark One construct capable of defeating the final villain. Unlike parallel Multi-Faceted Plan puzzles, these rituals require specific sequential discoveries where information from one location enables accessing another ritual.

<small>Source: qfg4-gamefaqs-sac.txt, lines 2276-2300 — "First Ritual: Placed within the Mad Monk's tombstone... Next Ritual: Placed within the Squid Stone..."</small>

```
RITUAL ACQUISITION CHAIN:

Step 1 - Mouth Ritual (Output: Mouth Scroll)
Location: Castle Borgov gate
Prerequisite: Meet Katrina multiple times (days 6-8)
Action: Speak to Katrina at castle gates after establishing relationship
Result: Receives Mouth Ritual scroll directly
Citation: qfg4-gamefaqs-sac.txt:2617-2620

Step 2 - Blood Ritual (Output: Blood Scroll)  
Location: Monastery basement
Prerequisite: Enter monastery (Dark One Sign on door)
Action: Drink from Cask of Amon Tillado → receive vision scroll forms from droplets
Result: Blood Ritual scroll discovered in basement
Citation: qfg4-gamefaqs-sac.txt:2292-2296

Step 3 - Sense Ritual (Output: Sense Scroll)   
Location: Mad Monk's Tomb (swamp area)
Sequential Dependency: Requires information from monastery diary (sense = Mad Monk's tomb)
Action: Fight guarding chernovy, use Dark One Sign + spell sequence "AVOOZL"
Result: Sense Ritual scroll obtained from tomb interior
Citation: qfg4-gamefaqs-anonymous.txt:1057-1068

Step 4 - Heart Ritual (Output: Heart Scroll)
Location: Wraith Barrow (Fighter/Thief path) OR Erana's Staff area (Wizard path)
Sequential Dependency: Must have learned about "Gregor" from monastery diary
Action: 
  Fighter/Thief: Defeat Wraith at barrow, take ritual from tomb
  Wizard: Use Heart Crystal on Erana's Staff base in fairy fountain
Result: Heart Ritual scroll obtained
Citation: qfg4-gamefaqs-sac.txt:2678-2690

Step 5 - Breath Ritual (Output: Breath Scroll)
Location: Baba Yaga's Hut
Sequential Dependency: Requires completing Baba Yaga pie quest (see below)
Action: Feed grue goo pie to Baba Yaga → she reveals Breath Ritual in hut kitchen
Result: Breath Ritual scroll obtained
Citation: qfg4-gamefaqs-anonymous.txt:1056-1055

Step 6 - Bone Ritual (Output: Bone Scroll)
Location: Squid Stone area
Sequential Dependency: Requires Will-o'-Wisp + Dark One Sign activation
Action: Capture wisp at night with candy, use on squids → light reveals Mad Monk's tomb location  
Result: Bone Ritual scroll discovered at tomb marker
Citation: qfg4-gamefaqs-anonymous.txt:1070-1080

Step 7 - Essence Ritual (Output: Essence Scroll)
Location: Dark One's Cave interior (past Boyar ghost)
Sequential Dependency: Requires completing ALL previous rituals first
Action: Navigate cave past obstacles, defeat Boyar ghost to retrieve scroll
Result: Final ritual completes collection
Citation: qfg4-gamefaqs-anonymous.txt:1090-1098

WHY IT'S META-CONSTRUCTION (NOT MULTI-FACETED PLAN):While rituals can be collected in flexible order, the INFORMATION CHAIN is linear:
Diary → reveals ritual locations → enables access to each ritual site
Will-o'-Wisp quest output → enables Squid Stone revelation → Bone Ritual access  
Baba Yaga pie quest output → Breath Ritual reward

SOME SEQUENTIAL DEPENDENCIES ARE RIGID:
Must complete Baba Yaga side-quest before receiving Breath Ritual
Must obtain Will-o'-Wisp (night-only) AND Dark One Sign to reveal Sense Ritual clues
Monastery diary information gates all ritual location awareness
```

<small>Cited from: qfg4-gamefaqs-sac.txt:2276-2300, qfg4-gamefaqs-anonymous.txt:1030-1098</small>

---

### Quest for Glory IV: Baba Yaga's Pie Construction (QFG4)

**Setup**: To bribe Baba Yaga with pie requiring three impossible-to-find ingredients. Each ingredient requires completing its own sub-puzzle before being combinable.

<small>Source: qfg4-gamefaqs-sac.txt, lines 2560-2592 — "Grind bones in mortar/pestle... catch grue goo in flask... elderbury berries from the attacking bush"</small>

```
INGREDIENT ACQUISITION CHAIN:

Step 1 - Pie Pan Acquisition (Output: Empty Pie Pan)
Location: General Store, Mordavia town
Action: Purchase from Olga for ~8 crowns
Result: Base container for pie assembly

Step 2 - Bonemeal Preparation (Output: Flask of Bonemeal)
Sub-Chain:
  a) Collect bones from southeast swamp shore or Wraith barrow
  b) Use bones on mortar/pestle at Baba Yaga's hut exterior → bones ground to powder
  c) Transfer powdery bonemeal into empty flask (powder can't be carried otherwise)
Result: Flask of Bonemeal ready for mixing

Step 3 - Grue Goo Collection (Output: Flask of Goo)  
Location: Squid Stone area (accessible after leaving opening cave)
Sequential Dependency: Requires Dr. Cranium's empty flask first
Action: Use Empty Flask on green ooze pool at Squid Stone → fills with goo
Result: Flask of Goo obtained

Step 4 - Elderberry Harvesting (Output: Elderberries)
Location: Elderbury Bush (west forest edge, guarded by vampire bush attacks when approached)
Class-Specific Methods:
  Fighter/Thief: Throw rocks at bush while approaching → berries dislodge → collect quickly  
  Wizard: Force Bolt knocks berries off → Fetch spell retrieves them
Result: Elderberries added to inventory

Step 5 - Pie Assembly (Output: Unbaked Pie)
Location: Baba Yaga's hut kitchen area
Dependencies: All three ingredients + pie pan must be in inventory
Action: Combine Flask of Bonemeal + Flask of Goo + Elderberries into Pie Pan → unbaked mixture

Step 6 - Baking (Output: Baked Grue Goo Pie)
Location: Skull ovens outside Baba Yaga's hut  
Dependencies: Unbaked pie ready, specific skull oven selected
Action: Use pie on ONE of the large skulls arranged around hut → bakes automatically
Result: Perfectly baked grue goo pie

Step 7 - Bribe Application (Output: Breath Ritual + good will)
Dependncies: Baked Pie in inventory, have already met Baba Yaga at least once
Action: Use pie on Baba Yaga when speaking to her
Result: Receives Breath Ritual scroll; hut becomes accessible for future visits

WHY IT'S META-CONSTRUCTION:Each ingredient must be produced before combination is possible.
The flask system creates hard dependency: need empty flask first→ fill with goo OR bonemeal.
Cannot "pre-gather" components—inventoried powder spoils without flask storage.
Sub-chain for bonemeal (bones → mortar → flask transfer) is pure Meta-Construction.
Baba Yaga pie serves as gatekeeper puzzle for Breath Ritual acquisition.
```

<small>Cited from: qfg4-gamefaqs-anonymous.txt:954-967, qfg4-gamefaqs-sac.txt:2560-2592</small>

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

### The Longest Journey: Plumbing Fix Puzzle (Chapter 1 - Penumbra)

**Problem**: April's building has a water main leak blocking access to the academy. A junction box with four switches must be aligned horizontally, then pressure controlled before clamp can be removed. This requires sequential actions where each step enables the next.

<small>Source: 02_outrider_complete_walkthrough.txt, lines 43-51 — "use the gold ring on the disconnected wires near the upper right corner and then what you want to accomplish is to get the bars near the lower right to all be horizontal...Turn the valve near the upper left and then turn the wheel to release the pressure. Take the clamp off the pipe"</small>

<small>Source: 04_gameboomers_k_daleng.txt, lines 47-49 — "Use the ring with the two wires without a connection. Now you have to get the switches to get on a straight line...When you get it right, turn the cap on the ventilator and turn the wheel. Then take the pincers from the hose."</small>

**Sequential Production Chain**:
```
PHASE 1 - Electrical Connection Enabler:
Step 1 → Gold Ring obtained (Found notice bulletin board → give note to Fiona → receives ring)
         - Ring used on disconnected wires in junction box
         - Restores electrical power to switch mechanism

PHASE 2 - Switch Alignment (Precision Sub-Puzzle):
Step 2 → Right switch moves red indicator light; left switch rotates bars themselves
         - Goal: All four bars must align horizontally
         - Strategy: Lock one horizontal bar, rotate remaining three into position
         - OUTPUT: Electrical system armed and functional

PHASE 3 - Pressure Control (Sequential Safety):
Step 3 → Turn valve (upper left) to reduce pressure first
         - CRITICAL ORDER: Valve BEFORE wheel; wrong order causes failure/leak
         
Step 4 → Turn wheel to release flow
         - PREREQUISITE: Pressure already reduced by valve action

PHASE 4 - Clamp Removal:
Step 5 → Take pincers/clamp from pipe (now safe)
         - Item required for later puzzle (fishing pole construction in subway)
         - Return gold ring for future use

PHASE 5 - Inter-Realm Item Transport:
Step 6 → Clamp transported across realm boundary to Arcadia
         - Combined later with duck + string = fishing pole
```

**Why It's Meta-Construction (Not Multi-Faceted Plan)**:
1. **Strict Sequencing**: Cannot remove clamp before turning valve; cannot turn valve before wires connected via ring
2. **Output/Input Chain**: Each phase produces working state necessary for next phase (Power → Switch Access → Pressure Reduced → Flow Released → Clamp Safe)
3. **No Reordering Possible**: Valve+wheel order is enforced by game physics; electrical connection must precede switch manipulation
4. **Carry-Forward Item**: Clamp obtained here becomes INPUT for entirely separate puzzle later (subway key fishing sequence)

**Stark Dimension Mechanics**: This puzzle introduces the "technobabble" aesthetic of Stark—futuristic but broken infrastructure requiring player intervention. The ring-as-electrical-conductor represents TLJ's theme of using everyday items in improvised technical contexts, established early to prepare players for similar meta-construction puzzles in both dimensions.

---

### The Longest Journey: Shadow Puppet Distraction (Chapter 2 - Through the Mirror)

**Problem**: Freddie the janitor blocks theater entrance where Cortez is hiding. Cannot enter directly; must create distraction using environmental shadow projection to lure him outside while player sneaks past.

<small>Source: 02_outrider_complete_walkthrough.txt, lines 128-135 — "Use the hat at the top of the pile and use the toy monkey on the bottom. This will create a shadow that looks like the detective getting ready to fire a gun...follow him into the theater. Go through the door where the sweeper guy entered earlier. You'll notice a stack of boxes and some garbage nearby."</small>

<small>Source: 03_walkthroughking_ashley_bennett.html, lines 68-72 — "Look at the shadow project up on to the wall, then place the hat on the garbage heap and put the monkey near the base of it. Open the trash can near the door and use the matches on it to light a fire."</small>

<small>Source: 04_gameboomers_k_daleng.txt, lines 71-73 — "Put the monkey on the trash pile and the hat further up on the same pile...Open the trashcan and use the matches on it afterwards."</small>

**Sequential Production Chain**:
```
PREREQUISITE ITEMS (Gathered in prior puzzle sequences):
→ Toy Monkey: From April's closet box (Chapter 1 start)
→ Detective's Fedora: From street in front of theater (after candy incident)
→ Matches: Taken from table at Border House in Chapter 1


PHASE 1 - Fuse Box Bypass (Separate Sequential Chain #1):
Step 1 → Iron Key obtained from subway tracks (required fishing pole setup)
         - Key used on fuse box lock outside theater

Step 2 → All functional switches flipped left; Band-Aid applied to glove
         - Repaired glove used on live wire
         - Lights go out, Freddie exits to fix marquee


PHASE 2 - Distraction Construction (Sequential Chain #2):
Step 3 → Return to alley behind theater after Freddie has departed
         
Step 4 → Position TOY MONKEY at BASE of garbage pile (near light source)
         - Monkey creates shoulder/body silhouette on wall projection

Step 5 → Position FEDORA atop garbage pile
         - Hat aligns with monkey head level
         - Combined shadow appears as DETECTIVE IN COAT AND HAT

Step 6 → Approach trash can at door, open lid
         
Step 7 → Use MATCHES on trash can contents
         - Fire ignites, creates smoke/flame distraction
         
Step 8 → Freddie runs outside investigating fire/shadow threat
         
Step 9 → Player enters theater while Janitor is outside


CHAIN STRUCTURE ANALYSIS:
Chain #1 (Fuse Box): Key → Unlock → Flip Switches → Repair Glove → Touch Wire → Lights Out
Chain #2 (Distraction): Position Monkey → Position Hat → Open Trash → Light Fire → Freddie Leaves → Enter

TWO INDEPENDENT meta-construction sequences must be completed in order. Chain 1 ENABLES the location access that Chain 2 then exploits through timing.
```

**Why It's Meta-Construction**:
1. **Two Independent Chains**: Both fuse box repair AND shadow construction are sequential output/input puzzles
2. **Cannot Reorder Within Chains**: Must position monkey BEFORE hat (hat must align to monkey silhouette); must unlock fuse box BEFORE touching wire
3. **Output Enables Next Step**: Chain 1's "lights out" creates dark environment where shadow puppetry works effectively
4. **Items Have Single Purpose in Each Chain**: Monkey+Hat ONLY useful for this distraction; glove ONLY useful for electrical work

**Distinction from Distraction Physics**: While the outcome is NPC diversion, the puzzle structure is meta-construction (creating the distraction device through sequential steps) rather than simple environmental manipulation. The shadow puppet itself IS the constructed artifact with sequential assembly requirements.

---

### Broken Sword: Shadow of the Templars - Hotel Ubu Key Theft (Chapter 1)

**Problem**: Get Moerlin's room key from the locked rack behind the reception desk at Hotel Ubu. Direct theft impossible while clerk is attentive.

<small>Source: broken-sword-1/4_agh_peter_christiansen_walkthrough.html, lines 229-250</small>
<small>Source: broken-sword-1/1_walkthroughking_broken_sword.html, lines 82-86</small>

**Solution Chain**:
```
Step 1 - Information Gathering (Lady Piermont):
→ Approach Lady Piermont at piano in hotel lobby
→ She reveals Khan uses alias "Moerlin" for room booking
→ Player learns target key identity before theft attempt possible

Step 2 - Distraction Setup:
→ Request assistance with key from reception clerk (polite inquiry)
→ Lady Piermont overhears, volunteers distraction plan
→ Coordination established between two NPCs and player

Step 3 - Physical Theft During Distraction Window:
→ Clerker is distracted by Piermont's attention elsewhere
→ Player approaches locked rack unobserved during distraction window
→ Take physical key directly from rack (item added to inventory)

Step 4 - Access Granted:
→ Key used on Moerlin's hotel door → Room access enabled
→ Can proceed with Chapter 1 exploration objectives
```

**Why It's Meta-Construction (Not Multi-Faceted Plan)**: The theft requires sequential progression where information discovery ENABLES the physical opportunity. Player cannot skip directly to theft—must first learn target identity through NPC dialogue, then coordinate distraction timing, THEN execute physical action. Each step produces output needed for next step (knowledge → coordination → theft). Parallel gathering impossible because distraction window only opens AFTER relationship with Piermont established.

---

### The Longest Journey: Potion Mixing System (Chapter 5 - There and Back Again)

**Problem**: Inside Roper Klakks' tower in the Forest of Sorcery, player must create five distinct magical potions to overcome various obstacles. Only certain bottle color combinations work, in EXACT sequence order. The formula book reveals potion types but not exact recipes—player must experiment.

<small>Source: 04_gameboomers_k_daleng.txt, lines 173-186 — "Take the white, yellow, green and blue bottles...Mix the white, green and blue bottles to get a invisibility mixture (it's really important that you get the mix in that exact order)...Mix yellow, white and blue essence (light-as-a-feather mixture)..."</small>

```
POTION PRODUCTION CHAIN:

PREREQUISITE ACQUISITION:
→ Enter tower after bypassing stoned man (flower+berry mix distraction)  
→ Confront Roper Klakks, give him Calculator (from earlier puzzle)
→ Gain access to potions laboratory with colored bottles and formula book


FORMULA BOOK REVELATION:
Book tells player WHICH POTION TYPES exist but NOT exact recipes:
1. Invisibility mixture
2. Light-as-a-feather mixture (levitation effect)  
3. Magic-binding mixture (stabilizes volatile compounds)
4. Explosion mixture (disrupts containment fields)
5. Wind mixture (summon/control wind spirit)

SEQUENTIAL PRODUCTION WITH CRITICAL COLOR ORDERING:

[White + Green + Blue] → Invisibility (exact order required)
         ↓ OUTPUT: Clear liquid for Chapter 9 stealth


[Yellow + White + Blue] → Light-as-a-feather  
         ↓ OUTPUT: Grants temporary flight for cliff jumps


[Green + Yellow + Blue] → Magic-Binding
         ↓ OUTPUT: Stabilizing agent for volatile combinations  


[Red + Red + Blue] → Explosion (uses TWO red bottles)
         ↓ OUTPUT: Unstable paste for crystal orb puzzle


[White + Red + Blue] → Wind Mixture  
         ↓ OUTPUT: Give to Captain Nebevay, convinces him wind returned


META-CONSTRUCTION CONSTRAINTS:

1. RESOURCE SHARING: White bottle used in 3 potions; Blue in ALL five
2. IRREVERSIBLE MIXING: Wrong order wastes ingredients  
3. APPLICATION ORDER: Magic-Binding must apply BEFORE Explosion+Crystal combination
4. CARRY-FORWARD VALUE: Invisibility consumed in Ch9, Feather used in Ch8 cliff


WHY IT'S META-CONSTRUCTION:
- Sequential output/input chain where resources CONSUMED by earlier potions affect availability for later ones
- Cannot reorder mixing sequence without considering remaining bottle inventory  
- Each intermediate product (potion) has exactly one purpose in specific chapter puzzle
- Backtracking creates dead-ends if player misallocates scarce bottles (e.g., uses Red before saving for Wind)
```

---

## Related Types

- **Multi-Faceted Plan**: When requirements discovered in parallel, not sequence  
- **Recipe Discovery**: When puzzle is learning the correct combination formula, not executing fixed steps
- **Pattern Learning**: When same rule set applies across multiple targets with identical mechanics

---

### Grim Fandango: Tube-Switching Room Access Chain (GF - Year One)

**Problem**: Manny needs to access the tube-switching room to read messages from other offices, but the door is always closed by a pink demon who doesn't look when he shuts it. Requires exploiting the NPC's blind spot while creating an environmental blockage.

<small>Source: the-spoiler_walkthrough.html, lines 167-185 — "You've already met someone who can [access tube-switching room]... Remember the pink demon who was complaining about people gumming up the machine?... Notice that he doesn't actually look at the door when he closes it. Maybe you could do something that will keep the door open when he slams it shut."</small>

```
SEQUENTIAL PRODUCTION CHAIN:

PREREQUISITE ITEM COLLECTION (parallel, but needed for this chain):
→ Playing cards: From Manny's office desk
→ Hole punch: From Eva's secretary desk  
→ Deflated balloon animals: From clown at Festival using dialogue sequence


CHAIN STEP 1 - Create Perforated Card (Output: Modified Card)
Input: Playing cards + hole punch
Action: Use cards on Eva's hole punch
Result: PERFORATED PLAYING CARD created (card with punched holes)
Why sequential: Cannot proceed without this specific modified item. Cards alone don't work; must be perforated first.


CHAIN STEP 2 - Obtain Inflatable Balloons (Output: Inflated Balloon Objects)
Input: Clown at Festival + dialogue choices
Action Sequence:
- "Practice What?" → "Twist me up one of them" → "Bet ya can't do a cat" → "A dead worm"
- Get deflated balloon, inflate it using building hoses (packing room red/blue hoses)
- Ask clown for more: "My kid wants another balloon animal" → "Any more dead worms?"
Result: TWO inflated balloons in inventory


CHAIN STEP 3 - Create Tube Blockage (Output: Blocked Message Tubes - temporary state change)
Input: Red and blue inflated balloons + packing room message tubes
Action: Place one balloon on red hose, one on blue hose
Result: When message sent through system, both balloons inflate further and BLOCK the tubes
Why sequential: Balloons must be prepared in Step 2 before use here. This state change (blocked tubes) is prerequisite for next step.


CHAIN STEP 4 - Manipulate Pink Demon NPC (Output: Tube-Switching Room Access Window)
Input: Blocked tube state (from Step 3) + timing
Discovery: Pink demon complains about gummed-up machine, then goes into tube-switching room
Critical mechanic: "He doesn't actually look at the door when he closes it"
Action Sequence:
- Wait for demon to exit room and complain about tubes
- He returns to investigate the blockage
- When he opens then slams door → USE DEADBOLT WHILE HE'S NOT LOOKING
- Deadbolt engages after he's slammed door but before checking, keeping it open


CHAIN STEP 5 - Read Messages (Output: New Client Information)
Input: Unlocked tube-switching room + perforated card (from Step 1)
Action: 
- Enter now-accessible room  
- Place perforated card on RED tube (the holes reduce air pressure properly)
- Message travels through without being sucked past the card barrier
Result: Domino's messages readable; gain access to new high-profile client

WHY IT'S META-CONSTRUCTION:

OUTPUT/INPUT DEPENDENCIES CONFIRMED:
Step 1's output (perforated card) → Step 5's input REQUIREMENT  
Step 3's output (blocked tubes) → Step 4's NPC behavior trigger
Step 4's output (door access window) → Step 5's PREREQUISITE

NO REORDERING POSSIBLE:
- Can't use perforated cards before blocking tubes (cards would be sucked through anyway)
- Can't create tube blockage without balloons from clown  
- Balloons require specific balloon animals which require dialogue tree completion
- Door deadbolt timing depends on demon reacting to blocked tubes

BACKTRACKING CREATES DEAD-ENDS:
Walkthrough explicitly states the interlocking nature—if player misses any step's OUTPUT (deflated balloons, perforated cards), they cannot complete subsequent steps. The chain has exactly ONE valid forward sequence.


NOIR THEME INTEGRATION:
The puzzle uses classic noir elements—sneaking, exploiting blind spots, bureaucratic obstacles (message tubes as communication barriers). The "pink demon doesn't look at the door" detail is pure film noir mechanics where physical world rules create exploitable weaknesses in authority figures.
```

---

### Grim Fandango: Year Two - Naranja's Dog Tags Recovery Chain (GF)

**Problem**: Seaman Naranja must be declared "officially dead" to open his position for Manny on the boat. This requires faking his death through a multi-step sequence involving incapacitation, evidence collection, and morgue manipulation.

<small>Source: the-spoiler_walkthrough.html, lines 630-659 — Naranja sequence from Blue Casket kitchen through morgue</small>

```
SEQUENTIAL PRODUCTION CHAIN:

CHAIN STEP 1 - Incapacitate Naranja (Output: Unconscious Naranja + Dog Tags)
Location: Toto's shack back entrance → Refrigerator
Input: Turkey baster + dishwater (from Blue Casket kitchen)
Action Sequence:
- Use turkey baster on dishwater to load fluid
- Wait for Naranya distraction (Toto enters, distracts him)
- Use loaded baster on Naranja's bottle
- Result: Naranja knocked unconscious
- Search unconscious body → DOG TAGS collected


CHAIN STEP 2 - Obtain Metal Detector (Output: Functional Metal Detector)
Location: Cat Track blimp security area + litter box room  
Input: Gold flake liqueur (from Calavera Cafe bar) + scythe
Action Sequence:
- Drink gold flake liqueur at blimp security
- Walk through metal detector BEFORE burping (creates metal detection event)
- Alone with Carla behind desk → Converse about her "nice metal detector"
- Carla throws detector in litter box room letter box
- Retrieve with scythe from ledge

Why sequential: Dog tags useless without metal detector. Metal detector requires specific timing window created by liqueur→burp sequence.


CHAIN STEP 3 - Forge Death Certificate (Output: Naranja Declared Dead)  
Location: Morgue
Input: Dog tags + metal detector
Action Sequence:
- Use dog tags on one corpse in morgue rack
- Use metal detector on Membrillo (morgue attendant NPC)
- Membrillo scans body with detector, finds tags, identifies as "Naranja"
- Result: Official death certificate issued; Naranja removed from crew manifest

Why sequential: Cannot forge without BOTH items. Tags alone wouldn't verify identity to morgue rules. Metal detector alone would find nothing on corpse.


FINAL SYNTHESIS:
All three steps complete → Naranja status = "Deceased" in boat crew registry  
→ Manny can fill position once other requirements met (union card, tools)

WHY IT'S META-CONSTRUCTION (Not Multi-Faceted Plan):

STRICT ORDERING ENFORCED:
Step 1 produces tags. Step 2 requires separate chain but both items needed for Step 3. Step 3 (final synthesis) CANNOT occur until Tags + Detector BOTH present at Morgue location. While Steps 1-2 could theoretically reverse order, their outputs feed into exactly ONE final application point with no branching paths.

INTERLOCKING NARRATIVE:
Each step produces narrative state changes that enable the next:
1. Unconscious body → tag removal possible
2. Metal detector acquisition → verification tool available  
3. Verification + tags → "official death" status

NOIR THEME - CORRUPT BUREAUCRACY:
The puzzle embodies film noir bureaucratic corruption—you can buy a fake death certificate if you have the right evidence and access to the right (unscrupulous) official. Membrillo won't question dog tags; the system is rigged for those who know how to work it.
```

---

### Syberia: Train Museum Voice Cylinder Sequence (SYB)

**Problem**: To leave Valadilene by train, player must arrange artifacts on the museum car's display stands in a specific sequence. Each item triggers cutscenes that advance Oscar's backstory and unlock progression.

<small>Source: gamefaqs_thayes_syberia.txt, lines 473-480 — "Put the Hans-Anna mechanical toy on the stand in the middle of the room and put the mammoth toy doll on the platform at the bottom-right corner of the room. Look at the shelves and put the Valadilene voice cylinder on the top-left platform and the music cylinder on the top-right platform."</small>

```
SEQUENTIAL INTERDEPENDENCE CHAIN:

Step 1 - Mammoth Toy Doll Acquisition (Prerequisite Collection):
→ Trace mammoth outline in Voralberg house attic → Give tracing to Momo
→ Momo leads player to secret cave
→ Enter dam cave system → Obtain mammoth toy from far side of cave
→ This item is ONLY useful for museum display—no other function

Step 2 - Valadilene Voice Cylinder Acquisition (Crypt Puzzle):
→ Reconstruct elevator with four cog wheels (separate MFP puzzle)
→ Ride to church upper level, use purple punch card on automaton
→ Return to crypt area, insert Voralberg key into hat mechanism  
→ Enter Hans Voralberg's coffin → Retrieve voice cylinder from drawer

Step 3 - Hans-Anna Mechanical Toy Production (Gramophone Sequence):
→ Use Valadilene voice cylinder in factory gramophone
→ Cutscene plays: Hans falling while chasing mammoth toy up pillar
→ After cutscene, mechanical toy appears on gramophone (NEW ITEM CREATED)

Step 4 - Music Cylinder Retrieval (Factory Hidden Mechanism):
→ Pull ninth book from grammarophone shelf → reveals hidden compartment
→ Music cylinder found inside gramophone after previous cutscene triggers
→ Note: Only accessible AFTER voice cylinder cutscene completes

Step 5 - Museum Display Execution (Final Assembly):
Player must arrange items in EXACT positional order on museum car:

Position A (Center Stand): Hans-Anna Mechanical Toy
Position B (Bottom-Right Platform): Mammoth Toy Doll  
Position C (Top-Left Shelf): Valadilene Voice Cylinder
Position D (Top-Right Shelf): Music Cylinder

→ Items must be placed in this sequence for cutscenes to play correctly
→ Each placement triggers specific narrative fragments that combine into Oscar's backstory
→ Only after all four placed → Train release permit can be delivered to Oscar → Departure unlocked


WHY IT'S META-CONSTRUCTION:

OUTPUT/INPUT CHAIN STRUCTURE:
1. Mammoth outline tracing → Momo reveals cave location (information output)
2. Cave exploration → Mammoth toy doll acquirable (physical item output)  
3. Voice cylinder use in gramophone → Cutscene plays → Mechanical toy CREATED (item transformation)
4. Gramophone cutscene completion → Book pullable → Music cylinder revealed (prerequisite gate)
5. All four items assembled on museum stand → Narrative sequence unlocked (final synthesis)

Each step produces EXACTLY ONE output needed for subsequent step:
- Toy doll has NO other use beyond museum display
- Mechanical toy only produced by gramophone sequence, only used in museum
- Music cylinder only accessible after previous steps complete the gramophone puzzle chain

NO BRANCHING ALLOWED: Player cannot skip ahead—each artifact requires completed prior chains. Missing any component means permanent backtracking through entire Valadilene section.


SYBERIA-SPECIFIC DESIGN ELEMENTS:

Clockwork/Mechanical Motif: All items are themselves automatons or music-box mechanisms—the meta-construction builds Oscar's literal "museum of mechanical memories" where each artifact IS a memory trigger device. This thematic reinforcement distinguishes SYB from other implementations where construction chains are purely functional rather than narrative-embedded.

Cutscene-Based Validation: Unlike MI2's physical outputs (crackers, water), SYB validates through NARRATIVE CUTSCENES—each item placement plays video sequences that confirm correct positioning. The museum functions as both puzzle and storytelling device simultaneously.
```

### Simon the Sorcerer: Goblin Cave Key Escape Chain (SIMON)

**Problem**: Simon is locked in a goblin cave after being kidnapped via the grocery delivery box. The door has a key inside the lock, inaccessible without triggering it to fall out. A sequence of item interactions is required where each step produces the condition for the next.

<small>Source: walkthroughs/simon1/simon1.txt, lines 676-691 — "Open the box to stand up. Pick up the rat bone. Look at the boxes to get the spell book, then open the spell book to get a piece of paper... Use the paper on the door, to push the paper through the crack at the bottom of the floor. Then, use the rat bone on the lock. This causes the key to fall out of the lock and onto the paper on the floor."</small>

<small>Source: walkthroughs/simon1/simon1_2.txt, lines 153-160 — "Open the box. Get the rat bone. Look at the boxes and get the spell book. Open the spell book to find the paper... Use the paper on the door. Use the rat bone on the lock. Get the paper to get the key."</small>

```
SEQUENTIAL PRODUCTION CHAIN:

STEP 1 - RAW MATERIAL ACQUISITION (RAT BONE)
Prerequisite: None, item available immediately upon entering cave
Action: OPEN box (giant delivery crate Simon arrived in), stand up fully
Result: RAT BONE visible on floor, COLLECT IT
Output Item: Rat Bone (physical tool for lock manipulation)


STEP 2 - INFORMATION ARTIFACT RETRIEVAL (SPELL BOOK)  
Prerequisite: Having opened the delivery box and gained full standing room
Action: LOOK at other boxes in cave → dialogue indicates something inside
Result: SPELL BOOK obtained from box contents
Output Item: Spell Book (container for paper, not used directly)


STEP 3 - INTERMEDIATE ITEM EXTRACTION (PAPER)
Prerequisite: Possessing Spell Book from Step 2  
Action: OPEN Spell Book in inventory → reveals loose PAGES/PAPER falling out
Result: PLAYER AUTOMATICALLY ACQUIRES PAPER item
Output Item: Paper (flexible thin object that can pass through crack)

Why Not Direct Extraction? The paper exists ONLY as a component inside the book.
Opening the book is a transformation action: Book Container → Released Contents


STEP 4A - DOOR PREPARATION (PAPER UNDER CRACK)
Prerequisite: Paper obtained from Step 3
Action: USE paper on door → paper slides through bottom crack to interior floor
Critical: Paper must be positioned BEFORE lock manipulation
Result: Paper now lies INSIDE the locked room, directly below the keyhole
Output State: Paper trap set up (no new item created, but environmental condition established)


STEP 4B - LOCK MANIPULATION TRIGGER (RAT BONE JAM)  
Prerequisite Rat Bone from Step 1 positioned for rapid access
Action: USE rat bone on lock → jam bone into keyhole mechanism
Result: Bone pushes KEY out of the lock, key falls downward onto paper

Why The Paper Matters: Without paper underneath, key would fall to floor but be
inaccessible (player outside locked room). Paper with key on it can then be retracted.


STEP 5 - OUTPUT RETRACTION (PAPER + KEY COMBINATION)
Prerequisite: Both Step 4A and 4B completed successfully  
Action: GET paper from floor (outside door but previously inserted through crack)
Result: PAPER retrieved WITH KEY riding on top → PLAYER NOW HAS KEY ITEM

Transformation Rule: Paper acts as conveyor belt, carrying key through same
crack it entered. Key has no independent means of passing through crack.


STEP 6 - FINAL ACTION (DOOR UNLOCKING)
Prerequisite: KEY obtained from Step 5  
Action: USE key on lock → standard unlock mechanic
Result: Door opens, access to rest of goblin cave granted

Why This Is The Terminal Output: Key's only purpose is door opening. Once used,
puzzle complete. No further transformations or chaining occurs.


WHY IT'S META-CONSTRUCTION (NOT MULTI-FACETED PLAN):

LINEAR DEPENDENCY STRUCTURE: Each step's OUTPUT is EXACTLY ONE STEP 1's INPUT:
1. Rat bone → [Step 4B] lock-jamming tool (acquired Step 1, used Step 4)
2. Book → [Step 3] opens to create paper (acquired Step 2, transformed Step 3)  
3. Paper → [Step 4A/5] conveyor for key retrieval (created Step 3, used Steps 4-5)
4. Key on paper → [Step 6] door opening (retrieved Step 5, final use Step 6)


NO PARALLEL GATHERING POSSIBLE:
Unlike Multi-Faceted Plan where requirements can be collected in any order, here:
- Cannot insert paper before obtaining it from book
- Cannot retrieve book without first being able to stand/search boxes (Step 1 prerequisite)
- Rat bone must wait until lock manipulation moment, despite being collectible immediately
- Key retrieval requires BOTH paper AND rat bone present and correctly sequenced

The player cannot "prepare ahead" by gathering all components before starting—the chain itself DICTATES the order.


INTERMEDIATE STATE HAS NO ALTERNATIVE USE:
Paper in hand serves NO PURPOSE other than becoming key-delivery system.
Spell book serves NO PURPOSE other than being paper container.
Rat bone's ONLY use is jamming lock (no alternative application exists).
Each item is single-use, single-purpose within this specific chain.


FAILURE MODE DEMONSTRATES CHAIN BREAKING:
If player uses rat bone BEFORE inserting paper:
→ Key falls to floor inside room → cannot retrieve → puzzle FAILED, game state locked

This is DIFFERENT from MFP failure (where missing component just prevents final assembly).
Here the ENTIRE CHAIN breaks if order violated. No backtracking available—must restart.


COMIC DELIVERY AS MECHANICAL JUSTIFICATION:
The absurdity of "paper slides under door while bone jams lock, key falls on paper"
is delivered with game logic that treats this as straightforward cause-and-effect rather
than cartoon physics override. The chain is internally consistent even if ridiculous.
```

---

### Legend of Kyrandia: Deadwood Glade Activation Chain (LK1)

**Problem**: To activate the healing gem (yellow gem) on Brandon's amulet, player must restore life to the Deadwood Glade—a barren area with a large hole in the center. This requires collecting three specific seeds from disparate locations and planting them together.

<small>Source: classicgamesparadise_walkthrough.html, lines 109-113 — "Collect the walnut at the Songbird's Nest, the pinecone west of the oldest tree in Kyrandia (with Old Nolby sitting under it) and an acorn to the northwest of the pinecone. Drop these 3 items in the hole at Deadwood Glade."

Source: bonny_ploeg_walkthrough.html, lines 109-112 — "Acorn - Found at oak tree. Put in hole to make bush. Pineapple [pinecone] - Found lying around. Put in hole to make bush. Walnut - Found at songbird. Put in hole to make bush."</small>

```
SEQUENTIAL PRODUCTION CHAIN:

PREREQUISITE ITEM COLLECTION (gathered in any order):
→ WALNUT: Found beneath the Songbird's Nest (east of Darm's shack)
→ PINECONE: West of the oldest tree where Old Nolby sits
→ ACORN: Northwest of the pinecone location


CHAIN STEP 1 - Seed Delivery to Deadwood Glade:
Location: Deadwood Glade (south of Darm's shack, large hole in center)
Action Sequence:
- Drop WALNUT into hole
- Drop PINECONE into hole  
- Drop ACORN into hole
Result: A small plant/bush suddenly sprouts and comes to life


CHAIN STEP 2 - Healing Gem Activation:
Prerequisite: Plant successfully grown from seed combination
Effect: The yellow gem on Brandon's amulet is ACTIVATED
Player now has access to HEALING SPELL ability (used later on songbird, snake bite, Herman)

Why sequential: Cannot activate healing gem without first completing seed combination. The plant's emergence TRIGGERS the gem activation—no plant = no healing power. Each seed independently worthless until all three combined at glade location.


CHAIN STEP 3 - Healing Application (Extended Chain):
The yellow gem enables subsequent puzzle solutions, continuing the interdependency:
- Heal injured songbird → obtain quill for Darm
- Heal after snake bite at ruby tree (life-or-death application)
- Put Herman to sleep in castle (access to bell room, golden key)

Each healing application is a NEW META-CONSTRUCTION chain that depends on this initial activation.


WHY IT'S META-CONSTRUCTION:

PARALLEL SEED COLLECTION WITH SEQUENTIAL ACTIVATION:
While seeds can be gathered in any order, the ACTUAL PUZZLE CHAIN is strictly sequential:
Step 1 (collect walnut) → no effect alone
Step 2 (collect pinecone) → no effect alone
Step 3 (collect acorn) → no effect alone
STEP 4 (combine all three at glade) → PLANT APPEARS → HEALING GEM ACTIVATES

The synthesis moment is CRITICAL—individual seeds have ZERO VALUE until combined. This differs from Multi-Faceted Plan because the THREE SEEDS together create a NEW ITEM (the plant) that triggers gem activation, rather than being independently useful items assembled for one goal.


OUTPUT/INPUT DEPENDENCY CHAIN:
Output of Step 4 (activated healing gem) → Input for subsequent puzzles (songbird cure, snake bite cure, Herman sleep spell)

This creates a MAJOR PROGRESSION GATE. Without completing the Deadwood Glade sequence, player cannot:
- Obtain Darm's scroll (quill requires healed songbird)
- Cross volcanic river in Shadowrealm (scroll required)
- Retrieve ruby from ruby tree (healing required after bite)
- Access upper castle floors (Herman blocks without sleep spell)

FAILURE MODE - INCOMPLETE COMBINATION:
Using only 1 or 2 seeds → nothing happens, items remain in inventory for later combination.
No permanent loss—can correct mistake by returning with missing seed(s).


THEMATIC JUSTIFICATION:
The puzzle theme is REJUVENATION—dead earth brought back to life through planting. This foreshadows Brandon's role as heir who will restore magic throughout Kyrandia. Mechanically, the chain enforces the sequence: gather seeds → plant → receive power → use power for further restoration acts.

```

---

### Legend of Kyrandia: Birthstone Altar Puzzle (LK1)

**Problem**: To obtain the Magic Flute needed to shatter the ice blocking Serpent's Grotto, player must arrange four birthstones in a random order on the Marble Altar's golden dish. Each correct placement lights a corresponding gem on Brandon's amulet; all four gems lit transforms the dish into a flute.

<small>Source: classicgamesparadise_walkthrough.html, lines 117-121 — "The best method for placing the stones is to save first and then reload once you have placed the correct stone. This way you won't burn up all of the stones trying to find the correct order... The stone order is random for every game but the first stone is always the Sunstone which can be found at the bubbling spring to the east."

Source: bonny_ploeg_walkthrough.html, lines 41-44 — "Once you have the sunstone, ruby, garnet, peridot, sapphire, diamond, opal, onyx, pearl, topaz, amethyst and aquamarin, take them all to the altar. Place the sunstone in the golden dish... You'll need to find the 3 other stones that need to be placed in the correct order on the dish. This is random and can only be solved by trial and error."</small>

```
SEQUENTIAL INTERDEPENDENCE WITH RANDOMIZATION:

PREREQUISITE COLLECTION (MUST GATHER BEFORE STARTING):
→ SUNSTONE (always first in sequence) - Bubbling spring east of cave entry
→ RUBY (always last in sequence) - Ruby tree northwest, guarded by poisonous snake
→ 12+ OTHER GEMS scattered throughout Timbermist Woods exploration
→ The remaining TWO correct stones are RANDOM subset from the other 10 gems

CHAIN STEP 1 - Save Game (Critical Meta-Preparation):
Before attempting altar puzzle:
- Save game state at Marble Altar location
- This is ESSENTIAL because wrong stones are CONSUMED (burned up)


CHAIN STEP 2 - Place Sunstone (Deterministic First Step):
Input: SUNSTONE only (guaranteed to work)
Action: Place in golden dish
Result: FIRST gem on amulet lights up, stone consumed
Output state: Amulet gem #1 lit, save point established for reload


CHAIN STEP 3-5 - Trial and Error for Middle Stones (Randomized):
Loop for each middle position:
  Step A → Select candidate gem from inventory
  Step B → Place on dish
  Check Result:
    - CORRECT: Second/third amulet gem lights, stone consumed → Continue to next position
    - WRONG: Stone burned/destroyed, nothing happens → RELOAD SAVE, try different stone
  
Critical Constraint: Cannot brute-force all combinations without saves—would exhaust gem inventory.


CHAIN STEP 6 - Place Ruby (Deterministic Final Step):
Input: RUBY only (guaranteed final position)
Prerequisite: All three previous gems lit on amulet  
Action: Place on dish as fourth and final stone
Result: FOURTH amulet gem lights, golden dish TRANSFORMS into Magic Flute
Output Item: FLUTE created (new item in inventory)


CHAIN STEP 7 - Ice Shattering Application:
Input: Magic Flute from altar transformation
Location: Serpent's Grotto entrance (formerly ice-blocked)
Action: Play flute → high note cracks the ice seal
Result: Grotto access granted, Shadowrealm exploration unlocked


WHY IT'S META-CONSTRUCTION WITH RANDOMIZATION LAYER:

OUTPUT/INPUT CHAIN STRUCTURE:
1. Sunstone placement → Output: Gem 1 lit (enables position 2)
2. Random gem #1 correct → Output: Gem 2 lit (enables position 3)
3. Random gem #2 correct → Output: Gem 3 lit (enables final position)
4. Ruby placement → Output: FLUTE CREATED (new inventory item)
5. Flute use at grotto → Output: ICE SHATTERED (progression gate removed)

Each step produces EXACTLY ONE OUTPUT needed for next step. No reordering possible—four positions must be filled in sequence. The flute cannot exist until all four stones correctly placed.


RANDOMIZATION AS MECHANICAL CONSTRAINT:
Unlike fixed meta-construction puzzles, this one has RANDOM correct solutions (middle two gems differ per playthrough). This creates a META-LAYER of puzzle management:
- Player cannot memorize solution between playthroughs
- Must use game's SAVE/LOAD mechanics as PART OF SOLUTION strategy
- Gem economy matters—burning too many stones can create permanent failure state

This is STILL meta-construction because despite randomization, the OUTPUT/INPUT STRUCTURE remains identical. Each correct placement ENABLES next position. Player crafts solution through sequential assembly rather than parallel gathering.


DISTINCTION FROM PATTERN LEARNING:
Pattern Learning would be: learn rule set (e.g., musical scale) then apply to multiple targets. Here, there is NO discoverable RULE—solution is truly random per game. The "learned" element is SAVE/LOAD technique, not a world mechanic.


COMPARISON TO LK1'S POTION PUZZLE:
The Potion Mixing puzzle (Faeriewood) has FIXED recipes (red+yellow=orange, blue+red=purple) while this birthstone altar has RANDOM middle positions. Both are meta-construction, but potion mixing uses KNOWLEDGE TRANSFER (learn formula, apply repeatedly), whereas altar uses BRUTE FORCE WITH CHECKPOINTING (try stones, reload on failure).

```

---

### SpaceQuest III: Astro Chicken Hidden Message Chain (Monolith Burger) (SQ3)

**Problem**: After reaching Monolith Burger, Roger must discover help for rescuing two people held captive on Pestulon. The message is encoded in an arcade game called "Astro Chicken" and can only be decoded with a decoder ring hidden inside a specific fast food meal. This requires purchasing the meal, extracting the ring, playing the arcade game to minimum point threshold, then using the ring to decode the resulting message.

<small>Source: gamefaqs-tricrokra-archive.html, lines 430-450 — "Order the Fun meal, after the silly questions pay... You'll get a decoder ring."</small>

<small>Source: the-spoiler-walkthrough.html, lines 110-116 — "'Look menu'. '7'. 'Q'. 'Pay bill'... Complete Astro Chicken. 'Decode message'."</small>

```
SEQUENTIAL PRODUCTION CHAIN:

STEP 1 - Purchase Monolith Fun Meal (Output: Decoder Ring)
Prerequisites: Buckazoids in inventory (from selling gem on Phleebhut)
Action Sequence:
- West to clerk counter
- LOOK MENU → Select item #7 (Fun Meal)
- Answer questions ("Q" for name, bypass dialogue)
- PAY BILL
- East to empty seat → SIT → EAT
- Bag of fast food consumed reveals hidden item
Output Item: MONOLITH DECODER RING added to inventory
Citation: gamefaqs-tricrokra-archive.html, lines 435-438 — "= Sit at a table = Eat. You'll get a decoder ring."


STEP 2 - Play Astro Chicken Arcade Game (Output: Secret Message Code)
Prerequisites: Decoder Ring in inventory; Buckazoids remaining for game tokens
Positioning: Walk west back to arcade machine near entrance
Action Sequence:
- PLAY MACHINE on arcade cabinet
- PUT MONEY IN MACHINE (insert buckazoid tokens)
- Play Astro Chicken minigame repeatedly

MINIGAME MECHANIC DETAILS:
Astro Chicken objective: Land the character on soft "mat" surfaces, avoiding hard ground.
Difficulty: High—landing zone is small relative to movement speed, requiring precise timing.
Point System: Points accumulate with successful landings; actual player score irrelevant for trigger.
Secret Message Trigger: Reaching 308+ points (or completing game a certain number of times) unlocks hidden message sequence.
Citation: gamefaqs-tricrokra-archive.html, lines 452-457 — "I got mine to 308 and then the game stopped counting points... Once you played enough you get the secret message."


STEP 3 - Decode Message with Ring (Output: Complete Information Package)
Prerequisites: SECRET MESSAGE CODE displayed by arcade machine; Decoder Ring in inventory
Command: DECODE MESSAGE on screen using decoder ring
Decoded Content Reveals:
"Help us! we are being held captive by ScumSoft on the small moon of Pestulon. 
An impenetrable force field surrounds the moon. It must first be deactivated. 
Its origin is unknown to us. ScumSoft security is armed with jello pistols. 
We're counting on you whoever you are."
- Signed: "Two guys in trouble"

Citation: gamefaqs-tricrokra-archive.html, lines 460-475 — Decoded message text


STEP 4 - Navigation Application (Output: New destination planet: Pestulon)
Prerequisites: Ship systems operational; new intel from decoded message
Action Sequence:
- Enter ship → SIT → LOOK Computer
- Select "2" (Navigation System) → "1" (Scan)
- Scan finds Pestulon → "1" to select → "1" for confirm destination
- "2" (Set Course) → "5" (Light Speed) → "3" (Land)
Citation: gamefaqs-tricrokra-archive.html, lines 467-470 — "Next stop Ortega" [then Pestulon after decoding]


```

**Why It's Meta-Puzzle Construction (Sequential Interdependence)**:
This is a strict production line where each step's output enables the next action. Without the decoder ring (Step 1), the code cannot be translated regardless of Arcade skill. Without playing Astro Chicken to unlock threshold (Step 2), no code exists to decode. Without decoding the message (Step 3), Pestulon never becomes known as a destination. Player CANNOT reorder these steps: buying meal after playing game doesn't help if ring only works on revealed codes; cannot play effectively without having funds from gem sale earlier.

**Key Feature**: The hidden mechanic threshold is NOT communicated—walkthrough author found 308 points through trial and error ("I hope you can appreciate this crappy game"). Player receives no feedback about "X more landings to unlock message." This adds frustration layer to the meta-construction: player must deduce that repeated play = unlocking code, not just getting high score.

---

### Quest for Glory III: Lost City Chamber Sequencing (QFG3)

**Problem**: After the Peace Conference disaster, player and companions must infiltrate the Demon-controlled Lost City of Makhtur in southern jungles to prevent the Demon Portal from opening. The final chamber contains ritual progress—Demons attempting to open portal using accumulated deaths from Simbani-Leopardman war. Player must complete a strict sequence of actions within this sealed chamber to either defeat Demons or seal the portal permanently.

<small>Source: qfg3-gamefaqs-cyricz.txt, lines 2245-2298 — Lost City infiltration and final ritual chamber confrontation</small>

```
SEQUENTIAL CHAIN INSIDE FINAL CHAMBER:

PREREQUISITE: ALL COMPANIONS REACHED LOSS CITY BEFORE DAY LIMIT
This MFP-style requirement must be completed before entering the chamber itself. Players who arrived late find city destroyed, game over state triggered.


CHAMBER ENTRY SEQUENCE (Strict Output/Input Dependency):

STEP 1 - Chamber Access Gate Activation:
Input: Five heroes present (Player + Rakeesh + Yesufu + Johari + Kreesha)
Action Approach gate with complete party
Output State GATE OPENS → entry into Lost City interior chambers


STEP 2 - Ritual Observation Phase:
Requirement Walk through halls, observe Demon ritual preparations
Discovery Demons conducting portal-opening ceremony using war casualties as fuel
Critical Information Learned Player must REACH central shrine BEFORE ritual completes


STEP 3 - Doppelganger Chamber Confrontation:
Location Upper floors of Lost City, final room before shrine
Obstacle Five evil clones (Doppelgangers) block path—each hero faces their own shadow self
Combat Phase Sequential battles against mirror enemies

DOPPELGANGER MECHANIC (Sequential Combat Chain):
Fighter's Doppel: Mirror combat skills; requires precise weapon use counter-attacks
Wizard's Doppel Copied spell repertoire; magic duels back-to-back with real threats
Thief's Doppel Equal stealth/agility—difficult to outmaneuver own skillset

CRITICAL COMBAT CONSTRAINT: All five heroes initially LOSING their battles (lines 2290-2293)
Output State If any hero loses → they are absorbed by evil clone; game over possible


STEP 4 - Harima Redemption Intervention:
Prerequisite Helped Harami in earlier Bazaar nights sequence (MFP-style relationship building)
Action Wait for intervention moment during Doppelganger combats
Output: Harami enters chamber, STABS player's Doppelganger from behind (lines 2292-2293)
         - Single action resolves what would otherwise be unwinnable fight
         - Creates opportunity window to escape up stairs


STEP 5 - Shrine Portal Sealing Ritual:
Location Top of tower, central shrine with portal formation in progress
Input Requirement All five heroes alive and reached shrine level before ritual timer expires

RITUAL CHAIN (Sequential actions required to close portal):

PHASE A - Demon Leader Identification:
Action Examine altar area → reveal Master Demon overseeing ceremony
Output Information gain: Must defeat leader first; minor demons indestructible while he lives


PHASE B - Combat Engagement Sequence:
Step 1 → Player engages Master Demon in final boss battle
         - Combat mechanics vary by class (Fighter weapons, Wizard spells, Thief throws)
         
Step 2 → Companions assist automatically if still alive at this point
         - Rakeesh (Paladin), Yesufu (warrior), Johari (healer), Kreesha (support)
         - Each provides buffs/healing/attacks in scripted AI patterns

Step 3 → Master Demon weakened below critical threshold
         - Triggers transformation/enragement phase (optional, class-dependent)


PHASE C - Portal Closure Mechanism:
Prerequisite: Master Demon defeated OR ritual interrupted before completion

OPTION A - Full Victory Path:
Action Defeat all minor demons after leader falls
Result City secured, portal never opens → optimal ending

OPTION B - Sealed But Incomplete (Honorable Alternative):
Action Use Dispel Potions on possessed warriors (ritual participants)
         instead of killing them
Result Portal temporarily sealed but threat remains; world saved for now


STEP 6 - Escape Sequence:
Trigger Master Demon defeated OR ritual halted
Output City begins collapsing/portal destabilizes
Required Action All heroes must retreat to entrance before total destruction


WHY IT'S META-CONSTRUCTION (NOT MULTI-FACETED PLAN):

STRICT ORDERING ENFORCED BY NARRATIVE STATE MACHINE:
Step 1's output (gate opens) → required for Step 2 (enter city)
Step 2's discovery (ritual in progress) → creates urgency for Steps 3+5
Step 4's intervention window only appears DURING Step 3 combat, not before or after
Step 5 requires Master Demon defeat BEFORE portal closure becomes possible

CRITICAL CHAIN BREAKING POINTS:
- Arrival too late → no opportunity to enter (MFP prerequisite failure)
- Lose Doppelganger fight without Harami help → game over state
- Master Demon defeated but companions dead → reduced ending quality
- Failed intervention timing → permanent story consequence (some cannot be saved)


COMPARED TO SPACE QUEST III ASTRO CHICKEN SEQUENCE:

Similarities:
- Hidden thresholds (Harami must be helped X nights → Doppelganger help available at specific combat moment)
- Sequential dependency where earlier MFP choices affect later MC outcomes
- Time pressure element in execution phase

Differences:
- SQ3's chain = item production line (ring→code→message→navigation)
- QFG3's chain = COMBAT STATE MANAGEMENT with narrative consequences


CLASS-SPECIFIC IMPLEMENTATION WITHIN CHAIN:
Fighter path through Doppelganger fight uses weapon skills, not spells or stealth
Wizard path counters magic clones with spell selection rather than melee timing  
Thief path requires dodge/agility checks during same encounter

The OUTPUT is identical (all five survive to Shrine), but mechanical INPUT varies by class.
```

<small>Source: qfg3-gamefaqs-cyricz.txt, lines 2270-2298 — Final battle sequence with Doppelgangers and Harami intervention</small>

---

## Related Types  

| Type | Similarity | Where Meta-Construction Differs |
|------|------------|----------------------------------|
| **Multi-Faceted Plan** | Both require gathering multiple components | MFP gathers in PARALLEL; MC requires SEQUENTIAL execution where order matters |
| **Pattern Learning** | Both build toward final application moment | PL applies same system repeatedly; MC creates ONE output feeding next step |
| **Observation Replay** | Both have critical timing elements | OR copies exact sequence once seen; MC constructs new state at each phase |

---

### Gabriel Knight 1: Priest Disguise Acquisition Chain (GK1)

**Problem**: To infiltrate restricted Catholic Church locations and gain access to voodoo-related evidence within priest sanctums, Gabriel needs authentic religious garb. The disguise requires sequential acquisition—each step's output enables the next—with no possibility of parallel collection or backtracking shortcuts.

<small>Source: justadventure_walkthrough.html, lines 1062-1085 — Complete priest disguise chain documented</small>

```
META-CONSTRUCTION CHAIN - SEVEN STEP SEQUENCE:

STEP 1 - INITIAL SCOUTING (Identifying Target):
→ Visit Catholic Church on Esplanade Avenue during daytime hours
→ Attempt to enter sacristy/priest preparation area → BLOCKED by door
→ EXAMINE door → Requires priest's collar + black shirt for access attempt
→ DISCOVERY: Two components needed—neither in inventory yet


STEP 2 - COLLAR ACQUISITION PREREQUISITE (Obtaining Empty Vestments):
→ Approach church from main entrance during confession hours window
→ Enter confessional booth through public access side
→ EXAMINE interior → Father's vestments hanging on back wall, includes collar left unattended
→ Action: Take priest collar while Father at other end of screen (non-stealth "borrowing")
→ Inventory gain: Priest Collar
→ CRITICAL: This enables Step 3 but doesn't complete disguise requirement


STEP 3 - BLACK SHIRT DISCOVERY (Second Component Location Identification):
→ Have collar in inventory now → unlocks new NPC dialogue options at church
→ Talk to Father or church attendant about borrowing "complete vestments"
→ REVEALED: Black dress shirt also required; one available from priest's personal quarters
→ NEW PUZZLE ELEMENT INTRODUCTION: Collar alone insufficient, creates requirement for shirt

STEP 4 - ACCESS TO RESTRICTED AREA (Using Collar as Key):
→ Exit church sacristy area → return to blocked door from Step 1
→ ATTEMPT entry WITH collar in inventory → partial access gained!
→ Door opens slightly but FULL ENTER still requires BOTH components
→ CRUCIAL TEACHING MOMENT: Partial solutions exist—encourages player to continue quest


STEP 5 - BLACK SHIRT ACQUISITION (From Priest Quarters Chain):
→ New clue from Step 4 dialogue indicates specific location of spare shirt
→ Navigate back through church areas to previously inaccessible quarters
→ Examine wardrobe/dressers → Black dress shirt found hanging/folded
→ TAKE action → Shirt added to inventory
→ Now possess BOTH components: Collar + Black Shirt


STEP 6 - COMBINATION ACTION (Creating Disguise Item):
→ Open inventory with both items present
→ USE Priest Collar ON Black Shirt → composite item created
→ NEW INVENTORY OBJECT: "Priest's Disguise" (merged single item from two components)
→ MECHANICAL TRANSFORMATION: 2 raw materials → 1 functional tool


STEP 7 - FINAL ACCESS GRANTED (Disguise as Key):
→ Return to originally-blocked sacristy door
→ USE Priest's Disguise on door interface OR wear disguise via inventory selection
→ Authentication successful → door fully opens
→ SACRISTY INTERIOR NOW ACCESSIBLE → Contains voodoo evidence items and plot-critical notes


WHY IT'S META-CONSTRUCTION (NOT MULTI-FACETED PLAN):

STRICT SEQUENTIAL ORDER ENFORCED:
1. Can't take collar without first visiting church during correct hours (Step 2)
2. Collar acquisition (output of Step 3) → required for NEW DIALOGUE revealing shirt location (Step 4 input)
3. No partial access granted until BOTH components possessed, preventing shortcut exploitation
4. Shirt location CLUE depends on possessing collar—not just exploration luck


OUTPUT-INPUT DEPENDENCY CHAIN:
┌─────────────────┐     OUTPUT      ┌──────────────────┐
│ Step 1: Scout   │ ───→ Block────> │ Step 2: Access   │
│ Door Blocked    │                 │ Confessional     │
└─────────────────┘                 └──────────────────┘
                                            │
                                            │ collar acquired
                                            ↓
┌─────────────────┐     OUTPUT      ┌──────────────────┐
│ Step 3: Talk    │ ───→ Clue────> │ Step 4: New      │
│ NPC with Collar │                 │ Area Accessible  │
└─────────────────┘                 └──────────────────┘
                                            │
                                            │ shirt location revealed
                                            ↓
┌─────────────────┐     OUTPUT      ┌──────────────────┐  
│ Step 5: Take    │ ───→ Shirt────>│ Step 6: Combine  │
│ Black Shirt     │                 │ Into Disguise    │
└─────────────────┘                 └──────────────────┘
                                            │
                                            │ disguise created
                                            ↓
┌─────────────────┐                      ┌──────────────────┐
│ Step 7: Enter   | <────── KEY ──────> │ Final Access     │
│ Sacristy        |                      │ Granted          │
└─────────────────┘                      └──────────────────┘


CRITICAL DISTINCTION FROM MFP ALTERNATIVE:

IF THIS WERE MULTI-FACETED PLAN, structure would be:
- Collar found during general church exploration (independent path A)  
- Black shirt also available via different NPC trade or environmental search (independent path B)
- Player could collect EITHER first—the two paths have no mechanical dependency
- Both items brought together for final combination at sacristy door

ACTUAL IMPLEMENTATION: Collar is PREREQUISITE FOR DISCOVERING SHIRT LOCATION. Not just "two random things needed together" but specifically "getting A reveals where B exists." That's Meta-Construction's signature OUTPUT→INPUT chain.


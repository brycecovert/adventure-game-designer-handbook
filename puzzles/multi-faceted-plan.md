# Multi-Faceted Plan Puzzle

## Mechanic Definition

The player receives requirements for a solution incrementally—some explicit, some implicit—through failed attempts, character dialogue, and world state observation. The puzzle is "solved" not by executing a single action, but by assembling a complete mental model of what's needed.

## Information Architecture

**Conveyance Method**: Partial disclosure
- Initial contact: Player learns *something* is needed, but not what
- Failed attempts: Reveal what is missing through character reactions or internal monologue
- Synthesis: Player combines scattered clues to form complete requirements

**Player Action Pattern**:
1. Attempt solution → fails → learn gap
2. Address gap → attempt again → learn next gap
3. Repeat until complete mental model assembled
4. Execute complete plan

**Core Mechanic**: The puzzle exists in the player's notebook/information management, not in the UI. No checklist is provided.

## Design Rationale

- Rewards deep world engagement—talking to NPCs, exploring thoroughly
- Creates "designer collaboration" feeling—the player feels they built the solution
- Avoids "fetch quest" feel by requiring synthesis, not collection
- Failure is informative, not punitive

## Why It's Effective

The satisfaction comes from the synthesis moment—realizing "I need all three of these" after discovering each requirement in different contexts. This is distinct from "collect 3 items" because the player *must* infer the collection list themselves.

## Mechanic Variations

| Variation | Information Conveyance | Solution Discovery |
|-----------|----------------------|-------------------|
| Dialogue-driven | NPCs mention missing components indirectly | Player must connect separate conversations |
| Environmental | World state changes after partial completion | Player notices what's now accessible |
| Trial-and-error | Failed attempts explicitly state what's missing | Player iterates through gaps |
| Deduction | Partial info requires logical inference | Player pieces together from clues |

## Generic Example Structure

**Initial State**: Player faces obstacle. Attempting to overcome fails with feedback.

**Information Flow**:
- Character A mentions needing "something from the east"
- Character B mentions "I haven't seen [item] since [location]"
- Examining [location] reveals [item] is present but requires [action]
- Completing [action] provides [item]
- Returning to obstacle with [item] reveals *another* requirement

**Player synthesizes**: The complete solution is never stated; player builds it from fragments.

## Game Examples

### Monkey Island II: Voodoo Doll Construction (Largo)

**Requirement Discovery**:
1. Talk to Voodoo Lady → Learn 4 categories needed: Thread, Head, Body, Dead
2. **No single source explains all four sub-requirements**; player must explore each category

**Incremental Solution Assembly**:
- **Thread**: Access Largo's room (requires innkeeper distraction via escaped alligator) → laundry ticket → trade at laundromat for pearly-white bra
- **Head**: Same room access → pick up toupee with lice
- **Body**: Bar scene shows Largo spitting on wall → collect paper from cartographer → absorb spit
- **Dead**: Cemetery exploration → find ancestor tombstone → dig grave with shovel (torn from signpost)

**Synthesis**: Player must track 4 categorical requirements, each solved by distinct sub-puzzles. No explicit checklist; discovery through failed assumptions ("I can't get his clothes directly" → "Maybe laundry works?").

### Sam & Max Hit the Road: Bigfoot Totem Offering Puzzle (SMHTR)

**Problem**: Inside Savage Jungle Inn pool area, four totem poles represent requirements for the game's ending ceremony. Player must collect all four specific offerings from disparate locations throughout the game world. The complete requirement set is never explicitly stated at once—gathered through incremental dialogue with the Sasquatch Chief and environmental observation.

<small>Source: adventuregamers_walkthrough.html, embedded walkthrough lines 755-760 — "Use the John Muir gourd with the pool. Use the dinosaur tooth with the pool. Use the pillow with the pool. Use the sno globe with the pool to complete the game."</small>

<small>Source: abandonwaredos_solution.html, lines 498-510 — Lists four offering requirements revealed through conversation with Chief</small>

```
FOUR INDEPENDENT REQUIREMENTS (gathered in any order):

OFFERING 1: Dinosaur Tooth
Location Source: Mount Rushmore Dinosaur Tarpit Park
Acquisition Method:
- Use twine on speaking T-Rex's open mouth (timing puzzle)
- Max pulls twine → tooth dislodged and retrieved
Independent of other three offerings

OFFERING 2: John Muir Gourd/Vegetable  
Location Source: Celebrity Vegetable Museum
Acquisition Method:
- Give John Muir portrait to museum woman (portrait stolen from Bumpusville)
- Wait for vegetable growth animation to complete
- Collect fully-grown "John Muir" gourd
Independent of other three offerings

OFFERING 3: Pillow
Location Source: Bumpusville house, Monster-Truck-Bed room
Acquisition Method:
- Simple collection from bed during house exploration

---

### Quest for Glory IV: Leshy Riddle Progression (QFG4)

**Setup**: A forest spirit asks sequential riddles that can only be answered after completing specific quests elsewhere in the game. Each correct answer unlocks the next riddle, creating a knowledge-gated dialogue tree. Unlike standard Symbol Code puzzles, the "code" here is gameplay knowledge acquired through world exploration and quest completion.

<small>Source: qfg4-gamefaqs-sac.txt, lines 2368-2395 — "Q: Who am I? A: Leshy (found in Hero's Magazine)... Q: Save a plant from goo. A: Bush (must have bush in possession)"</small>

```
RIDDLE SEQUENCE WITH GAMEPLAY GATES:

Riddle 1: Name Identification
Question: "Who am I?"
Required Knowledge: Reading the "Hero's Magazine" book in Adventurer's Guild library reveals forest spirit name
Answer: "Leshy"
Requirement State: Must have read books at Adventurer's Guild
Citation: qfg4-gamefaqs-sac.txt:2368-2372

Riddle 2: Environmental Action Gate  
Question: "Save a plant from goo" (rhymeful version)
Required Knowledge: Leshy will ask this only after Riddle 1 answered correctly
Physical Requirement: Must have rescued bonsai bush AND planted it in Erana's Garden
Answer: "Bush" or "I saved the bush"
Requirement State: Must complete bush rescue quest + plant action
Citation: qfg4-gamefaqs-sac.txt:2373-2381

Riddle 3: NPC Encounter Knowledge
Question: "Who's in the lake?" (rhymeful version)
Required Knowledge: Player must recognize lake creature is a Rusalka
Physical Requirement: Must have visited Lake Mordavia at least once, spoken to Rusalka
Answer: "Rusalka"
Requirement State: Encounter with lake spirit completed
Citation: qfg4-gamefaqs-sac.txt:2382-2387

Riddle 4: Hidden NPC Awareness
Question: "Who hides behind 'trick sticks'?" (rhymeful version for hut on chicken legs)
Required Knowledge: Learning about Baba Yaga's disguise mechanism
Physical Requirement: Must have met Baba Yaga OR spoken to Punny Bones who mentions her
Answer: "Baba Yaga"
Requirement State: At least one source of information about Baba Yga consulted
Citation: qfg4-gamefaqs-sac.txt:2388-2391

Riddle 5: Quest Completion Gate
Question: "A berry bush with attitude?" (rhymeful version)  
Required Knowledge: Elderbury Bush identity and completion of pie quest
Physical Requirement: Must have completed Baba Yaga's pie quest successfully
Answer: "Elderbury Bush"
Requirement State: Pie delivered to Baba Yaga, berries harvested beforehand
Citation: qfg4-gamefaqs-sac.txt:2392-2395

Riddle 6: Major Plot Milestone Gate
Question: "Who has the Heart Ritual?" (rhymeful version)
Required Knowledge: Discovery of Heart Ritual location varies by class
Physical Requirement: Must have obtained Heart Ritual through class-specific method
Answer: "Wraith" (Fighter/Thief obtained from barrow OR "Erana's Staff" for Wizard fairy fountain)
Requirement State: One of seven major rituals already collected, significant plot progress

WHY IT'S MULTI-FACETED PLAN (NOT SYMBOL CODE):Requirements are discovered INCREMETALLY through disparate gameplay activities
Each requirement must be SATISFIED through world interaction, not just "knowing" an answer
Player synthesizes complete picture: "Leshy requires me to do X quests in this order to unlock dialogue layers"

DISTINCT FROM RIDDLE PUZZLES IN OTHER GAMES:
Answers cannot be guessed or brute-forced; gates prevent progress without actual quest completion
Knowledge is not "remembered"—it's PROVEN through inventory/world state checks
    
Related Types Differentiation:
- vs Symbol Code Translation: No visual codes to decode; knowledge proven by action
- vs Pattern Learning: Not about rule discovery; about quest completion verification  
- vs Meta-Puzzle Construction: Requirements can be gathered in mostly flexible order, 
  though dialogue sequence is locked
```

<small>Cited from: quest-for-glory-iv/qfg4-gamefaqs-sac.txt:2368-2395</small>

---

### Quest for Glory IV: Tanya's Liberation Quest (QFG4)

**Setup**: A child named Tanya is being held captive by Domovoi in Castle Borgov. Her release requires assembling information and items from multiple sources across different character interactions.

<small>Source: qfg4-gamefaqs-anonymous.txt, lines 985-1010 — "Listen at doored Inn room at night overhear Domovoi... give Rehydration Solution to dehydrated Domovoi"</small>

```
MULTI-SOURCE REQUIREMENT GATHERING (parallel discovery):

Requirement 1: Discover the problem exists  
Location: Hotel Mordavia, specific locked room in evening
Action: Listen through door on nights 3-5 → overhear Domovoi conversation about Tanya and doll
Information Gain: Learn that Tanya is missing from her family due to domestic spirit kidnapping
Citation: qfg4-gamefaqs-anonymous.txt:985-990

Requirement 2: Understand who Domovoi actually is  
Location: Hotel Mordavia, same room (different nights)
Action: Speak to Domovoi through door over multiple evenings
Information Gain: Learn Domovoi's nature as house spirit; learn he's dehydrated and needs reactivation
Citation: qfg4-gamefaqs-sac.txt:2530-2546

Requirement 3: Obtain Rehydration Solution recipe  
Location: Dr. Cranium's lab, Mordavia town
Action: On third visit to doctor (day 3+), ask about "Rehydration Solution"
Sub-puzzle: Provide formula from game manual/pamphlet (or online reference)
Result: Dr. Cranium explains solution but needs ingredient
Citation: qfg4-gamefaqs-sac.txt:1924-1936

Requirement 4: Acquire Grue Goo ingredient  
Location: Squid Stone area (west forest, near Dark One Cave entrance)  
Action: Use Empty Flask on green ooze pool → fills flask with grue goo
Information Dependency: Requires earlier visit to Dr. Cranium who provides empty flask
Result: Return goo to Dr. Cranium → receive Rehydration Solution in exchange
Citation: qfg4-gamefaqs-anonymous.txt:940-953

Requirement 5: Locate and reactivate Domovoi  
Location: Monastery basement (dehydrated cabinet) 
Action: Use Rehydration Solution on dried figure in cabinet → Domovoi reactivates
Result: Domovoi is now physically present to request doll retrieval
Citation: qfg4-gamefaqs-sac.txt:2530-2546

Requirement 6: Retrieve Tanya's doll  
Location: Hotel Mordavia, closet in locked room where she was kept prisoner
Action: Enter room (unlocked after Domovoi release), take doll from closet shelf
Result: Doll obtained, ready to return to Tanya
Citation: qfg4-gamefaqs-sac.txt:1287-1305

Requirement 7: Deliver doll and gain trust  
Location: Castle Borgov interior (where Tanya held captive)
Action: Give doll to Tanya → she recognizes it, trusts player
Result: Can now speak with her about liberation; reveals additional requirement
Citation: qfg4-gamefaqs-anonymous.txt:1001-1010

Requirement 8: Convince Tanya to leave (optional honor path)    
Location: Gypsy camp, Magda fortune teller
Action: Speak about sacrifice and what must be given up to go home
Information Gain: Tanya's trust is won; she agrees to return home without forced extraction
Honor Reward: Releasing child spirit peacefully

WHY IT'S MULTI-FACETED PLAN:
- Information gathered from 4+ separate NPCs/dialogue chains (Dr. Cranium, Domovoi, Innkeeper, Magda)
- Physical items (Grue Goo, doll, rehydration solution) must be synthesized into coherent action plan
- Requirements discovered through environmental observation (listening at door) AND directed quest-giving
- Non-linear progression: player can visit any location in mostly flexible order once aware of components
- Solution emerges from synthesis: "I need to find Tanya's guardian → reactivate him → get her doll → convince BOTH to let her leave"
    
Information Flow (Non-Linear):
1. Overhear Domovoi conversation (night) → learn problem exists
2. Talk to Dr. Cranium multiple times → learn Rehydration Solution recipe  
3. Collect Grue Goo from wild → trade for solution
4. Reactivate Domovoi at monastery  
5. Retrieve doll from abandoned room
6. Deliver to Tanya, then seek advice from Magda
7. Liberate with or without force

No single NPC explains complete solution path; player must synthesize requirements from:
- Eavesdropping (Inn room at night)
- Doctor dialogues over several days  
- Exploration discovery (monastery basement cabinet)
- Gypsy wisdom dialogue
```

<small>Cited from:qfg4-gamefaqs-anonymous.txt:985-1010, qfg4-gamefaacs-sac.txt:2530-2546</small>  
- No complex sub-puzzle needed, just discovery through search
Independent of other three offerings

OFFERING 4: Mini Vortex Sno Globe
Location Source: Gator Golf "Dunk the Beast" tank initially; modified at Mystery Vortex
Acquisition Method:  
- Retrieve sno globe from Dunk the Beast after freeing Max (alligator bridge puzzle)
- Later modify by combining wine cork with globe at Mystery Vortex mini-vortex
- Creates "vortex-in-globe" required version versus original plain globe

INCREMENTAL DISCOVERY STRUCTURE:

1. First meeting Sasquatch Chief → vague hints about "offerings for Bruno"
2. Examination of totem poles → visual clues, not explicit instructions  
3. Trial and error or dialogue exploration reveals each specific requirement
4. Player builds mental checklist from scattered information sources

SYNTHESIS MOMENT:
After all four items collected, player returns to pool and presents them in sequence:
- No specific order required (parallel completion)
- Each offering accepted independently
- Fourth offering triggers ending cutscene


Why It's Multi-Faceted Plan (Not Meta-Construction):

PARALLEL GATHERING CONFIRMED:
- Dinosaur tooth has zero connection to John Muir gourd acquisition
- Pillow can be collected any time at Bumpusville, regardless of other items
- Sno globe path independent until final modification phase
- Locations visited separately with no interdependency between them

INFORMATION INCREMENT:
Chief's dialogue and environmental clues revealed requirements gradually. No single source provided complete list. Player synthesized "four offerings" concept from multiple conversations and totem examination.

FAILURE AS FEEDBACK:
Attempting ceremony with incomplete set reveals what's still missing, without explicit checklist. Each failed attempt or partial success informs player about requirement gaps.
```

---

### Sam & Max Hit the Road: Modified Golf Retriever Construction (SMHTR)

**Problem**: The broken golf ball retriever needs to be modified into a specialized tool capable of extracting Shuv-Oohl's mood ring from inside the World's Largest Ball of Twine. Multiple components must be gathered and combined, with each piece serving specific extraction function.

<small>Source: adventuregamers_walkthrough.html — "In the inventory, use the severed hand with the broken golf ball retriever. In the inventory, use the fish magnet with the broken golf ball retriever. Put the fish magnet with the broken golf ball retriever into the ball of twine."</small>

```
THREE-INDEPENDENT COMPONENTS:

COMPONENT 1: Broken Golf Ball Retriever (Base Tool)
Source: Gator Golf Pro Shop entrance trashcan
Function: Provides extendable reaching mechanism

COMPONENT 2: Severed Hand  
Source: Carnival Hall of Oddities (Jesse James severed hand in jar)
Modification: Give jar to Snuckey's attendant → releases hand from preservation fluid
Function: Grasping mechanism for ring capture

COMPONENT 3: Fish Magnet
Source: Carnival Lost & Found tent (after Cone of Tragedy ride incident)  
Function: Attracts/locates metallic objects within twine ball

ALL THREE REQUIRED - INDEPENDENT ACQUISITIONS:
- Retriever found at Location A, time period X
- Hand obtained through separate puzzle chain at Location B
- Magnet requires completing entirely different carnival sub-puzzle at Location C
- No sequential dependency between acquisitions


COMBINATION AND APPLICATION:
Once all three gathered (any order), combine in inventory:
1. Use Hand ON Retriever → creates grabber tool
2. Use Fish Magnet ON combined retriever-hand → adds homing capability
3. Approach twine ball, insert modified retriever
4. Magnet guides tool to ring location; hand grasps and extracts

Why It's Multi-Faceted Plan: Three separate fetch tasks converge on single application point. The "aha" moment comes from recognizing all three independent items are needed simultaneously.
```

---

### Quest for Glory III: Dispel Potion Ingredients (QFG3)

**Problem**: To progress in QFG3, the player needs Dispel Potions to transform a captured Leopardman prisoner back into human form (revealing Johari, the Leopard Lady). The Apothecary Salim can make these potions but requires three rare ingredients the player must gather. Additionally, there's a separate sub-goal: creating Healing Pills using different ingredient set.

<small>Source: qfg3-gamefaqs-cyricz.txt, lines 2114-2117 — "Give Salim the Honeybird Feather (3), the Fruit of the Venomous Vine (3), some Water from the Pool of Peace (3), and the Gift from the Heart of the World (3). Come back the next day, and buy his Dispel Potions."</small>

```
DISPOT POTION INGREDIENTS (Parallel Gathering):

INGREDIENT 1: Honeybird Feather
Location: Savanna area (east screen 1 or west screen 2)
Acquisition Chain:
  - Wander until encountering Honeybird
  - Follow bird to tree with killer bees guarding it
  - Place honey on ground, leave area
  - Return → bird will be eating honey, distracted from bees
  - Approach and grab feather bird drops independently of other ingredients

INGREDIENT 2: Venomous Vine Fruit  
Location: Mound with poison vines (between Tarna and Pool of Peace)
Acquisition Method varies by class:
  Fighter/Thief: Throw rock or cut vines to rescue trapped meerbat
              → Leave and return; bat gifts opal AND fruit
  Wizard: Cast Fetch on vine from distance, pulls fruit directly
Independent of other two ingredients—any class method works

INGREDIENT 3: Water from Pool of Peace
Location: Pool of Peace (marked as "POR" only water source on map)
Acquisition Method: Fill waterskin(s) at pool
Simple collection, no prerequisites beyond having waterskins purchased
Can be done before or after gathering other ingredients

---

GIFT FROM HEART OF THE WORLD SEQUENCE (Meta-Construction WITHIN MFP):

This is a SUB-CHAIN within the larger MFP puzzle. The "Gift" itself requires:

STEP 1A: Guardian Cave visit (Heart of the World tree)
Action: Speak to floating Guardian spirit
Discovery: Learn Gift requires Water from Pool of Peace poured at Heart's top platform
Also gives gems upon request—player gets both information AND item in this encounter

STEP 1B: Return to Pool of Peace if not already filled
Action: Fill additional waterskin with sacred water
Note: This is same "water" ingredient for Salim, but MUST be taken to tree first

STEP 1C: Ascend Heart of the World to top platform
Action: Pour Water from Pool of Peace onto branch stand
Output: Miraculous fruit appears on branch ("Gift from the Heart")

STEP 1D: Collect the Gift Fruit
Action: Grab the newly-appeared fruit
Result: Now have both "Gift" AND can give separate waterskin to Salim as ingredient


WHY THIS COMBINES MFP AND META-CONSTRUCTION:

PARALLEL LAYER (MFP):
Three ingredients for Salim: Honey feather, Vine fruit, Pool water
  - All three gathered independently across different locations
  - Any order possible: could fetch honey first OR vines first OR pool water first
  - No ingredient's gathering enables another's collection
  
SEQUENTIAL LAYER (Meta-Construction):
The "Gift from Heart of the World" is NOT a Salim ingredient—it's SEPARATE
  BUT this Gift-retrieval has its own chain:
  Cave conversation → learn water needed → get water → ascend tree → pour water → receive gift

SALIM RECIPE FULFILLMENT (Final Synthesis):
Player gives to Apothecary in any order across multiple conversations:
1. Honeybird Feather (from savanna)  
2. Venomous Vine Fruit (from mound)
3. Water from Pool of Peace (from pool)
4. Gift from Heart of the World (from tree chain)

Once all given → Salim creates Dispel Potion and Healing Pill next day
```

---

### Quest for Glory III: Leopard Lady's Gifts (QFG3 - Bride Price Puzzle)

**Setup**: After revealing Johari the Leopardman prisoner is actually a Leopard Lady using a Dispel Potion, she must receive three specific gifts before opening her cage. These gifts enable her escape and eventual reconciliation with the Simbani tribe. Unlike the Dispel Potion ingredients (gathered for Apothecary), these are given directly to Johari over multiple days of courtship.

<small>Source: qfg3-gamefaqs-cyricz.txt, lines 2186-2194 — "Speak to Uhura, and ask her about Wife (2). She'll explain three gifts that you'll want to give her. Give the Leopard Lady the Beads (3), the Wooden Leopard (3), and the Fine Dagger (3)... Once you've given her all three, open her cage and she'll run off."</small>

```
THREE GIFTS INDEPENDENTLY ACQUIRED:

GIFT 1: Beads
Acquisition: Purchase from Bazaar Bead Merchant in Tarna's market
Cost: Small fee (game doesn't specify exactly)
Independent gathering—can buy anytime after arriving in Tarna
No prerequisites other than having exchanged currency with Money Changer

GIFT 2: Wooden Leopard Carving  
Acquisition: Free from Katta merchant (Shallah) at Bazaar
Prerequisite: Give him Note from Shema (carried over from QFG2 or obtained early game)
Dialogue: Tell about Shapeir → give note → receive carving gratis
Independent of other two gifts—purely dialogue and item-exchange based

GIFT 3: Fine Dagger
Acquisition: Purchase from Weapon Merchant at Bazaar  
Cost: Standard weapon price
Can be bought same trip as beads or days later—no timing constraint
Independent of courtship progress; can acquire all three before meeting Uhura

---

COURTSHIP SEQUENCE (After Marriage, Before Cage):

Once married to Johari through Laibon's bride-price ceremony (Fine Robe + Fine Spear + 5 Zebra Skins), player must:

1. Talk to Uhura about "Wife" → learn three gifts needed
2. Return to Johari's cage, give each of the three items individually
   - Beads given first or any order; all three required before next step
3. Open cage door after all three gifts delivered
4. Johari escapes into wilderness

OUTCOME: Leads to Wilderness Meeting puzzle (finding Johari in jungle)

WHY IT'S MULTI-FACETED PLAN (Not Meta-Construction):

PARALLEL ACQUISITION CONFIRMED:
Player could gather all three gifts BEFORE even revealing the Leopardman prisoner, or after marrying Johari. The walkthrough shows Beads and Dagger can be bought during initial Bazaar shopping run:

"Buy some beads (2) from the Bead Merchant... From the Weapon Merchant, buy a Fine Dagger (2)"

All items available at same time, no sequential dependency. The "aha moment" is learning WHICH three specific items Johari needs through Uhura's dialogue—not discovering they must be collected in sequence.

INFORMATION GATHERED INCREMENTALLY:
Before talking to Uhura about Wife: Player has no idea gifts are needed
After conversation: Learns three distinct gift types required
No explicit checklist given; player recalls or tracks mentally which Bazaar items to acquire
 
DISTINCTION FROM DISPOT POTION PUZZLE:
Dispersion Potion: Ingredients used by NPC (Apothecary) to CREATE new item
Leopard Gifts: Items given directly as gifts; no transformation needed

Both are MFP because both gather independently in any order. Both are NOT Meta-Construction because neither ingredient/gift enables collection of another.
```

---

### Indiana Jones: Fate of Atlantis - Theater Entry (IJOA)

**Problem**: Player must enter the theater where Sophia is giving her lecture, but direct entry is blocked—the gates are locked and tickets are sold out.

<small>Source: gamefaqs_darth_maul_walkthrough.html — "You can also go around back...the gate will be locked so you'll have to find another way in."</small>

**Three Independent Solutions** (any one grants access):

```
SOLUTION A - Persuasion Path:
1. Open back door → Biff (security guard) appears
2. Talk to Biff, choose dialogue praising Sophia repeatedly
3. Biff's attitude softens, allows entry

SOLUTION B - Force Path:  
1. Open back door → Biff confronts player
2. Insult Biff → fight initiated
3. Win fight → Biff incapacitated, path cleared

SOLUTION C - Environmental Path:
1. Push crates at back of building (different location)
2. Access fire escape via opened passage
3. Enter theater through alternate entrance
```

<small>Source: walkthroughking_ashley_walkthrough.html — "There are three possibilities (do all three in turn if you want maximum IQ points): Open the door and fight your way in (insult Biff). Open the door and talk your way in (be kind!). Push the crates out of the way and go to the fire escape."</small>

**Why It's Multi-Faceted Plan**: Three completely independent approaches exist. Player must discover all three by exploration and trial. No single requirement chain—each path is self-contained. The solution set (all valid entry methods) is assembled through world discovery rather than sequential dependency.

**Distinction from Meta-Puzzle Construction**: Each entry method operates independently—solving one doesn't require or enable the others. Player can choose ANY valid approach and proceed, unlike sequential chains where step N feeds into step N+1.

### SpaceQuest II: Vohaul's Fortress Fire Trap Components (SQ2)

**Problem**: Inside Vohaul's asteroid fortress, killer robots patrol corridors with lethal efficiency. To neutralize them and progress toward Vohaul's control room, Roger must construct a fire trap that activates the sprinkler system. This requires gathering multiple independent components from separate floor/closet locations before combining into a working device.

<small>Source: gamefaqs-tricrokra-archive.html, lines 562-598 — "GET BASKET... GET OVERALLS (you'll toss them away and something falls out of it)... GET LIGHTER... Open the 2nd cubicle from the right (OPEN DOOR)... GET PAPER... Enter the closet... GET CUTTER... Enter the closet... GET PLUNGER..."</small>

**Four Independent Component Gathering Tasks**:

```
REQUIREMENT 1: Waste Basket & Lighter (5th Floor, Janitorial Closet)
Location Source: Elevator → press "FIVE" → janitor closet on east corridor
Acquisition Method:
- Enter closet after pressing door button
- GET BASKET (waste basket container)
- GET OVERALLS (tossing aside reveals lighter underneath)
- GET LIGHTER (dropped from overall's pocket)
Independent of all other components—can be gathered first or last

REQUIREMENT 2: Toilet Paper (4th Floor, Restroom)
Location Source: Elevator → press "FOUR" → restroom on east side
Acquisition Method:
- Navigate past cleaning robot patrol timing (must hide in closet)
- Press button to open restroom door
- OPEN DOOR on 2nd cubicle from right
- GET PAPER (toilet paper roll)
Independent of other components—requires only floor-specific navigation

REQUIREMENT 3: Cutter Tool (4th Floor, Supply Closet)
Location Source: Same 4th floor → different closet east of restroom
Acquisition Method:
- Press button to open door after leaving restroom
- Enter closet, GET CUTTER (utility knife/tool)
- Exit west back to elevator
Independent of other components—separate room but same floor

REQUIREMENT 4: Plunger (3rd Floor, Another Closet)
Location Source: Elevator → press "THREE" → closet on east corridor
Acquisition Method:
- Exit east x3 from elevator position
- Press button to open door
- GET PLUNGER (bathroom plunger tool)
Independent of other components—different floor entirely


INCREMENTAL DISCOVERY STRUCTURE:

1. Initial fortress exploration → reveals item-rich closets on different floors
2. Elevator navigation allows any floor order (player chooses sequence)
3. Each closet contains items with unclear immediate purpose
4. Fire trap concept only becomes clear when acid trap situation presents itself

SYNTHESIS MOMENT:
All four items carried in inventory. At acid barrier trap location (Bay → East):
1. Player realizes combination is needed for fire activation
2. PUT PAPER IN BASKET (combustible fuel)
3. PUT BASKET ON FLOOR (positioning)
4. LIGHT BASKET with LIGHTER (ignition source)

Why It's Multi-Faceted Plan (Not Meta-Construction):

PARALLEL GATHERING CONFIRMED:
- Basket/lighter path has zero connection to toilet paper acquisition
- Plunger can be collected any time on 3rd floor, regardless of other items
- Cutter serves separate purpose (escaping glass later), not fire trap requirement
- Locations visited separately with no interdependency between them
- Player can complete floors in any order: 3→4→5 or 5→4→3 or any permutation

INFORMATION INCREMENTALISM:
Walkthrough doesn't explicitly state "you need these four items together." Items discovered through exploration; their combined purpose becomes apparent when player faces acid barrier. No checklist provided—player must infer from context ("fire starts sprinklers" is game logic).

FAILURE AS FEEDBACK:
Attempting trap with incomplete set fails (paper alone won't light, basket without paper produces no fire). Each partial attempt reveals missing component.
```

---

### Indiana Jones: Fate of Atlantis - Lost Dialogue Retrieval (IJOA)

**Problem**: After obtaining initial clues from Iceland and Tikal, Indy must retrieve Plato's Lost Dialogue from Barnett College library, but the book is hidden in one of three inaccessible locations. The game provides three separate discovery methods for locating it.

<small>Source: walkthroughking_ashley_walkthrough.html — "There are now three possibilities for finding the book - again perform all three sets of actions for maximum IQ points."</small>

**Three Independent Retrieval Methods**:

```
METHOD 1 - Chute/Wax Cat:
1. Find gum under desk (library upstairs)
2. Apply gum to coal chute → becomes sticky/usable
3. Melt wax cat statue in furnace using chute mechanism
4. Wax cat removal reveals book compartment

METHOD 2 - Arrowhead/Bookcase:
1. Collect arrowhead from library stacks
2. Get coal from furnace room, dirty rag from basement
3. Wrap arrowhead with rag (creates screwdriver)
4. Use wrapped arrowhead on screws in fallen bookcase
5. Open previously-inaccessible panel → book revealed

METHOD 3 - Key/Chest:
1. Pull totem pole across floor twice using mayonnaise (slippery surface)
2. Access hidden urn atop shelf → obtain key
3. Push large crate in totem room to reveal chest
4. Use key on chest → book obtained
```

<small>Source: walkthroughking_ashley_walkthrough.html — "Use the gum on the coal chute, and melt a wax cat in the furnace. Use the wrapped arrowhead on the screws in the fallen bookcase and open it. Push the large crate (totem pole room) and open the chest with the key."</small>

**Why It's Multi-Faceted Plan**: Three parallel sub-puzzles converge on identical goal (Lost Dialogue acquisition). Player must discover that multiple solutions exist, gather disparate items from library basement/furnace/stacks across unrelated contexts. No single source hints at all three methods—all discovery through exploration and experimentation.

**Relation to Meta-Puzzle Construction**: The totem pole/key/chest chain (Method 3) IS a mini-meta-construction puzzle within the larger MFP framework—items sequence strictly. But the OVERALL Lost Dialogue puzzle is MFP because ANY of three independently-gathered methods suffices.

---

### SpaceQuest IV: Galaxy Galleria Mall Heist Sequence (SQ4)

**Problem**: Roger arrives at the Galaxy Galleria shopping mall trapped between Sequel Police guards. To continue the game, he needs to: steal money from Zondra's ATM account, buy a specific PocketPal connector, obtain code information from the hint book, and escape with enough resources to progress—all while evading the police who will kill him if spotted.

<small>Source: gamefaqs-tricrokra-archive.html, lines 463-466 — "DON'T TRY TO LEAVE THE MALL. One of Vohaul's soldiers will pop up and kill you if you try."</small>

<small>Source: adventuredoor-walkthrough.html, lines 457-458 — The mall requires completing the disguise/money sequence before accessing subsequent items.</small>

```
FIVE INDEPENDENT REQUIREMENTS (gathered in flexible order):

REQUIREMENT 1: Clothing Upgrade (Buckazoids prerequisite)
Location: BIG & Tall clothing store on upper walkway
Action: Talk to automated robot clerk → purchase new trousers and boots
Cost: Initial 59 buckazoids (starting money)
Result: Appearance changed; can enter software store
Dependency: None except having starting money

REQUIREMENT 2: Cigar Acquisition (Job minigame prerequisite) 
Location: Monolith Burger restaurant
Action: Speak to manager twice → accept job → get fired → collect cigar thrown on conveyor
Constraint: Must happen AFTER getting new clothes (burger joint accessible after clothing upgrade)
Alternative: Can skip burger minigame but still earns 68 buckazoids and gets fired
Result: Cigar in inventory (critical for laser puzzle later)
WARNING: Walkthrough emphasizes this is ONE-TIME collection; beyond mall sequence, cannot retrieve

REQUIREMENT 3: Disguise + ATM Heist
Location: Sacks Dress Shoppe (women's clothing store) → ATM machine by Software Store
Phase A - Acquisition:
- Buy women's clothing from robot clerk (costs buckazoids earned from burger job)
- Now disguised as "woman," can access ATM
Phase B - Heist Execution:
- Use Zondra's dropped ATM card on machine
- Select "Clean House" option → steal 2001 buckazoids from her account
Result: Wealthy enough to purchase any mall item + disguise removed when changing back


REQUIREMENT 4: Hint Book Acquisition  
Location: Software Store bargain bin (requires new clothes to enter; previously blocked by crowd)
Action: Search through discarded game parodies → find Space Quest IV hint book → purchase
Critical Information Obtained:
- Page 4: Three-symbol code for Ulence Flats destination (complements gum wrapper's three symbols)
- Page 7: Supercomputer access code "6965847669" needed for final sequence
Dependency: Requires clothing upgrade to enter store previously

REQUIREMENT 5: PocketPal Connector Purchase (Critical Path Item)
Location: Hz. So Good (also called Radio Shock in some versions) electronics store  
Action: Browse Catalog → Electronic Gadgets → navigate to "PocketPal Connectors"
Selection Criticality: Must choose SPECIFIC plug type matching the socket seen at Vohaul's base later
Visual Match Required: Top plug in right column (HTML version has picture reference)
Result: Connector in inventory; ALSO triggers Sequel Police time pod arrival at arcade




ESCALATION CHAIN (police avoidance - non-MFP but tied to sequence):
Location: Arcade hall → Skate-O-Rama → roof → escape back to arcade
Steps:
1. After buying connector, police arrive with time pod in arcade
2. Lure police into following player through adjacent passages to Skate-O-Rama  
3. Enter anti-gravity field, "swim" to roof level
4. Escape by swimming out opposite side before police aim correctly
5. Exit quickly from left, return to now-guards-free arcade hall
6. Time pod now accessible for use


SYNTHESIS MOMENT:

Player has acquired through separate mall sub-puzzles:
- ✓ New clothes (enabled software store access)  
- ✓ Cigar + Matches (laser puzzle materials)
- ✓ 2001 buckazoids (economic freedom)
- ✓ Hint Book (navigation codes: Ulence Flats, supercomputer)
- ✓ PocketPal Connector + Battery + PocketPal (tech for final sequence)
- ✓ Sequel Police lured away from time pod

All five requirements collected. The mall was a "prison sequence"—cannot leave until complete—and all preparation needed happens here before escaping via time pod to SpaceQuest I.


WHY IT'S MULTI-FACETED PLAN:

1. PARALLEL REQUIREMENTS: Each of the 5 items has independent acquisition path
   - Clothing store visit doesn't affect where cigar is
   - Burger job doesn't change hint book location
   - ATM heist doesn't block connector purchase
   ALL CAN BE COMPLETED IN DIFFERENT ORDERS (within some soft dependencies)

2. NO CHECKLIST PROVIDED: Walkthrough notes "Don't try to leave the mall" but never says "need exactly these 5 items." Player discovers through failed assumptions ("Why can't I enter software store? Oh, need clothes") or future lockout moments ("Where was I supposed to get the cigar???")

3. FAILURE AS FEEDBACK:
   - Try using ATM card without disguise → rejected by machine (learn: need female appearance)
   - Leave mall prematurely → killed by Sequel Police (learn: must complete first)  
   - Try time pod without codes → wrong destination, potentially dead end
   
4. SYNTHESIS IS MENTAL MODEL BUILDING: The puzzle satisfaction comes from realizing "I've been in a preparation phase where I need to gather everything before escaping"


DISTINCTION FROM META-CONSTRUCTION:
The mall DOES have soft ordering requirements (clothes→burger→disguise→ATM) but these are LOGICAL dependencies, not SEQUENTIAL CHAINS. Clothing upgrade enables store access, doesn't PRODUCE the disguise as output feeding into next step. The player could theoretically do: clothes → hint book → connector → burger → ATM, or other variations—all valid sequences reaching same end state.
```

---

## Related Types

- **Pattern Learning/Knowledge Transfer**: Both involve multi-step processes, but KT is about *same system in different domain* whereas MFP is about *different requirements for single goal*
- **Meta-puzzle Construction (below)**: Distinct from pure Multi-Faceted Plan by requiring sequential interdependence rather than parallel requirement gathering

## Meta-puzzle Construction Variation

A subtype of Multi-Faceted Plan where component puzzles must be COMPLETED in sequence, each enabling the next. Unlike standard MFP's parallel track gathering:

| Standard MFP | Meta-puzzle Construction |
|--------------|-------------------------|
| Four ingredients can be found in any order | Each step unlocks next puzzle state |
| Synthesis = all requirements assembled | Synthesis = correct sequence discovered |
| Example: Voodoo doll (all 4 gathered independently) | Example: Dinky Island water filtration, QFG3 Lost City chamber |

**Dinky Island Water Filtration (MI2)**:
1. Find bottle → break on rock to get crowbar
2. Open barrel with crowbar → obtain cracker
3. Feed cracker to parrot → receive still activation clue
4. Use broken bottle as still intake → produce distilled water
5. Use water + box of cracker mix → more crackers for remaining directions

Each component *depends* on previous step's output; parallel gathering impossible.

### Quest for Glory II: Elemental Capturing (QFG2)

**Problem**: Four elementals (Fire, Air, Water, Earth) are released upon Shapeir across Days 5-13, each requiring specific containment items and defeat methods. The player must gather information from multiple NPCs about elemental weaknesses, acquire class-specific tools, and execute capture sequences—each elemental represents an independent MFP sub-puzzle with its own requirement set.

<small>Source: qfg2-fandom-wiki.md, lines 68-95 — Class-specific solutions for Fire (incense/lamp/water), Air (dirt/bellows/levitate), Earth (powder/Soulforge/flame darts)</small>

<small>Source: qfg2-gamefaqs-cyricz.txt, lines 1803-1812 — Dispel potion requires Griffin Feather + Fruit of Compassion; Bellows required for Air Elemental</small>


```
ELEMENTAL 1: FIRE ELEMENTAL (Day 5-6)

Setup: Shameen warns about "a strange presence" at Inn. Fire elemental appears outside, chasing player away from safe zones.

Information Gathering (Multiple Sources Required):
- Omar the Poet mentions "incense attracts fire" during his verse recitations (lines 1201-1203)
- Harik Attar at Apothecary explains "fire fears water" when discussing elemental weaknesses (line 990-998)
- Keapon Laffin at Magic Shop hints that brass items have containment properties (purchases lamp required)

Requirement Synthesis:
1. Purchase/obtain Incense (Apothecary, 70 centimes or free with high honor)
2. Purchase Brass Lamp (Tashtari, Fountain Plaza, 15-10 dinars)
3. Carry empty Waterskin(s) filled at fountain
4. Timing: Wait for elemental appearance outside Inn (Day 5 evening)

Execution Sequence (ANY ORDER ACCEPTABLE):
- Use Incense while walking north → attracts elemental pursuit
- Once chasing, USE LAMP to create containment field
- Apply WATER repeatedly → weakens elemental
- Elemental is absorbed into lamp automatically

WHY IT'S MULTI-FACETED PLAN:
Four independent requirements gathered from NPC conversations and shop locations. No explicit checklist—the player synthesizes "incense + lamp + water" from scattered hints across multiple days and NPC interactions. Class solutions (Thief/Fighter/MU) all achieve same result via different access methods.

---

ELEMENTAL 2: AIR ELEMENTAL (Day 8-9)

Setup: Omar's poetry mentions "something invisible you can't touch." Air elemental appears in Palace Plaza, a swirling wind vortex.

Requirement Discovery:
- Aziza discusses "earth beats air" in elemental hierarchy (lines 1256-1263)
- Kiram sells Cloth Bag needed to collect dirt/sand
- Issur has Bellows above Weapons shop—obtained class-specifically:
  - Fighter: Arm wrestle victory (requires strength/weapon use stat check)
  - Thief: Nighttime climb + picklock access (stealth/timing required)
  - Magic User: CAST FETCH on bellows from street below

Independent Requirement Gathering:
1. Cloth Bag OR cloth bag equivalent (Kiram's stand, Fighters Plaza)
   - Use command to fill with sand/earth at fountain plaza
2. Bellows (above Issur's Weapons shop—class path determines acquisition)
3. Dirt/Sand filled bag (Fountain Plaza = earth collection point)

Execution:
- Approach Air Elemental in Palace Plaza
- Class-specific entry method:
  - Thief: Throw dirt into elemental from distance
  - Fighter: Walk INTO vortex, get sucked up, drop earth while inside
  - Magic User: Cast Levitate, float above, drop earth into center
- USE BELLOWS after elemental weakened → captured in bag

WHY IT'S MFP (Not Meta-Puzzle): Bellows, bag, and dirt are gathered independently. The execution combines all three, but no single item's acquisition enables another. Cloth bag could be bought Day 1; bellows could be stolen Day 7 at night; sand filled anytime after bag acquired.

---

ELEMENTAL 3: EARTH ELEMENTAL (Day 12)

Setup: Elemental manifests in northeastern streets as a rock-like golem, blocking passages and attacking on sight.

Class-Specific Requirement Synthesis:

THIEF PATH:
- Harik Attar provides "Powder of Burning" when queried about earth elemental
- Powder purchase/access is Thief-only (honor/relationship check)
- Execution: Throw powder at elemental from distance → weakened → collect earth essence into cloth bag

FIGHTER PATH:
- Uhura at Guild Hall lends sacred sword Soulforge for elemental combat
- Combat sequence against Earth Elemental in northeastern streets
- After defeat, retrieve captured earth
- Return Soulforge to Guild Hall (honor requirement)

MAGIC USER PATH:
- No special items needed—pure spell casting approach
- Cast multiple Flame Darts at elemental → weakened by opposite element
- Collect resulting earth essence into bag

Common Requirement: Cloth Bag or equivalent container for captured earth essence

WHY IT'S MFP: Each class gathers DIFFERENT independent requirements, all achieving same outcome through class mechanics. The puzzle adapts to player capabilities without changing fundamental structure—information discovery + item acquisition → defeat method tailored to class strengths.

---

TREE OF JULANAR COMPLEX (Day 10-12)

Problem: A tree shaped like a woman in the desert grants Fruit of Compassion, required for dispel potion ingredients. She needs three gifts given in sequence during single interaction.

Information Discovery:
- Aziza tells story of "Julanar the Healer" when asked about tree (line 1098-1105)
- Player must learn tree's name and three required gift types from her account
- No gameplay hint beyond "she requires offerings"—player must infer what constitutes "kindness," "love," "earth"

Independent Requirement Gathering:
1. Waterskin filled with water (Fountain Plaza fill point, carried to desert)
2. Bag containing Earth Elemental essence (requires completing Earth Elemental puzzle first)
3. Character action capability: Physical interaction commands available (hug, tell about)

Sequential Execution at Tree Location (Seven East from Overlook):
1. GIVE WATER to tree (Gift of Kindness) → tree responds positively
2. TELL ABOUT YOURSELF to tree → reveals emotional connection
3. GIVE EARTH to tree (Gift of Magic) → elemental essence nourishes her
4. TELL ABOUT EARTH to tree → explains significance of gift
5. HUG TREE (physical interaction representing love)
6. Say "Julanar" (her name, learned from Aziza)
7. Receive Fruit of Compassion as reward

WHY IT'S MFP WITH META-CONSTRUCTION ELEMENTS:
Information gathering phase = MFP (Aziza's story provides name and gift requirements; player must remember these when visiting tree). Execution phase has sequential element (gifts must be given in order), BUT all material requirements gathered independently. Water could be filled Day 1; earth essence obtained only after Earth Elemental defeat (Day 12); knowledge retained since Day 10 conversation with Aziza.

Hybrid classification: MFP requirement gathering + minimal meta-construction execution. The "three gifts" structure parallels Meta-Puzzle Construction but the independent gathering and information-heavy setup keeps it primarily MFP.
```

### Quest for Glory II: Dispel Potion Components (QFG2)

**Problem**: Harik Attar needs two rare ingredients to craft a dispel potion required to free an enchanted creature from Iblis's spell. The player must gather these independent components through separate adventure paths.

<small>Source: qfg2-gamefaqs-cyricz.txt, lines 1673-1707 — Griffin Feather obtained by stealing from nest or fighting griffin; Fruit of Compassion from Tree Julanar quest</small>


```
INDEPENDENT COMPONENT GATHERING:

Component 1: Griffin Feather
Location: Griffin Nest (Four West and South from Overlook)
Access Methods (Class-specific):
- Thief: Throw magic rope near nest, climb up, steal feather while griffin sleeps
  - Requires Magic Rope purchase from Keapon Laffin (125 dinars)
  - Timing/pickpocketing mechanics involved
- Fighter: Move rock blocking nest entrance, directly take feather with combat threat
  - Strength check; may trigger combat but griffin usually flees
- Magic User: Cast Levitate spell, float up to nest platform, retrieve feather
  - Requires Levitate spell purchase (30 dinars) or carry from QFG1

Information Sources:
- Harik Attar explicitly mentions "need catalyst for change" in apothecary conversation
- Dervish at Oasis provides hints about griffin significance when discussed
- Rakeesh at Guild Hall discusses Griffin lore and nest location

Component 2: Fruit of Compassion
Location: Tree Julanar (Seven East from Overlook, desert area)
Prerequisite: Complete Tree Julanar Complex puzzle (see above)
Independent acquisition path:
- Requires completing ALL THREE gifts (water, self-disclosure, earth, hug, name revelation)
- Tree cannot be convinced without all elements present

Information Sources:
- Aziza's story provides only partial information; player must infer gift requirements
- No explicit hint about exact sequence—trial and error or poetic interpretation needed


SYNTHESIS PHASE:
Return to Apothecary with both components in inventory. Harik Attar combines:
1. Griffin Feather (catalyst)
2. Fruit of Compassion (emotional essence)
→ Creates Dispel Potion for later use on Caged Beast

WHY IT'S MULTI-FACETED PLAN:
- Two components gathered through COMPLETELY INDEPENDENT adventures
  - Griffin quest = stealth/combat/magic approach at griffin nest
  - Tree quest = dialogue/memory/test based puzzle with emotional requirements
- No interdependency between Feather and Fruit acquisition paths
- Harik only reveals complete need after BOTH items presented
- Information comes from multiple NPCs (Harik, Aziza, Dervish, Rakeesh) rather than single source


CLASS-SPECIFIC SOLUTION NOTE:
QFG2 consistently uses class-specific implementation within same puzzle framework. All three classes solve identical puzzles but via mechanically distinct approaches:
- Thieves utilize Stealth/Lockpicking/Climbing skills
- Fighters use Strength/Combat/Physical strength checks
- Magic Users apply Spell casting as access method

This creates adaptive MFP design where the requirement structure is identical (feather OR fruit) but acquisition path personalizes to player choices.
```

---

### Quest for Glory 1: Dispel Potion Recipe Components (QFG1)

**Problem**: The Dryad provides the recipe for a Dispel Potion needed to free Elsa from the Warlock's possession, but the Healer cannot craft it without five specific ingredients. Each ingredient is gathered independently from different forest locations with different access methods depending on character class.

<small>Source: qfg1-fandom-wiki.md, lines 125-130 — "Now make sure you have 2 empty flasks... Give her the flowers (if you haven't already), flying water, fairy dust, green fur and magic acorn."</small>

```
PARALLEL REQUIREMENT GATHERING:

Ingredient 1: Magic Acorn (Dryad Reward)
Location: After delivering Spirea seed to Dryad in forest
Access: Any class (received automatically after completing Spirea quest)
Independent of all other ingredients—pure dialogue reward, no item combination

Ingredient 2: Green Fur (Green Meep Donation)  
Location: Forest meep聚居 area
Access Method: Talk to Meeps about "magic" and then "fur," specifically "green fur"
Class-specific: Magic users can ask about magic first; other classes proceed directly
Independent of other ingredients—simple dialogue sequence, no prerequisites

Ingredient 3: Flying Water (Hermit Falls Collection)
Location: Flying Falls waterfall outside Henry the Hermit's cave
Access Method - varies by class:
  - Thief: Climb rocks to reach falls
  - Fighter: Throw rocks at door until ladder appears, climb up
  - Magic User: Cast Detect spell to reveal ladder, climb up
Requirement: Empty flask from Dry Goods Store in Spielburg (prepurchase)
Independent gathering—waterfall accessible regardless of other ingredient status

Ingredient 4: Fairy Dust (Mushroom Ring, Night Only)
Location: Mushroom ring with gravestone-like structures (west 4x, south 2x from Healer)
Access Method: 
  - Wait until nighttime
  - Observe fairies appearing near mushrooms
  - DANCE when prompted during fairy dance sequence
  - Request dust with empty flask in inventory
Independent of other ingredients—temporal requirement only (night cycle)

Ingredient 5: Flowers from Erana's Peace (Simple Collection)
Location: North from Healer's hut, 4x north, east, north = sacred grove
Access Method: Pickup action, completely unguarded
Independent of pathing or class

INCREMENTAL DISCOVERY STRUCTURE:

The Dryad provides recipe AFTER receiving Spirea seed return—this is the synthesis trigger. Before this point, player has no knowledge that these specific five items are needed for a single purpose. Player must:

1. Complete prerequisite (Spirea seed quest with White Stag)
2. Receive Dispel Potion recipe disclosure from Dryad
3. Recognize Healer as potion-crafting NPC (established earlier via ring reward)
4. Gather all 5 ingredients in any order across forest locations
5. Synthesize at Healer's hut—potion created and delivered

WHY CLASS DIFFERENTIATION DOESN'T CHANGE PUZZLE TYPE:

All three classes gather the SAME five ingredients. The HOW varies:
- Thief uses climbing/agility checks
- Fighter uses strength/throwing brute force  
- Magic User spells (Fetch, Open, Detect) provide magical access

But the PARALLEL REQUIREMENT structure remains identical—no class creates sequential dependencies between ingredients. A Magic User gathering flying water has zero impact on their ability to get fairy dust later.
```

<small>Source: qfg1-loudking-gamefaqs.md, lines 114-119 — "INGREDIENTS NEEDED: 1. Green Fur - Talk to Green Meep about magic/fur 2. Flying Water - Empty flask from dry goods, dip at waterfall outside Henry's cave 3. Faery Dust - Night only at mushroom ring... 4. Flowers from Erana's Peace"</small>

**Why It's Multi-Faceted Plan**: Five independent requirements gathered from geographically分散 sources with no interdependency between collection tasks. The synthesis happens at a single point (Healer's hut) after Dryad provides the recipe that makes all previously-collected items meaningful together. Player could gather in any order: acorn→fur→water→dust→flowers or any permutation.

**Distinction from Meta-Puzzle Construction**: The Spirea seed quest (Dryad prerequisite) is a separate puzzle chain. Once the recipe is known, gathering the five ingredients is parallel—not sequential like breaking bottle for crowbar. No ingredient's collection ENABLES another ingredient's collection; each stands alone.

---

### Grim Fandango: Year Two Ship-Boarding Requirements (GF)

**Problem**: To sail out of Santa Encarnación with Velasco's boat in Year Two, Manny must complete ALL four independent requirements before Naranja can be replaced and the ship can depart. Unlike a sequential chain, each requirement has zero mechanical interdependency—tools don't help fake Naranja's death; union card doesn't grant access to Glottis; any order of completion works.

<small>Source: the-spoiler_walkthrough.html, lines 421-422 — "I could tell Max about you and Olivia"... Nick will leave as Virago lawyer</small>

<small>Source: the-spoiler_walkthrough.html, line 589 — "Glottis won't leave the track, so you'll have to cut him off by getting the cafe shut down"</small>

```
FOUR INDEPENDENT REQUIREMENTS (gathered in any order):

REQUIREMENT 1: Union Card (Parallel Sub-Puzzle Chain A)
Location Sources: Calavera Cafe bar, Cat Track VIP lounge basement
Independent Acquisition Steps:
- Pickup gold flake liqueur from bar → Talk to Charlie in roulette room about counterfeiting
- Charlie produces VIP pass + betting ticket printer  
- Use VIP pass on Glottis at bar → He enters VIP Lounge
- Enter Cat Track litter room → Collect can opener
- VIP lounge kitchen → Wait for waiter, lock in pantry with scythe
- Glottis drinks wine cask dry (requires waiting; can delay by detaining waiter)
- Ladder to basement → Can opener on wine cask → Hide inside
- Exit cask, ride forklift through elevator door gap during "hidden floor" pass
- Collect suitcase containing union card from basement hall

Why Independent: This entire chain has ZERO effect on Naranja tools club shutdown paths. Union card simply proves Manny is eligible to work the boat. Can be completed first OR last without affecting other requirements.


REQUIREMENT 2: "Fake Death" for Naranja (Parallel Sub-Puzzle Chain B)
Location Sources: Blue Casket kitchen, Toto's shack refrigerator, Cat Track blimp security, Morgue
Independent Acquisition Steps:
- Blue Casket kitchen turkey baster → Use on dishwater to load fluid
- Toto's shack back entrance → Open refrigerator crisper drawer
- Wait for Naranja distraction moment (Toto interaction) → Baster on bottle knocks out Naranja
- Search unconscious Naranja → Obtain dog tags
- Cat Track roof blimp security: Gold flake liqueur → Walk through metal detector before burp occurs
- Speak to Carla alone behind desk about her "nice metal detector"
- Descend to litter box room → Scythe on letter box retrieves thrown-away metal detector
- Morgue: Attach dog tags to corpse → Give metal detector to Membrillo (morgue attendant)
- Membrillo scans body, finds tags → Reports Naranja officially dead

Why Independent: Dog tags/metal detector/morgue sequence has absolutely nothing to do with union card tools club shutdown. The "death certificate" just means replacement seaman can be hired. Can complete BEFORE getting union card OR AFTER tools.


REQUIREMENT 3: SeaBee Tools Acquisition (Parallel Sub-Puzzle Chain C)
Location Sources: Blue Casket beatnik table, Cat Track VIP lounge lockers, lighthouse, Calavera Cafe coat check, photo finish counter
Independent Acquisition Steps:  
- Blue Casket back table → Give Salvador's letter to beatniks, take book they leave behind
- Present book to SeaBee colony (bees don't trust Manny yet)
- Bees need lawyer for labor dispute (comedy element)
- Cat Track VIP lounge locker: Talk to Nick about legal representation
  - First conversation → Nick leaves cigarette case behind when called away
  - Second conversation needed later after photo evidence
- Blimp security desk: Present cigarette case to Carla, claim found under her desk
- Carla gives lighthouse key for "stolen" property
- Lighthouse entrance: Key opens door, retrieve note card left inside
- Calavera Cafe lobby: Give card to Lupe (coat check NPC) → Receive stored jacket
- Use jacket in inventory → Extract folded paper from lining
- Toto's shack: Show paper to Toto (reveals hidden message about cat races)
- CAT TRACK PHOTO FINISH PUZZLE (see Pattern Learning section below):
  - Print ticket: Week 2, Tuesday, Race 6 [derived from environmental clues]
  - Submit at Photo Finish window → Obtain incriminating photo of Nick kissing Olivia
- Return to VIP lounge, use photo on Nick → He returns as Virago lawyer for bees
- Use lawyer on SeaBees → They surrender tools in settlement

Why Independent: The bee lawyer sequence is completely separate from union bureaucracy or "death" faking. Tools are needed for boat boarding but can be acquired at ANY point during Year Two exploration.


REQUIREMENT 4: Club Shutdown / Cut Off Glottis (Parallel Sub-Puzzle Chain D)
Location Sources: Manny's office desk roulette system, magnet from earlier game
Independent Acquisition Steps:
- Office desk examination → Access roulette wheel control panel
- Wait for red light indicator on rightmost wheel
- Use magnet to alter ball trajectory → Changes winning number
- Casino owner Bogan detects rigging → Shuts down entire Calavera Cafe
- Glottis loses income source → Leaves Cat Track, available for hire

Why Independent: Club shutdown is purely about eliminating Glottis's alternative employment. Does not require union card (still gets it after cafe closes). Does not require Naranja death (can fake before or after). Tools are irrelevant to this social/economic pressure tactic.


FINAL SYNTHESIS CHECKLIST (implicit, never shown on-screen):
Once all four requirements complete:
✓ Union Card (proves Manny eligible as crew member)
✓ Naranja "Dead" (opens seaman position for Manny to fill)  
✓ SeaBee Tools (needed for boat maintenance during voyage)
✓ Glottis Freed (cafe shutdown cuts his income, he joins Manny's crew)

ALL REQUIREMENTS MET → Velasco lets ship sail to Land of the Dead


WHY IT'S MULTI-FACETED PLAN (Not Meta-Construction):

EXPLICIT PARALLEL GATHERING:
Walkthrough presents requirements sequentially for clarity, but gameplay allows ANY ORDER:
- Could union up, then fake death, then get tools, then shutdown club
- Could shutdown club FIRST (freeing Glottis immediately), then work on other three tasks while he waits  
- No requirement's completion ENABLES another requirement's start
- No "output from step N feeds into step N+1" pattern
- Each sub-puzzle chain stands mechanically independent

INFORMATION INCREMENTALISM:
Velasco's dialogue hints at requirements incrementally:
- Initial conversation → vague "need everything ready before sailing"
- Failed boarding attempt 1 → reveals union card needed (if missing)
- Failed attempt 2 → reveals Naranja replacement issue (if not "dead")
- Failed attempt 3 → reveals missing tools for boat maintenance  
- Successful completion of all sub-tasks still fails → reveals Glottis income issue

No single NPC states complete checklist: "You need card + fake death + tools + free-up-Glottis." Player synthesizes from scattered conversation fragments and failed attempts.

FAILURE AS FEEDBACK:
Each incomplete attempt reveals gap without explicit UI checklist. Game relies on player mental tracking of four independent progress trackers that must ALL reach completion state simultaneously.

NOIR THEME INTEGRATION:
The multi-faceted plan structure mirrors film noir bureaucracy—protagonist navigating multiple intersecting criminal underworld systems (union corruption, fake death certificates, evidence gathering, casino rigging) where each domain has its own rules and actors. This creates the genre-feel of "one man against four different power structures" rather than pure mechanical progression.
```

---

### King's Quest VIII: Mask of Eternity Piece Collection (KQVIII)

**Problem**: The game's primary goal is collecting four mask pieces scattered across four separate realms (Swamp, Underground Gnomes, Barren Region, Frozen Reaches). Each realm features its own extensive sub-game with independent puzzles. The four pieces can be collected in any order; their gathering forms the game's overarching Multi-Faceted Plan framework, with each realm containing its own internal puzzle chains.

<small>Source: gamefaqs_gkisom_kq8_recovered.txt - Multiple locations throughout for each mask piece acquisition</small>

```
FOUR INDEPENDENT MASK PIECES (gathered in any order across four realms):

MASK PIECE #1: Dimension of Death - Lord Azriel's Tower
Realm: Dimension of Death (requires completing mausoleum puzzle first)
Location Source: Central tower after navigating entry hall and fountain room

Acquisition Sub-chain:
a) Enter Dimension of Death via mausoleum portal (KQVIII lines 423-429)
b) Solve floating tile symbol puzzle to reach Azriel's altar (lines 479-489)
c) Navigate trap-filled corridors and skeleton enemies
d) Ascend central tower, defeat guardians
e) Obtain first mask piece from throne room chest

Independent of other three pieces - can be collected first or last


MASK PIECE #2: Swamp Region - Witch's Tower
Realm: Toxic Swamp (south central world map area)
Location Source: Top floor of Swamp Witch's Tower

Acquisition Sub-chain:
a) Navigate around toxic water using magic flower from Wisps (lines 809-814)
b) Kill Swamp Witch at tower entrance after building health/strength (lines 817-821)
c) Shoot hanging sandbags to open blocked door, enter tower
d) Climb three floors, avoid traps and henchman ambush
e) Open chest on third floor west ramp → Second mask piece obtained (lines 836-840)
f) Defeat spawned henchman, cut off henchman's hand for later puzzle

Independent of other pieces - internal swamp puzzles self-contained


MASK PIECE #3: Barren Region - Fire Dwarf Lair
Realm: Barren Region (northwest world map, after Stone of Order bridge)
Location Source: Middle ramp chest in Fire Dwarf underground lair

Acquisition Sub-chain:
a) Complete seven-gong bridge puzzle to obtain Stone of Order (lines 1073-1075)
b) Craft Black Diamond Pike at fortress village (lines 1077-1081)
c) Kill Basilisk, climb temple, open sarcophagus door (lines 1089-1103)
d) Use granite key to enter Fire Dwarf lair entrance (lines 1122-1123)
e) Shoot three buttons → extend three ramps (line 1125)
f) Cross first ramp, free Snow Queen Freesa (line 1127)
g) She opens secret door → kill dwarf inside, get second pipe cap
h) Exit, cross MIDDLE ramp → chest contains third mask piece (lines 1134-1135)

Independent of other pieces - only requires earlier Barren Region exploration


MASK PIECE #4: Frozen Reaches - Ice Stronghold Cell Block
Realm: Frozen Reaches (northern world map, accessed via Fire Dwarf elevator)
Location Source: Barred cell in Ice Stronghold after ice lever puzzle completion

Acquisition Sub-chain:
a) Reach Frozen Reaches via pipe elevator from Barren Region lair (lines 1138-1143)
b) Obtain crystal scepter from Snow Queen → use on Crystal Dragon for flight (lines 1147-1163)
c) Complete extensive Ice Stronghold exploration including jail break, Thork fight
d) Solve ice lever construction puzzle (detailed in meta-puzzle-construction.md)
e) Use ice lever to open barred cell door → Fourth mask piece in chest (lines 1237-1238)

Most complex sub-chain - requires multiple previous region tool acquisitions


FINAL SYNTHESIS: All Four Mask Pieces Combined
After collecting all four pieces from their respective realms:
- Player has complete "Mask of Eternity" assembled
- Enables final game progression toward ultimate confrontation
- No specific order required; any permutation of 1,2,3,4 completion works

WHY IT'S MULTI-FACETED PLAN:

EXPLICIT REQUIREMENT SET (unlike MM's incremental discovery):
Game begins with raven revealing player must collect "pieces of the ancient Mask" 
throughout their journey. Four distinct locations established early; exact number known.


FOUR PARALLEL COLLECTION TASKS:
Each mask piece exists in its own domain:
- Swamp Piece requires swamp navigation skills (poison immunity, wisp interaction)
- Underground Piece requires gnome teleporter mechanics + purchase power  
- Barren Piece requires bridge puzzle completion + combat gear acquisition
- Frozen Piece requires cross-realm tool transport + complex construction puzzle

NO INTERDEPENDENCY BETWEEN COLLECTIONS:
Collecting mask piece #2 (Swamp) has ZERO effect on ability to get piece #3 (Barren).
Player could collect in order 1→4→2→3 or 3→1→4→2—any permutation valid.


INTERNAL META-CONSTRUCTION SUB-CHAINS:
While OVERARCHING structure is MFP (gather 4 parallel requirements),
EACH realm contains its own Meta-Puzzle Construction chains:
- Swamp: Wisps → flower → poison immunity → witch tower access
- Barren: Gong bridge → Stone → fortress village → Pike → Basilisk → Tongue
- Frozen: Ice shard + Flame Sword + Ice Bow sequential transformation

This creates NESTED puzzle architecture:
Outer Layer = Multi-Faceted Plan (4 parallel goals)
Inner Layers = Meta-Construction chains (sequential steps per region)


DISTINCTION FROM PURE METE-CONSTRUCTION:
If mask pieces required sequential collection (e.g., piece #1 needed to ACCESS realm of piece #2),
puzzle would be Meta-Construction. Independence is key—pieces can be gathered in any order.

Game designers intentionally created this MFP framework to allow player choice in:
1. Which region explore first/last
2. Difficulty progression (Dimension easiest? Frozen hardest?)
3. Save-load strategy for preferred piece acquisition order


CROSS-REALM LOGISTICS LAYER:
Secondary complexity: Some realm solutions require items from OTHER realms:
- Ice Lever needs Flame Sword (from Frozen) AND Ice Bow (also Frozen but different area)
- Permanent Spell of Might requires ingredients from 3 DIFFERENT regions

This adds Cross-Realm Logistics dimension ON TOP of MFP framework, creating multi-layered puzzle architecture.
```

<small>Citations: gamefaqs_gkisom_kq8_recovered.txt - Piece #1 lines ~490-520 (tower area), Piece #2 lines 836-840, Piece #3 lines 1134-1136, Piece #4 lines 1237-1239</small>

---

### SpaceQuest 1: Escape Pod Launch Sequence (SQ1)

**Problem**: Early in the game on ship Arcada, Roger must escape aboard an escape pod before the ship explodes. The pod requires multiple independent items and actions gathered from different ship locations before a timed launch sequence can execute successfully.

<small>Source: gamer_walkthroughs_sq1_walkthrough.html, lines 549-563</small>

```
FOUR INDEPENDENT REQUIREMENTS (gathered in any order):

REQUIREMENT 1: Keycard (Dead Crewmate Search)
Location: Arcada left hallway (first screen left from broom closet)
Acquisition Method:
- Walk left until finding dead crewmate body on floor
- Type "search man" → keycard discovered on corpse
- TAKE KEYCARD into inventory
Independent of other requirements—can be grabbed immediately at game start

REQUIREMENT 2: Trans lator (Airlock Storage Closet)
Location: Docking bay airlock area, access via elevators down from main deck
Acquisition Method:
- Navigate through ship via elevator sequence: left → elevator down → right → elevator down
- This elevator requires the KEYCARD obtained in Requirement 1
- At airlock closet row: press left button to open closet door
- Inside: "take gadget" → translator device acquired
- Turn gadget on immediately (toggle state for later use)

REQUIREMENT 3: Flight Suit (Airlock Adjacent Closet)  
Location: Same airlock area, right-side closet (next to translator closet)
Acquisition Method:
- Press right button on adjacent closet door
- "take suite" → suit automatically equipped, sprite changes appearance
- Essential for survival in space vacuum
Independent of translator—both closets accessible same screen

REQUIREMENT 4: Escape Pod Activation (Vehicle Bay Controls)
Location: Vehicle bay area after airlock sequence
Acquisition Phase A - Docking Bay Door Unlock:
- At docking bay controls panel: "look panel" → identify open bay door button
- "press open bay door button" → outer bay doors open to space

Acquisition Phase B - Escape Pod Retrieval:  
- Move right to vehicle bay control area
- "push button" at vehicle console → escape pod lowers from ceiling into accessible position

INFORMATION DISCOVERY STRUCTURE:
Player learns requirements through sequential exploration, not explicit checklist:
1. Find dead crewmate → keycard available (obvious collection)
2. Attempt elevator down without card? Blocked state revealed
3. With card accessed airlock → translator/suit discovered (both critical items)
4. Move toward escape path → must open bay doors first or pod unusable
5. Enter vehicle bay → need to lower pod before boarding possible

The player synthesizes: "I need keycard + translator + suit + bay doors open + pod raised" without explicit instruction.


LAUNCH EXECUTION SEQUENCE (Timed, Sequential AFTER All Items Gathered):
Once in the escape pod cockpit with all requirements met:

Step 1 → "wear seatbelt" (safety requirement; skipping = death)
Step 2 → "close door" (seal hatch from ship interior)  
Step 3 → "push power button" (activate pod systems, screens light up)
Step 4 → "pull throttle" (engage engines, initiate launch sequence)

OPTIONAL EASTER EGG: Step X → "push don't touch button" (Kings Quest II parody animation; harmless fun)

FINAL ACTION: Step 5 → "push autonav" (engage auto-navigation, complete Arcada departure)


WHY IT'S MULTI-FACETED PLAN:

PARALLEL REQUIREMENT GATHERING:
- Keycard location (left hallway) is geographically separate from translator/suit locations (airlock closets)
- Flight suit and translator are INDEPENDENT items—nether requires the other to collect
- Docking bay door can be opened before or after grabbing closet items; no strict order enforced
  
INFORMATION SYNTHESIS REQUIRED:
Player must mentally assemble "escape requirements list" from scattered discovery points. No NPC says "you need these 4 things." Instead, player learns through blocked states (elevator locked → need card) and environmental storytelling (life support dead → need suit eventually).

FAILURE AS FEEDBACK LOOP:
- Attempt launch without suit = instant death (learn: suit required)  
- Forget seatbelt = crash animation (learn: safety sequence matters)
- Try to board pod before lowering it = no interaction option (learn: activate first)
- Each failure teaches missing component, building complete mental model

TIMED EXECUTION COMPONENT:
While gathering phase is MFP (parallel collection), the actual launch has ORDERED actions with real-time urgency. This creates hybrid structure: MFP preparation → Timed Consequence deployment sequence.


DISTINCTION FROM META-CONSTRUCTION:
The keycard ENABLES airlock access but doesn't PRODUCE another item as output—the translator and suit simply EXIST there, waiting. This is different from breaking bottle for crowbar where Step 1's output literally becomes Step 2's input tool. Here, items are gathered independently (except card-gated locations), then used together in final sequence.

---

### Broken Sword: Shadow of the Templars - Syrian Market Escape (Chapter 4)

**Problem**: George is trapped in Syrian market area and must gather multiple independent items to construct escape path. Each item obtained from disparate locations within maze, no interdependency between collections—only synthesis at end creates solution.

<small>Source: broken-sword-1/4_agh_peter_christiansen_walkthrough.html, lines 363-411</small>
<small>Source: broken-sword-1/1_walkthroughking_broken_sword.html, lines 153-165</small>

**Independent Component Acquisition**:
```
COMPONENT 1 - Toilet Brush (Market Stall):
→ Explore market alley section with vendor stalls
→ Examine bathroom/utility area near food vendors
→ Pick up toilet brush from floor (seemingly random item)
→ Independent of all other components—can collect first or last

COMPONENT 2 - Roller Towel (Restaurant Kitchen):
→ Enter adjacent restaurant building within market complex
→ Navigate to kitchen preparation area  
→ Acquire roller towel from counter/hanging rack
→ Zero connection to toilet brush acquisition path

COMPONENT 3 - Small Statuette (Merchant's Counter Display):
→ Examine trinket merchant's goods at specific stall
→ Take small statuette from display (either freely or through distraction)
→ Separate location from both components above

COMPONENT 4 - Money for Taxi Fare (Various Collection Methods):
→ Multiple independent sources within market district:
   - Begging NPCs in street corners
   - Finding coins on ground after searching areas
   - Selling previously-acquired items to vendors
→ Any sufficient amount enables taxi transaction later

COMPONENT 5 - Grappling Hook Components (Tool Acquisition):
→ Rope from specific wall/post location in market maze
→ Metal hook from construction site or shop area  
→ Combine in inventory to create functional grappling tool

FINAL SYNTHESIS CHAIN:
Once all five independent components gathered (any order):
1. Use grappling hook on elevated balcony/rooftop → climb vertical obstacle
2. Use items strategically at escape gate checkpoint  
3. Pay taxi driver with collected money → departure from market district
```

**Incremental Discovery Structure**: No explicit list provided. Player learns requirements through failed attempts:
- Try to leave market → blocked by physical barriers (learn: need grappling method)
- Attempt taxi → insufficient funds (learn: need currency collection)
- Items gathered seem unrelated until synthesis moment when full escape path becomes visible

**Why It's Multi-Faceted Plan**: ALL components acquired in PARALLEL with zero interdependency between them. Toilet brush has no connection to roller towel; money collection independent of statuette location gathering; grappling hook parts found without any reference to taxi requirement. The "aha" moment comes from recognizing these SCATTERED items collectively enable departure—a mental synthesis puzzle where complete solution emerges only when all pieces assembled. NOT Meta-Construction because no component's acquisition ENABLES another; they're parallel tracks converging at final application point.

---

### Broken Sword II: The Smoking Mirror - Marseilles Warehouse Escape (Chapter 2)

**Problem**: George and Nico must escape the warehouse rooftop via cable. Multiple independent items scattered across different areas of the warehouse complex must be gathered—some requiring separate mini-puzzles, others simple collection. No item depends on another for acquisition; synthesis happens at final escape sequence.

<small>Source: 2_the_spoiler_tom_hayes_walkthrough.html, lines 143-160 — "Push the button near the elevator... Push the crate by the elevator..."</small>

<small>Source: 4_kasagaming_walkthrough.html, lines 303-307 — "Once inside, search the desk to find a small key. Examine the noticeboard. Try to pass by the boxes..."</small>

```
PHASE 1 - INDEPENDENT ITEM ACQUISITION (any order):

ITEM 1: Small Key (Warehouse Office Desk)
→ Enter warehouse after disabling guard via clamp distraction
→ Access office area within warehouse
→ Open drawer to find small key
→ Zero dependency on other items


ITEM 2: Manacles (from Warehouse Guard NPC)
→ Talk to man hiding behind boxes  
→ Ask about the key → he runs off then returns
→ Give him the small key (acquired separately)
→ Receive manacles in exchange
→ This is a simple trade, not enabling further acquisitions

ITEM 3: Rope (from Nico's bindings)
→ Discover secret door via scratch marks on floor
→ Enter secret room where Nico is held captive
→ Free her → she gives rope (was tied with it)
→ Parallel to other item collections

ITEM 4: Fetish Statue (Secret Room Floor)
→ Same secret room as Nico
→ Pick up statue from floor while rescuing Nico
→ Independent discovery during rescue action

ITEM 5: Masking Tape (Secret Room Floor)  
→ Same location as rope and statue
→ Simple collection action
→ Zero interdependency with other warehouse items

PHASE 2 - SYNTHESIS SEQUENCE (ordered application, but NOT enabling chain):

Step 1 → Use masking tape on photoelectric cell (disables elevator sensor)
         - Tape was collected independently in Phase 1
         
Step 2 → Move crate blocking elevator back into position
         - Environmental manipulation, no new item needed
         
Step 3 → Push left large crate aside using pallet carrier
         - Rope+statue attachment enables pulley use later
         
Step 4 → Attach rope to statue, wind with pallet carrier
Step 5 → Connect rope to pulley system
Step 6 → Push statue through newly-opened door (Nico helps)

Step 7 → Use manacles on cable → SLIDE TO ESCAPE
         - Manacles were acquired independently via trade
```

**Why It's This Type**: Five items (key, manacles, rope, statue, tape) gathered PARALLELLY across warehouse complex. Key→manacles is a simple TRADE, not Step1-enabling-Step2 dependency. Rope, statue, tape all from same room but collected independently—none unlocks another. SYNTHESIS at end combines all into escape sequence, but gathering phase has no interdependencies. Classic MFP structure: "I need things from multiple places, then put them together" rather than "Each thing I get lets me get the next thing."

**Distinction from Meta-Puzzle Construction**: The key given to guard for manacles is CONSUMED in trade, not TRANSFORMED into another tool. Rope doesn't enable statue collection (both just there in secret room). Tape doesn't enable crate movement (it enables elevator access which was already possible via button). Items are collected; they don't produce other items as output.

---

### Syberia: Cog Wheel → Crypt Elevator Puzzle (Valadilene, SYB)

**Problem**: The cemetery elevator that provides access to the church's upper level is non-functional. Player must restore it by collecting four cog wheels of specific sizes and installing them on the elevator control panel. Unlike Meta-Construction, all four cogs can be gathered immediately upon entering the hotel—no sequential dependency exists during collection phase.

<small>Source: gamefaqs_thayes_syberia.txt, lines 299-301 — "Get the four cog wheels: Two from the floor at the left side of the table and two on the table." / lines 438-440 — "Put the four cog wheels on the spindles and pull the right lever to to ride the elevator up to the top floor."</small>

```
FOUR INDEPENDENT REQUIREMENTS (gathered in any order):

COG 1: Large Cog Wheel
Location Source: Hotel lobby, floor near left table edge
Acquisition Method: Simple TAKE action during initial hotel exploration
Independent of other three cogs

COG 2: Medium Cog Wheel  
Location Source: Same hotel lobby location, floor near table
Acquisition Method: Simple TAKE action—picked up alongside large cog
Independent gathering action

COG 3: Small Cog Wheel
Location Source: Hotel lobby, ON the table surface
Acquisition Method: Simple TAKE action from table top
Independent of floor cogs

COG 4: Tiny Cog Wheel
Location Source: Also on hotel table (two small cogs together)
Acquisition Method: Pick up with Small cog during same interaction zone
No interdependency—both table cogs collected freely


INDEPENDENCE ANALYSIS:

The four cogs share a CRITICAL PROPERTY: All become available IMMEDIATELY during initial hotel exploration. Player does NOT need to:
- Complete any other puzzle first
- Use one cog to access another location
- Wait for temporal conditions or NPC interactions

This distinguishes from Meta-Construction where Step N's OUTPUT becomes N+1's INPUT. Here, Step A (get large), Step B (get medium), Step C (get small), and Step D (get tiny) are FOUR PARALLEL fetch actions sharing only SYNTHESIS at final puzzle application.


SYNTHESES SEQUENCE:

Step 1 → Collect all four cogs during Valadilene exploration (any time after hotel entry, any order)
         <small>Source: gamefaqs_thayes_syberia.txt, lines 299-301 — initial collection</small>

Step 2 → Navigate to cemetery, reach elevator at church base
         
Step 3 → Approach elevator control panel with four visible spindle slots
         - Panel shows exactly where cogs must be placed (visual requirement clarity)
         
Step 4 → Insert ALL FOUR cog wheels onto their respective spindles
         - Size matching: Each cog fits ONLY its correctly-sized spindle
         - No specific order required during installation—any sequence works

Step 5 → Pull right lever on panel → Elevator activates, upper level accessible


SYBERIA-SPECIFIC IMPLEMENTATION NOTES:

Clockwork Aesthetic Reinforcement: The four different-sized cogs visually represent the mechanical/clockwork theme central to SYB's Voralberg automaton heritage. Unlike generic "four items in box" puzzles, SYB uses COGS specifically—items that thematically connect to Oscar's mechanical craftsmanship and Hans' mammoth automaton designs.

Early-Game Tutorial Function: This MFP serves as gentle introduction to Valadilene's puzzle structure—gather scattered mechanical components, synthesize at single application point. Establishes pattern without demanding complex sub-puzzle chains (all cogs are direct TAKE actions).


WHY IT'S MULTI-FACETED PLAN (Not Meta-Construction):

PARALLEL GATHERING: All four requirements become available simultaneously upon hotel entry. Player could theoretically collect all four before leaving hotel room. This is the DEFINING characteristic of MFP vs MC.

NO PRODUCTION CHAIN: Cog A does not ENABLE collection of Cog B. Unlike "break bottle with rock → use broken bottle to open barrel → get crowbar," here we have "pick up cog 1, pick up cog 2, pick up cog 3, pick up cog 4"—four independent acquisition events.

SIZE-MATCHING AT APPLICATION ONLY: The size-differentiation (large/medium/small/tiny) matters solely during final installation. During collection phase, all four are equally acquirable with no prerequisites.

FAILURE MODE IS INCOMPLETE SET NOT WRONG SEQUENCE: If player returns to elevator with only three cogs, puzzle fails because "one missing" not because "wrong order." Meta-Construction would fail on wrong execution sequence even with all components available.
```

---

### Syberia: Helena's Blue-Helena Cocktail Recipe (Aralbad Hotel, SYB) **MFP + SYMBOL-CODE TRANSFER**

**Problem**: The cocktail machine at Aralbad hotel bar can create drinks, but the player cannot speak Romanian to directly ask for recipes. Must discover the Blue-Helena cocktail recipe through environmental clues and phone call information gathering, then apply mechanical input sequence on cocktail interface. This combines MFP (gathering scattered recipe requirements) with Symbol-Code Translation (mapping ingredient names → machine button codes).

<small>Source: gamefaqs_thayes_syberia.txt, lines 781-790 — Run south to exit the dining hall and run north through the arch. Return to the dining hall and talk to James... "I'll tell you what to do" dialogue indicates information source needed.</small>

<small>Source: gamefaqs_thayes_syberia.txt, lines 1230-1231 — "HOTEL BROCHURE: Found on the counter in the hotel. The phone number for the Hotel Meurice is written on the brochure, which can be called to find out the recipe for the Blue-Helena cocktail."</small>

```
REQUIREMENT DISCOVERY CHAIN (Incremental Information Gathering):

PHASE 1 - INFORMATION SOURCE IDENTIFICATION:
Step A → Explore hotel counter during initial Aralbad arrival
         <small>Source: lines 781-782 — "Run to the top-left corner of the lounge and open the cupboard...Exit the press the red button, and then open the door at the top-left corner of the lounge. Run through the arch on the left to enter the dining hall."</small>
     
Step B → Obtain HOTEL BROCHURE from counter during manager distraction
         - Brochure contains PHONE NUMBER for Hotel Meurice (Paris)
         - This is KEY INFORMATION ITEM without which recipe impossible
         
Step C → Call Hotel Meurice using hotel phone with brochure number
         <small>Cross-realm logistics element: Phone connects to earlier game location</small>
         - Phone conversation reveals Blue-Helena RECIPE components:
           (Exact dialogue varies; typically mother provides ingredient list)


PHASE 2 - INGREDIENT COLLECTION (Four parallel acquisition paths):

INGREDIENT 1: Vodka bottle
Location Source: Komkolzgrad space compound, guard's house
Acquisition Method: 
- Simple TAKE action from shelves during initial space compound exploration
<small>Source: gamefaqs_thayes_syberia.txt, line 723 — "Get the vodka bottle at the right side of the house."</small>
- CRITICAL CROSS-REALM ITEM: Acquired in Komkolzgrad, used in Aralbad
- Independent of other cocktail ingredients

INGREDIENT 2: Crystallized Honey  
Location Source: Aralbad hotel bar cupboard
Acquisition Method:
- Simple TAKE action from cupboard behind bar counter
<small>Source: line 796 — "Open the cupboard at the right side of the bar and get the crystallized honey"</small>
- Independent acquisition during dining hall exploration

INGREDIENT 3: Lemon
Location Source: Aralbad hotel bar SAME cupboard
Acquisition Method:
- Collected alongside crystallized honey in same interaction zone
<small>Source: line 796 — "get the crystallized honey and lemon"</small>
- Independent acquisition, parallel to honey retrieval

INGREDIENT 4: Liquid Honey (Transformed from Crystallized Honey)
Location Source: Jacuzzi beside swimming pool
Acquisition Method:
- This is a SUB-PUZZLE within MFP: Must TRANSFORM crystallized → liquid
<small>Source: line 798-799 — "Turn the wheel and put the crystallized honey in the jacuzzi to make the liquid honey."</small>
- Steps:
  1. Navigate to jacuzzi area beside pool (separate room)
  2. Turn wheel/valve on jacuzzi (activates water system)
  3. Insert CRYSTALLIZED HONEY into warm jacuzzi
  4. Collect LIQUID HONEY output after melting transformation completes

Transformation Note: This creates a META-CONSTRUCTION SUBCHAIN within the larger MFP:
CRYSTALLIZED_HONEY → [Jacuzzi Melting] → LIQUID_HONEY
But the FOUR final ingredients (vodka, liquid honey, lemon, crystal dish) remain PARALLEL to each other once obtained


PHASE 3 - COCKTAIL MACHINE INTERFACE (Symbol-Code Translation Layer):

COCKTAIL MACHINE OPERATION:
<small>Source: lines 801-807 — "Return to the dining hall and look at the cocktail machine on the bar. Put the lemon, liquid honey and vodka in the slots on the machine."</small>

Step 1 → Approach cocktail machine at bar counter
         - Machine displays multiple EMPTY INGREDIENT SLOTS (visual requirement indicator)
         
Step 2 → Insert ingredients into physical slots:
         a. Vodka → designated LIQUOR SLOT
         b. Lemon → designated FRUIT/INGREDIENT SLOT  
         c. Liquid Honey → designated SYRUP/DENSER SLOT
         
Step 3 → OPERate machine control interface (Symbol-Code Translation phase):
         <small>Source: lines 804-807 — "Press the I/O (first button), and press the second key. Pull the small lever at the right side of the bar and press the third key. Press the snowflake (second button), lemon (fourth button), honey (fifth button) and create (sixth button)."</small>

         Interface displays: 6 buttons with symbolic icons
         
         a. I/O Button (FIRST = power on/initialize system)
         b. SECOND KEy — unclear function, appears to be mode selection
         c. SMALL LEVER — mechanical arm activation for mixing
         d. THIRD KEYYEEY — post-lever confirmation step
         e. SNOWFLAKE BUTTON (SECOND symbolic icon = freezing/cooling?)
         f. LEMON BUTTON (FOURTH symbolic icon = lemon component)
         g. HONEY BUTTON (FIFTH symbolic icon = honey component) 
         h. CREATE BUTTON (SIXTH = execute recipe, dispense cocktail)


Step 4 → Crystal Dish Placement & Helena Interaction:
         <small>Source: line 807 — "Put the crystal dish on the bar and talk to Helena."</strong></small>
         
         a. CRYSTAL DISH obtained from somewhere (need verification)
            - Possibly from locker room near pool or hotel lounge
         b. Place on bar surface after cocktail dispenses
         c. Talk to Helena → she consumes Blue-Helena, becomes responsive


WHY IT'S MULTI-FACETED PLAN:

PARALLEL REQUIREMENT DISCOVERY: Four ingredients (vodka, crystallized honey source, lemon, jacuzzi access) gathered from THREE different locations with no sequential dependency during COLLECTION PHASE:
- Vodka comes from Komkolzgrad (previous chapter location—could have obtained anytime)
- Honey and lemon from same cupboard in Aralbad hotel bar (independent of each other)  
- Jacuzzi transformation is separate sub-puzzle but doesn't block ingredient acquisition

SYNTHESIS REQUIRED AT FINAL APPLICATION: Cocktail machine requires ALL FOUR ingredients present simultaneously plus CORRECT BUTTON SEQUENCE. Gathering is scattered across exploration; synthesis occurs at single application interface.


WHY IT CONTAINS SYMBOL-CODE TRANSLATION LAYER:

COCKTAIL MACHINE INTERFACE: Unlike simple "use item on NPC" mechanics, the cocktail machine requires BUTTON SEQUENCE INPUT matching the recipe code player learned from Hotel Meurice phone call. The symbolic icons (snowflake, lemon, honey) must be pressed in correct order—a translation from "recipe information" to "machine interface actions."


CROSS-REALM LOGISTICS ELEMENT:

Vodka acquisition in Komkolzgrad demonstrates forward planning reward: Player who collected vodka during space compound exploration can complete Aralbad puzzle immediately. Player who missed it must backtrack across THREE chapters (Aralbad → Komkolzgrad 2 → return to Aralbad) via airship/train travel.


SYBERIA-SPECIFIC MECHANICAL IMPLEMENTATION:

Cocktail Machine as Automaton: Fits SYB's mechanical theme—another clockwork/machine interface requiring proper input sequencing. Not just "give item to NPC" but interacting with a VORALBERG-STYLE mechanism (the cocktail machine itself represents miniature automaton technology).

The Button Sequence is THEMED: Snowflake icon connects to cocktail preparation knowledge (cold drinks), lemon/honey icons are literal ingredient representations—visual-symbolic interface that reinforces mechanical/craftsmanship motif throughout game.
```

### Simon the Sorcerer: Tower of Doom Demons Summoning Ritual (SIMON)

**Problem**: The two demons Gerald and Max block access to the teleporter on the top floor of the Tower of Doom. They will teach Simon how to use it only if he can send them back to Hell—a ritual requiring multiple components acquired from different floors of the tower.

<small>Source: walkthroughs/simon1/simon1.txt, lines 1004-1029 — "They'll agree to teach Simon how to work the teleporter here, if he can send them to Hell... The book shows that the player needs a magic square drawn in chalk, candles from the basement, a skull from the basement, the mouse from the bedroom, and he needs to know their true names."</small>

<small>Source: walkthroughs/simon1/simon1_2.txt, lines 347-360 — "Talk to the demons... Say I'll just draw a quick magic square on the floor. Say OK, we're all set. Let's ROCK!"</small>

```
FOUR PRIMARY REQUIREMENTS (discovered incrementally through dialogue + examination):

REQUIREMENT 1: Magic Square (Information from BOOK)
Source Location: Top Floor (demons' room), cushion on bed
Discovery Method: READ book that demon lends → reveals magic square drawing requirement
Execution: Use CHALK (provided by demons) to draw square on floor
Independent of other physical components


REQUIREMENT 2: Candles (Physical Component from Basement)
Source Location: Basement level, Treasure Chest puzzle
Discovery Method: Examine chest containing candles (acquired via block-smashing lever puzzle)
Execution Chain:
  - Get TREASURE CHEST from bridge in basement
  - Move LEVER to raise smashing block above lever
  - Place chest on block below hammer mechanism
  - PULL LEVER twice → chest crushed open, candles revealed
Independent of skull acquisition (both from basement, separate actions)


REQUIREMENT 3: Skull (Physical Component from Basement)  
Source Location: Basement level, Upper wall alcove
Discovery Method: Examine skull hanging high on wall → need tool to knock it down
Execution Chain:
  - Get SPEAR from main floor (hanging from ceiling)
  - Return to basement with spear
  - USE speak on skull → knocks it loose
  - Collect SKULL that falls to floor
Independent of candle acquisition (separate examination/use chain)


REQUIREMENT 4: Mouse (Physical Component from Bedroom, Middle Floor)
Source Location: Bedroom level, Mouse hole in steps under stairs
Discovery Method: Attempt to enter mouse hole → reveals need for lure and capture method
Execution Chain:
  - Get SOCK from bedroom floor
  - Get POUCH from bed
  - Combine SOCK + POUCH (sock inside pouch acts as trap)
  - Use SOCK on mouse hole first → mouse attempts to exit, fails
  - Use POUCH on mouse hole → mouse enters pouch seeking sock scent → captured


REQUIREMENT 5: True Names (Information via Spy Mechanic)
This is a META-requirement that cannot be obtained through direct conversation.
Discovery Method: Demons REFUSE to provide their true names when asked directly.
Solution Chain:
  - Get SHIELD from main floor
  - Get CHEMICALS from top floor bookshelf
  - Combine CHEMICALS + SHIELD → shiny, reflective surface created
  - Mount SHINY SHIELD on high hook on top floor (above demons' room)
  - Return to bedroom level
  - USE talking MIRROR (magical object that shows any location with clear view)
  - Ask mirror to show DEMONS while they are unguarded (top floor alone)
  - Demons speak their TRUE NAMES in private, thinking not watched
  
WHY THIS IS MULTI-FACETED PLAN:

INCREMENTAL DISCOVERY PATTERN:
1. Initial dialogue with demons → learn they're oppressed, want to return to Hell
2. Ask "can you teach me teleporter?" → conditional yes pending demonic banishment
3. Request true names directly → REFUSED (critical information gap revealed)
4. Examine book they lend → reveals 4 physical requirements + magic square drawing
5. Player must now determine: WHERE are these items located?

SYNTHESIS REQUIREMENT:
- Candles and skull BOTH from basement, but DIFFERENT rooms/separate acquisition chains
- Mouse from bedroom (middle floor), completely different mechanic than basement items
- True names require SPY mechanism invention (shield + mirror system) because direct query failed
- No NPC states complete solution list at once; player builds mental inventory: "I need A from basement, B from basement, C from bedroom, D from information spy trick"

PARALLEL GATHERING POSSIBLE:
Unlike Meta-Puzzle Construction's linear chain, these requirements CAN be gathered in different orders:
- Could get mouse before candles (independent locations)
- Could acquire skull while obtaining candles in same basement trip  
- Spy mirror setup must happen AFTER shield polishing chemicals obtained but can occur before or after physical items collected

THE CRITICAL DIFFERENCE from simple "collect 4 items":
The TRUE NAMES requirement is INFORMATION, not physical object. The player must realize:
1. Demons won't volunteer their names (dialogue closure)
2. Magic requires true names per book instructions (informational prerequisite)
3. Therefore: need INDIRECT acquisition method

This meta-realization—designing a spy mechanism to bypass NPC refusal—is the SYNTHESIS that defines Multi-Faceted Plan. The complete solution emerges from combining failed dialogue attempt (names refused) with physical item discovery + environmental tool combination (mirror's viewing capability + shield's reflectivity).


EXECUTION:
Once all five requirements gathered, player initiates ritual:
1- Draw magic square on top floor chalk-dusted ground
2- Position candles at square's corners
3- Place skull in center of square
4- Hold mouse aloft as sacrificial offering
5- Speak demons' true names (learned via mirror spy) + incantation from book

Demons banished to Hell → learn teleporter operation → proceed to Fiery Pits.
```

**Why It's Multi-Faceted Plan**: The complete solution is never stated by any NPC in full. Player must assemble the requirement list from multiple sources: initial demon dialogue (they'll help if freed), book examination (lists ritual components), failed direct name request (triggers alternative acquisition method). No single interaction provides the checklist; synthesis happens across dialogue, inventory examination, and spatial exploration of three tower levels.

### Simon the Sorcerer: Dwarf Mine Beer Trade Chain (SIMON)

**Problem**: The dwarf mine blocks access to a gem worth selling. Entry requires wearing a beard and knowing the password. Inside, further obstacles require beer for one guard and a voucher for another NPC interaction. These items are obtained from the village pub via a complex scheme involving beeswax and timing.

<small>Source: walkthroughs/simon1/simon1.txt, lines 589-647 — "You'll need a few things before you can solve this plotline: You need a feather from the Wise Owl... You need a beard... You need the rock with password 'BEER'... You need beer and a beer voucher from the pub"</small>

<small>Source: walkthroughs/simon1/simon1_2.txt, lines 57-62, 208-216 — Detailed multi-step acquisition of beard, password, feather, beer, and voucher</small>

```
MULTIPLE INDEPENDENT REQUIREMENTS (gathered in any order):

REQUIREMENT 1: Beard (Disguise Component)
Source Location: Villiage Pub, sleeping dwarf on bench
Discovery Method: Examine sleeping dwarf → scissors use option becomes available
Acquisition Chain:
  - Obtain SCISSORS from starting location (wizard house drawer)
  - Return to pub after initial exploration
  - USE scissors on sleeping dwarf → BEARD acquired

Independent of other mine requirements


REQUIREMENT 2: Password Knowledge (Information Component)
Source Location: Center of Forest, stone outside dwarf mine entrance
Discovery Method: Pick up rock/examine it → dialogue reveals password "BEER"
Execution: 
  - Navigate to center of forest from village
  - PICK UP rock near cave entrance
  - EXAMINE rock in inventory → "The word BEER is carved into it"

Information learned can be remembered (MFP pattern) without affecting other requirements


REQUIREMENT 3: Feather (Key Acquisition Tool, Inside Mine)
Source Location: Owl Tree in forest, Wise Owl NPC
Discovery Method: Talk to owl → dialogue animation shows feather falling
Acquisition Chain:
  - Navigate to Owl Tree from forest center
  - TALK to wise owl repeatedly → FEATHER drops
  - PICK UP feather from ground

Independent gathering action


REQUIREMENT 4 & 5: Barrel of Beer + Beer Voucher (Pub Sub-puzzle)
These require a META-CONSTRUCTION SUBCHAIN within the MFP.

PHASE A - Obtaining Beeswax (Prerequisite):
1. Get Repulser from Rapunzel's Tower (separate plotline)
2. Use Repulser on chocolate house door in village → entry granted
3. Get SMOKEBOX and BEEKEEPER HAT from inside house
4. Exit to outside chocolate house
5. USE smokebox + wear hat + MATCHES from pub fruit machine → collect WAX from beehive

PHASE B - Pub Distraction Timing Puzzle:
6. Enter pub, TALK to bartender about getting a drink
7. Bartender animation triggers (looks behind bar for ingredients)
8. [TIMING WINDOW]: Quick inventory access while bartener distracted
9. USE beeswax on beer barrel spigot → plugs leak → BARREL appears empty
10. Bartender gives you LEAFLET with BEER VOUCHER inside, leaves pub
11. Exit pub → TAKE barrels of beer that bartender discarded outside

WHY THIS IS MULTI-FACETED PLAN:

PARALLEL REQUIREMENT GATHERING: Four distinct categories acquired independently:
- Physical disguise (beard from dwarf's snoring)
  - Information knowledge (password from stone examination)  
  - Tool item (feather from owl interaction, used inside mine for key)
  - Trade items (beer + voucher from pub scheme with sub-requirements)

SYNTHESIS AT ENTRY POINT: All requirements converge at dwarf mine entrance:
  - WEAR beard to bypass guard's visual check
  - SAY password "BEER" during dialogue  
  - Enter mine proper

FURTHER SYNTHESIS INSIDE MINE: The beer and voucher are used on DIFFERENT DWARVES in SEPARATE ROOMS—these weren't gathered as a paired set but as individual trade components that each satisfy one NPC's demand.


DISTINCTION FROM META-CONSTRUCTION SUBCHAIN (Wax/Beer Puzzle):
The beeswax → pub scheme → beer/voucher chain IS sequential and must be done in order:
  - Cannot get without rapunzel plot complete
  - Cannot plug barrel before bartender animation triggers
  - Must collect voucher BEFORE exiting to grab beer barrel
  
But within the larger MFP structure, THIS ENTIRE PUB SCHEME is just ONE REQUIREMENT CATEGORY alongside three others that CAN be gathered in parallel or different order.


FINAL EXECUTION:
Once inside mine with beard + password known:
1. Navigate past first guard (wearing beard bypasses visual check)
2- Give BEER to left dwarf → he wanders off to drinking room southeast
3. Use FEATHER on sleeping dwarf in drinking room → drops KEY  
4. Use key on gold door, continue west → get HOOK for later plotlines
5. Enter treasury room, give VOUCHER to guard dwarf → request GEM from pile
6. Exit mine with gem, sell to Dodgy Geezer in village → GOLD COINS


FAILURE MODES:
- Without beard → guard refuses entry regardless of password
- Wrong password → same result (both required simultaneously)
- Missing beer → left guard maintains block on drinking room access
- Missing voucher → treasury dwarf offers no items

Four requirements, three locations (forest owl, village pub/sub-area, center/forest mine), one information check (stone examination).
```

---

### Legend of Kyrandia: Royal Vestments Collection (LK1)

**Problem**: To enter the Kyragem chamber and defeat Malcolm, Brandon must collect three royal artifacts scattered across Castle Kyrandia and place them in the correct order on pillows in the foyer. Each artifact requires a separate acquisition chain from different castle zones.

<small>Source: classicgamesparadise_walkthrough.html, lines 319-327 — Description of scepter in kitchen, crown behind library fireplace, chalice from Faun; pillow placement order</small>

<small>Source: bonny_ploeg_walkthrough.html, lines 144-146 — "Scepter - Found in castle kitchen. Used to enter Kyragem room," "Crown - Found behind fireplace in study," "Chalice - Retrieved from Pipsqueak after you give him the apple"</small>

```
THREE INDEPENDENT ARTIFACT ACQUISITIONS (can be done in any order):

ARTIFACT 1: Royal Scepter
Location Source: Castle Kyrandia Kitchen
Acquisition Method:
- Enter castle using Iron Key at gate (requires invisibility gem to bypass gargoyles)
- Navigate to kitchen area on main floor
- Simple collection: scepter hanging over table, unobstructed pickup
No sub-puzzle required; purely location discovery within castle exploration

Independent of other artifacts—can collect first, last, or middle.


ARTIFACT 2: Royal Crown  
Location Source: Castle Kyrandia Library → Secret Passageway → Dungeon
Acquisition Chain:
- Go to library (study) on main floor
- Investigate fireplace → reveals secret passage leading to dungeon
- Crown visible but trapped behind forcefield barrier in adjacent chamber

Book Sequence Sub-Puzzle:
- Return to library before entering fireplace passage
- Pull books from shelves in specific order by first letter of titles
- Letters must spell "O-P-E-N" when extracted sequentially
- Success: fireplace rotates without Brandon, creating open passageway

Forcefield Bypass:
- Enter dungeon through opened passage
- Use blue gem (demagnetize power) on amulet to disable forcefield
- Navigate past forcefield to room with loose floor tile
- Move tile → discover Gold Key (needed for foyer door, not crown itself)
- Crown can now be collected from its pedestal

Why Independent: While crown collection involves sub-puzzles (book sequence, forcefield bypass), none of these affect scepter or chalice paths. Player could retrieve scepter first then do entire library/dungeon complex.


ARTIFACT 3: Royal Chalice
Location Source: Faeriewood → Pipsqueak/Faun trade
Acquisition Chain:

Phase A - Reach Faeriewood (separate game world):
- Collect water from Castle Moat at tropical lagoon using empty bottle
- Use blue gem on amulet to demagnetize floating chalice in air
- Chalice appears but Pipsqueak/Faun steals it immediately

Phase B - Apple Trade Sub-Puzzle:
- Must obtain apple (found at Brandon's home outside cave OR in Faeriewood)
- Create purple potion at Crystals of Alchemy: blue + red potions combined
- Purple potion shrinks Brandon to miniature size

Phase C - Enter Faun's Home:
- Drink purple potion outside Faun's door while shrunken
- Trade apple for Royal Chalice (dialogue exchange)
- Exit, find chalice placed right of Faun's door

Why Independent: Entire faeriewood sequence is separate world visit with its own mechanics. Chalice can be acquired before visiting castle or after; no mechanical overlap with scepter/crown paths.


SYNTHESIS PHASE - Foyer Pillow Placement:

Once all three artifacts collected (any order), enter foyer on main floor:
- Three pillows visible in left-middle-right arrangement

Correct Order Required (explicit puzzle):
1. Scepter → LEFT pillow
2. Crown → MIDDLE pillow  
3. Chalice → RIGHT pillow

Success: Doors to Kyragem chamber open, Malcolm confronts Brandon
```

WHY IT'S MULTI-FACETED PLAN:

PARALLEL REQUIREMENT GATHERING CONFIRMED:
Three artifacts acquired through completely independent paths:
- Scepter: Simple pickup in kitchen (zero sub-puzzles)
- Crown: Library book sequence + dungeon forcefield bypass + optional Gold Key discovery
- Chalice: Separate world (Faeriewood) + potion crafting + size alteration + NPC trade

Player can complete these in ANY ORDER and through DIFFERENT GAME SESSIONS. Walkthrough structure presents linearly but gameplay allows: collect scepter → visit Faeriewood for chalice → return to castle for crown, or any permutation.


INFORMATION DISCOVERY STRUCTURE:
No single source provides complete "get scepter, crown, chalice" checklist. Player must:
- Explore Faeriewood separately (learned from Zanthia's dialogue)
- Discover kitchen through castle exploration (no explicit hint about scepter there)
- Uncover library secret passage through examination, not instruction


FAILURE AS FEEDBACK:
- Attempting foyer placement with incomplete set → puzzle fails, missing artifact slots remain empty
- Wrong pillow order → no progression, must reconfigure
- Information about "three artifacts needed" comes incrementally from castle exploration and previous game sections (Iron Key dialogue mentions royal vestments vaguely)


DISTINCTION FROM META-CONSTRUCTION:
The three artifact paths have NO OUTPUT-INPUT dependency between them:
- Getting scepter doesn't enable chalice collection (completely different world)
- Crown acquisition doesn't require scepter or vice versa
- Chalice from Faeriewood independent of castle interior puzzles

If this were Meta-Construction, step 1's output would feed into step 2 (e.g., "scepter opens library door for crown"). Instead, all three converge at FINAL synthesis point (foyer pillows), satisfying MFP definition.


SUB-PUZZLE WITHIN PATHS:
Note that EACH artifact path contains its own mini-chains:
- Crown path: Book sequence → fireplace rotation → forcefield bypass → collection
- Chalice path: Potion mixing (blue+red) → shrinking → trade dialogue

But these are SEQUENTIAL WITHIN ONE ARTIFACT ACQUISITION, not BETWEEN ARTIFACTS. The OVERALL structure remains Multi-Faceted Plan with three parallel requirements.


MALCOLM FINAL CONFRONTATION (Post-MFP Resolution):
Once foyer doors open after correct pillow placement:
- Enter Kyragem chamber, Malcolm prepares spell attack
- Time-sensitive escape required: Stand in front of mirror on room's right side
- Use red gem (invisibility) at critical moment → spell bounces off mirror, hits Malcolm
- Malcolm turned to stone, Kyrandia saved

This final sequence is TIMED CONSEQUENCE, separate from the MFP vestment collection.


GAME PROGRESSION CONTEXT:
The Royal Vestments puzzle serves as penultimate barrier before finale:
1. Earlier game (Timbermist/Faeriewood): Amulet powers gained through meta-construction chains
2. Mid-game: Iron Key obtained, castle access granted
3. Final prep phase: MFP vestment synthesis using earlier-discovered powers
4. Climax: Timed escape from Malcolm's spell
```

---

---

### Gabriel Knight 1: Voodoo Code Pages Collection (GK1)

**Problem**: After attending voodoo conclave rituals, Gabriel must collect scattered cryptic code fragments across multiple crime scenes and ritual locations. Four symbol-bearing pages/patterns can be gathered independently in any order—physical reconstruction follows classic MFP pattern where parallel acquisition feeds single synthesis endpoint via artist consultation.

<small>Source: justadventure_walkthrough.html, lines 906-923 and 998-1040 — Complete voodoo code reconstruction sequence documented</small>

```
FOUR COMPONENT PARALLEL GATHERING (Independent Collection Paths):

Page 1 - First Conclave Cryptic Message:
→ After Crash's death scene at midnight ritual gathering  
→ Sketch coded symbols on tombstone/wall during crime scene investigation
→ Item acquired: "Voodoo Code" (later renamed after Page 2 found)

Page 2 - Second Crime Scene Symbols:
→ Return to conclave site after police evidence collection completes
→ New coded message appears at previously-unmarked location  
→ Document via sketchbook action → inventory gains Page 2
→ Independent of Page 1—just sits there waiting for observation

Pattern Fragment A - Vevé Design Partial #1:
→ Examine chalk symbols floor/wall at Marie Laveau's murder house
→ Sketchbook copies partial ceremonial diagram section
→ Separate location from code pages entirely

Pattern Fragment B - Vevé Design Partial #2:
→ French Quarter exploration reveals second wall/floor symbol arrangement  
→ Again, sketchbook documentation captures fragment
→ Zero dependency on Pages 1, 2, or Fragment A collection status

SYNTHESIS VIA ARTIST CONSULTATION:
All four components carried to artist's studio → sequentially shown → merges into complete vevé diagram design as single composite inventory item.

WHY IT'S MFP NOT META-CONSTRUCTION:
Getting Page 2 requires no prior knowledge from Page 1. Both pages exist independently at their crime scenes waiting to be sketched. Zero interdependency during collection phase—pure parallel gathering with end-point convergence. Compare to meta-construction where A would OUTPUT location of B (Page 1 decoded text revealing coordinates for Page 2 discovery).
```

<small>Cited from: justadventure_walkthrough.html:906-1040</small>

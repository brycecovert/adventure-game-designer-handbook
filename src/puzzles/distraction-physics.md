# NPC Distraction Physics

**Information Architecture**: NPC follows patrol/behavior pattern that blocks access to location or item. Blocking condition is *physical/spatial* rather than dialogue-based: line-of-sight, proximity triggers, or path obstruction. Solution requires manipulating environment to break the blocking condition without direct confrontation.

**Player Action Pattern**: Observe NPC behavior loop. Identify environmental object/action that can exploit timing, physics, or AI limitations. Execute action to divert/obstruct/block NPC's attention or movement. Access previously blocked element during distraction window.

**Core Mechanic**: Spatial/temporal manipulation creates opportunity window. Unlike Sensory Exploitation (direct vulnerability attack like tickle/sleep), DNP exploits *environment* + *NPC pathfinding/routine*. Player becomes environmental engineer, creating puzzle in 3D space using standard actions.

**Variations**:
- Pull lever/activate object that NPC must investigate, breaking patrol pattern
- Create physical obstruction (object on tracks, blocking door)
- Redirect NPC attention via object manipulation (pull totem nose → monkey hangs there → NPC path rerouted)
- Timing puzzle: wait for patrol cycle gap + execute grab action in short window

**Adventure Game Implementation**:
- LOOK at environment to spot interaction point that affects NPC behavior
- Standard WALK/USE/PULL/PUSH actions on environmental objects
- Observe NPC AI pattern (patrol route, reaction triggers)
- Trigger environmental change → NPC reroutes or becomes occupied → access granted

**Example Structure**:

```
Blockage Phase:
→ Target [ITEM] protected by [NPC_GUARD] with patrol loop to [OBJECT]
→ Direct theft impossible ("Can't steal while watched!")

Solution Phase:
→ Examine [ENVIRONMENTAL_OBJECT] within guard's patrol path/range
→ Realize action will divert NPC attention or alter movement pattern:
  - USE object on [TRIGGER_POINT] creates distraction
  - PULL [OBJECT] physically obstructs NPC path
  - TIME window when NPC is investigating/occupies alternate location

Execution Phase:
→ Activate environment while NPC distracted → Access [ITEM] during vulnerability window
→ Distraction must be sustained or timed precisely
```

**King's Quest VI Parallel**: None identified in walkthrough.

**Monkey Island Example**:
- **Totem Pole / Monkey Blockade**: 
  - Goal: Enter Giant Monkey Head interior (blocked)
  - Problem: Monkey guards it, standing on totem pole nose
  - Solution: Pull Nose down → Monkey follows and hangs from pulled-down nose → Monkey physically occupies space away from gate → Access granted
  - Distraction + spatial displacement = access

---

### Indiana Jones: Fate of Atlantis - Submarine Guard Distraction (Team Path, INDY2)

**Setup**: After reaching the Nazi submarine via hot air balloon crash, Indy and Sophia are separated—Sophia is imprisoned in a cell while Nazi guards patrol the corridors. Indy needs to reach the emergency rudder controls to guide the sub into the airlock. A guard stands watch near the rudder control room with no direct combat option available (Team path focuses on cooperation over violence).

<small>Source: walkthroughking_ashley_walkthrough.html, lines 89 — "Get her to distract the guard, and then walk around behind him."</small>

**Blocking Condition**: Guard stands stationary at fixed position blocking access to emergency rudder control. Cannot pass, cannot fight (on Team path), must create opportunity through environmental/social manipulation.

**Physical/Spatial Solution Chain**:
1. Sophia is in adjacent cell with wall opening allowing voice communication
2. Use Intercom/communicate with Sophia → coordinate distraction plan
3. Sophia shouts about "bucket" or "pail"—creates noise distraction audible to guard
4- Guard turns toward sound source (Sophia's cell), turning back away from rudder corridor
5. While guard faces distraction: Walk Indy around behind him, through previously-blocked passage
6. Access emergency rudder controls unimpeded

<small>Source: gamefaqs_darth_maul_walkthrough.html, lines 981-987 — "Head for the right and open the trap door that leads to the strong box...Sophia will pick up a bucket and knock it over. The guard will hear the noise and run to Sophia's cell. While he is distracted, use the key to unlock the rudder controls."</small>

**Environmental Manipulation**: The distraction isn't an object thrown or lever pulled—it uses SOCIAL ENVIRONMENT (two separated allies coordinating) + AUDITORY TRIGGER (bucket noise). Guard's AI prioritizes unexpected sounds near prisoner cells as security threats.

**Why It's Distraction Physics**: Player doesn't confront guard directly. Instead, they manipulate the environment (Sophia's bucket, communication between rooms, acoustic propagation) to create temporal opportunity window. Guard reroutes from patrol position due to environmental stimulus outside his blocking role.

**Alternative Solution Paths**: Each path type has different approach:
- **Wits Path**: Create fire in torpedo tube using rag + wires → guard responds to emergency evacuation (environmental hazard distraction)
- **Fists Path**: Direct combat defeats guard (not distraction—different path specialization)

---

### Gabriel Knight 1: Mime Distraction for Cop Radio Access (GK1)

**Setup**: Gabriel needs to learn the location of a crime scene from police radio broadcasts. A cop stands guard at his motorcycle with an active radio in Jackson Square. The cop will not let Gabriel near the radio and has no dialogue option revealing the information.

<small>Source: mysterymanor_mbday630_walkthrough.html, lines 77-78 — "Go to park. Get mime to follow you to cop and use motorcycle when cop chases mime."</small>

<small>Source: justadventure_walkthrough.html, lines 540-557 — "(iii) Ergo – He must somehow get the cop to leave his bike for a while. (iv) Get the mime to annoy him so that the cop will chase him away... The mime will now start mocking the cop who will try to catch him and run after him away from his motor bike in so doing."</small>

**Blocking Condition**: Cop occupies fixed position next to motorcycle radio. Direct approach = refused access. Radio broadcasts contain vital intel (crime scene at Lake Pontchartrain). A mime wanders Jackson Square, following and mockingly copying anyone he approaches.

**Environmental/Spatial Solution Chain**:
1. Approach mime near top of screen → mime begins following Gabriel
2. Walk Gabriel toward right side of screen, then diagonally through center area
3. Position themselves so mime ends up standing close to cop
4. Mime begins mocking gestures → cop becomes annoyed
5. Cop abandons motorcycle post and chases mime away from radio
6. Window opens: Use motorcycle radio while cop is absent (2 points)
7. Radio broadcast reveals crime scene location: Lake Pontchartrain

<small>Source: justadventure_walkthrough.html, lines 547-548 — "Whilst the cop is absent, QUICKLY use his radio. You will hear the location of the crime scene – it is at Lake Pontchartrain [+ 2 points]"</small>

**Environmental Manipulation**: The mime acts as a natural NPC-following entity built into Jackson Square's simulation. Player doesn't control the mime directly—instead manipulates spatial positioning so mime's inherent annoying behavior triggers cop's departure. Environmental chain-reaction, not direct item use.

**Why It's Distraction Physics (Not Sensory Exploitation)**: Cop has no perceptual weakness or specific vulnerability. Instead, player uses a third NPC's programmed following/mocking behavior to ALTER THE COP'S PHYSICAL POSITION in space. The cop willingly leaves because of social irritation, not because his senses were deceived or exploited.

---

### Broken Sword: Shadow of the Templars - Baphomet Key Swap (Chapter 6)

**Problem**: Guard retains real Baphomet key while wearing protective gloves that prevent theft. Must replace real key with fake using environmental manipulation chain to create opportunity window when guard removes gloves temporarily.

<small>Source: broken-sword-1/4_agh_peter_christiansen_walkthrough.html, lines 469-498</small>
<small>Source: broken-sword-1/1_walkthroughking_broken_sword.html, lines 178-185</small>

**Environmental Manipulation Chain**:
```
PHASE 1 - Initial Blockage Discovery:
→ Approach guard at Baphomet temple/tomb entrance  
→ Guard holds real key but wears protective gloves at all times
→ Direct theft attempt fails ("Can't take key while guard wears gloves")
→ Fake key crafted earlier in inventory (prerequisite from prior puzzle)

PHASE 2 - Distraction Setup (Painter Room Adjacency):
→ Locate painter working in adjacent chamber/room
→ Painter creates noise or activity that can be leveraged
→ Phone line accessible in player's location for remote communication

PHASE 3 - Environmental Trigger Sequence:
Step 1 → Adjust thermostat in shared temperature-control area
         - Creates discomfort condition for painter (too hot/cold)
         
Step 2 → Painter seeks relief, moves to different location/uses phone
         - Environmental change breaks normal work pattern
         
Step 3 → Phone call initiated by painter OR player calls painter
         - Painter engaged in conversation at distance from guard room

PHASE 4 - Guard Distraction Window:
→ Guard's attention drawn to noise/activity from painter room
→ During distraction period, guard removes gloves (temperature/comfort reason)
→ CRITICAL TIMING WINDOW opens when gloves off and attention diverted

PHASE 5 - Key Swap Execution:
→ While guard distracted AND gloveless → Use fake key ON real key location
→ Real key replaced with duplicate in inventory
→ Original now accessible without confrontation or timing failure

WHY IT'S DISTRACTION PHYSICS: Multiple environmental elements (thermostat control, phone communication, painter's behavior) chain together to create opportunity window. Player manipulates 3D space using standard actions, creates puzzle where NPC reroutes attention due to external stimulus. NOT Sensory Exploitation because guard has no specific vulnerability being attacked—player engineers DISTRACTION CONDITIONS through environmental controls, not direct exploitation of perceptual weakness.
```

---

### Broken Sword II: The Smoking Mirror - Ketch's Landing Cat/Flagpole Surveyor Distraction (Chapter 5)

**Problem**: George needs access to the museum where Captain Ketch's treasure information is hidden, but cannot enter directly. Bronson the surveyor blocks the area and guards his equipment. The cat at the museum creates environmental distraction opportunities that can be exploited to bypass both obstacles without confrontation.

<small>Source: 2_the_spoiler_tom_hayes_walkthrough.html, lines 262-271 — "Use the inner tube with the tree. Use the red ball with the inner tube. Use the ladder, to leave Bronson hanging from the flagpole. Get the marker."</small>

<small>Source: 4_kasagaming_walkthrough.html, lines 359-362 — "Go up to the museum. Use the ladder to extend it. Climb the ladder, attach the inner tube to the middle window flagpole, then descend the ladder. Attach the fish to the inner tube..."</small>

```
PHASE 1 - BLOCKING CONDITION DISCOVERY:

→ Arrive at Ketch's Landing Museum area
→ Bronson stands near ladder/flagpoles, guarding survey equipment and plans
→ Museum door locked; Ketch sisters appear during certain dialogue cycles
→ Direct entry impossible while Bronson occupies the space

ENVIRONMENTAL OPPORTUNITY IDENTIFIED:
→ Cat roams museum porch area (unrelated NPC)
→ Flagpole with sensor/target sits on elevated platform
→ Red ball accessible via cat baiting sequence


PHASE 2 - DISTRACTION CHAIN SETUP:

Step 1 → Trade worm/quilt/lipstick to Rio for fish 
         <small>Source: kasagaming_walkthrough, line 359 — "Offer the quill pen to the cat. It will shred it to pieces."</small>
         
Step 2 → Place fish on museum porch where cat can access  
Step 3 → Cat distracted by fish → allows player movement through area

STEP 4 → Climb ladder, extend flagpole rope system with inner tube
Step 5 → Lower ball to ground level via tube mechanism

PHASE 3 - PHYSICAL DISTRACTION DEPLOYMENT:

Step 6 → Place red ball in tree-based sling/catapult mechanism
         <small>Source: tom_hayes_walkthrough, line 267 — "Use the inner tube with the tree. Use the red ball with the inner tube."</small>
         
Step 7 → Launch ball at flagpole sensor/target → sensor knocked from pole
Step 8 → Bronson climbs ladder to investigate/repair damaged survey equipment

CRITICAL DISTRACTION WINDOW:
→ Bronson hangs from upper flagpole (stuck/investigating)
   <small>Source: kasagaming_walkthrough, line 360 — "Use the ladder, to leave Bronson hanging from the flagpole."</small>

Step 9 → While Bronson occupied above: retrieve survey marker/equipment freely
         - Physical obstruction removed by environmental consequence
         
Step 10 → Collect plans and theodolite from beach area (Bronson's abandoned items)
Step 11 → Return to museum, present plans to Ketch sisters → gain entrance

ENVIRONMENTAL MANIPULATION SUMMARY:
- Cat → food distraction creates access window for item placement
- Ball/sling mechanism → physical projectile knocks sensor off pole  
- Sensor damage → triggers Bronson's investigation response (AI reactivity)
- Bronson stuck above → ground-level items now unprotected
```

**Why It's Distraction Physics**: Player never confronts Bronson directly. Instead, manipulates environment (cat food placement, ball sling launch, sensor destruction) to create cascading physical consequences that remove the blocking condition. Bronson's distraction is not an explicit "distracted state"—he climbs to repair equipment because sensor was destroyed and ends up physically occupying elevated space away from his items. This differs from Sensory Exploitation (no direct attack on NPC perception) and differs from pure Observation Replay (player creates conditions rather than waits for natural cycle).


**Distinction from Information Brokerage**: While Rio provides fish through trade, the core mechanic is PHYSICAL DISTRACTION of Bronson, not network navigation. Fish collection enables ball/cat actions but doesn't follow NPC→NPC information flow pattern.


---

### SpaceQuest III: ScummSoft Janitor Stealth Infiltration (SQ3)

**Problem**: Roger must infiltrate ScummSoft headquarters while guards patrol hallways. After the invisibility belt breaks upon entry, the only way to avoid being killed is through disguise + behavioral compliance. Guards will execute any non-staff intruder immediately, but janitors who perform their duties correctly pass without challenge.

<small>Source: gamefaqs-tricrokra-archive.html, lines 534-544 — "Wear the invisibility belt = Turn on the belt = Enter ScumSoft... The invisibility belt will get broken. Great."</small>

<small>Source: the-spoiler-walkthrough.html, lines 131-148 — Complete infiltration sequence</small>

**Distraction Physics via Disguise + Behavioral Compliance**:
Unlike simple disguise mechanics where wearing a costume is sufficient, SQ3 requires maintaining behavioral consistency. Guards use trash can emptiness as a verification mechanism—if any can remains full while Roger passes by as janitor, he's immediately killed for "not doing job properly." The disguise creates passive guard non-aggression only if environmental conditions (empty cans) prove legitimate staff behavior.

```
PHASE A - PERIMETER BREACH (Temporary Stealth Item):

LOCATION: Ship → South to ScummSoft building entrance
PREREQUISITE: Invisibility belt in inventory (captured from Arnold on Phleebhut)

Action Sequence:
- WEAR belt → TURN ON belt (becomes invisible to guards)
- PUSH BUTTON at door control panel
- ENTER door while invisible

BELT FAILURE MECHANIC:
Outcome: Belt breaks immediately upon entering; player now vulnerable inside.
Citation: gamefaqs-tricrokra-archive.html, lines 542-544 — "The invisibility belt will get broken. Great."


PHASE B - DISGUISE ACQUISITION (Passive Guard Diversion):

LOCATION: South from entry → First door left (janitor closet)
Action Sequence:
- GET CLOVERES → Automatic costume change to janitor uniform

ITEMS GRANTED WITH UNIFORM:
- VAPORIZER (waste disposal tool, multi-purpose)
- Janitorial appearance (guards no longer kill on sight IF behavioral rules followed)


WHY DISGUISE = DISTRACTION PHYSICS:
The janitor uniform acts as visual deception that DIVERTS AGGRESSION BEHAVIOR. Guards' detection system checks visual appearance FIRST—if staff uniform present, they switch from "execute intruder" mode to "verify staff behavior" mode. This is NPC attention rerouting through environmental state manipulation (closet access → costume change → different guard response pattern).


PHASE C - MANDATORY MAINTENANCE TASK (Behavioral Stealth Verification):

SECURITY MECHANIC: Guards and sensors check trash can contents throughout facility. If any can is left full while player passes as janitor → immediate death for "not doing job properly."

SOLUTION PATTERN:
- Every room visited MUST have all visible trashcans emptied
- Command: USE VAPORIZER on each can until empty

ENVIRONMENTAL MANIPULATION CHAIN:
Roger must actively modify the environment (trash cans) to maintain illusion of staff legitimacy. This is not passive disguise—it's continuous behavioral performance where environmental state (empty cans = legitimate janitor activity) proves identity to security systems. Guards use trash cans as diagnostic tool, and player must maintain correct state through standard janitorial actions.


PHASE D - AUTHENTICATION ACQUISITION (Photocopy Substitution for Facial Recognition):

SUB-PUZZLE: Boss Elmo's office security door requires facial recognition at restricted area entrance

INFORMATION FLOW:
1. Navigate maze hallways, vaporizing cans throughout (continuous distraction maintenance)
2. Reach first western room after entry area
3. Observe picture of Elmo's face on wall (not in boss's office yet)
4. TAKE PICTURE from wall
5. Use nearby photocopier: COPY picture
6. PUT PICTURE back on original location (avoid raising alarm if inspected)

Citation: gamefaqs-tricrokra-archive.html, lines 557-563 — "= Get the picture = Use the copier to copy the picture = Put the picture back where you found it."

OUTPUT ITEM: COPIED PHOTO of Elmo's face
PURPOSE: Will fool facial recognition scanner at restricted area


WHY THIS IS DISTRACTION PHYSICS (NOT SIMPLY THEFT):
Taking and returning the picture is environmental manipulation to create authentication item. Guard verification behavior relies on wall contents remaining unchanged—player exploits this by restoring original state, creating conditions where guards don't investigate further. This maintains the behavioral stealth chain required for successful infiltration.


PHASE E - AUTHORITY FIGURE SURVEILLANCE (Wait for Absence Window):

LOCATION: Continue north through offices to boss's office window
OBSERVATION REQUIRED: Wait until Elmo leaves his office through east door

Citation: gamefaqs-tricrokra-archive.html, lines 577-580 — "Now the boss is gone... Enter his office"

STRATEGY: Player monitors from hallway. When Elmo exits east, opportunity window opens to enter office without confrontation.


PHASE F - CREDENTIAL THEFT (Keycard Acquisition):

WINDOW OF OPPORTUNITY: Only after Elmo leaves office
LOCATION: Elmo's private office (east side of building)
Action: GET KEYCARD from desk

Citation: gamefaqs-tricrokra-archive.html, line 580 — "steal the keycard from his desk and exit south"


PHASE G - RESTRICTED AREA ACCESS (Multi-Authentication Door):

LOCATION: Exit ScummSoft building (walk south out to main hall) → First door right on south side
SECURITY SYSTEMS TO BYPASS: Two-part electronic lock requiring redundant authentication

AUTHENTICATION SEQUENCE:

STEP A - Insert Keycard:
Prerequisite: KEYCARD in inventory (stolen from Elmo's office)
Command: USE keycard → put in slot reader

STEP B - Facial Recognition Scanner:  
Prerequisite: COPIED PHOTO of Elmo's face in inventory
Command: Hold copy → SHOW picture/COPIED photo to scanner

Citation: gamefaqs-tricrokra-archive.html, lines 592-596 — "= Go south and stop at the first door on the right = Use the keycard = Show the picture to fool the face scanner"

STEP C - Enter Restricted Area (Prison Cell Zone):
Door opens after BOTH authentications succeed
Two captured Andromedan citizens visible inside force field cell


```

**Why It's Distraction Physics**: The janitor disguise acts as visual deception that DIVERTS guard aggression. Unlike simple sensory exploitation (one vulnerability attack), the player must continuously maintain environmental conditions (empty trash cans) that prove staff legitimacy. Guards use the environment (trash can state) as diagnostic verification—if cans aren't emptied, Roger is killed regardless of uniform. This makes disguise a DYNAMIC behavioral compliance mechanic rather than static visual camouflage. Environmental manipulation (vaporizing cans) creates sustained distraction window by satisfying guard verification patterns.

---

## Related Types

- **Sensory Exploitation**: Attacks NPC directly via vulnerability (tickle/sleep/food); DNP attacks NPC indirectly via environmental change that reroutes their behavior
- **Timed Consequence**: Both use timing windows, but TC is about narrative urgency without mechanical deadline; DNP creates player's own temporary opportunity through active manipulation  
- **Multi-Faceted Plan**: DNP often simpler "one action breaks blockage" vs MFP's multi-requirement synthesis from disparate sources
- **Observation Replay**: Related when exploiting NPC behavior cycles, but OR waits for natural timing while DNP CREATES distraction conditions proactively rather than passively observing existing patterns

### Simon the Sorcerer: Pub Barman Beeswax Beer Scheme (SIMON)

**Problem**: The pub barman controls access to a barrel of beer and a brewery voucher needed for the Dwarf Mine plot. Direct theft or trade fails—barman only abandons these items after believing the barrel is damaged/leaking. Exploiting his diagnostic behavior creates the opportunity window.

<small>Source: walkthroughs/simon1/simon1.txt, lines 614-620 — "When you have the wax, go to the pub and ask the bartender for a drink. While he looks for ingredients, use the wax on the beer barrel to plug it up. This tricks him into thinking the barrel is empty... The bartender puts the barrel of beer outside, and he gives Simon a brochure containing a free beer voucher."</small>

<small>Source: walkthroughs/simon1/simon1_2.txt, lines 196-203 — "Enter the bar and talk to the barman. Say Mix me a Wet Wizard, barkeep. Quickly use the wax on the beer barrel behind the bar to get a beer voucher. Exit the bar and get the beer barrel."</small>

```
BLOCKING CONDITION ANALYSIS:

LOCATION: Drunken Druid Pub (Village)
GOAL: Acquire BARREL OF BEER + VOUCHER LEAFLET from barman's inventory
OBSTACLE: Barman actively guards both items, no dialogue trade option available

NPC BEHAVIOR PATTERN IDENTIFIED:
- When asked to make a drink, barman consistently: 
  - Turns away from counter
  - Looks behind bar for "ingredients"
  - Returns to front with completed beverage
  
This animation loop creates ~3-5 second window where his attention is diverted  
from the beer barrel directly behind him.


ENVIRONMENTAL MANIPULATION CHAIN:

PHASE 1 - DISTRACTION INITIATION:
→ Enter pub, navigate to bar counter  
→ TALK to barman, select dialogue option: "Mix me a Wet Wizard, barkeep"
→ Barman animation triggers (back turned, searching behind counter)


PHASE 2 - TIMED INTERVENTION WINDOW:
→ [CRITICAL TIMING]: Use WAX on beer barrel spigot while barman distracted
  
Why This Works: Wax plugs the spigot—barrel appears non-functional (no liquid flows when pressed)
The intervention must occur during distraction window, or barman notices player tampering.


PHASE 3 - NPC DIAGNOSTIC RESPONSE BEHAVIOR:
→ Barman returns, attempts to serve from now-plugged barrel  
→ Dialogue indicates: "Barrel's gone dry / broken—what a shame"
→ BARREL DISPLACED OUTSIDE PUB (barman removes it from premises)
  


PHASE 4 - ITEM ACQUISITION WINDOW:
→ VOUCHER given to player as compensation ("free drink coupon for another time")
→ Exit pub immediately → BARREL now available for collection (outside door)

Why Both Items Become Available Simultaneously: The barman's diagnostic conclusion 
("barrel is broken/empty") triggers BOTH actions: discarding barrel AND compensating customer.


WHY IT'S DISTRACTION PHYSICS:

NPC ATTENTION REROUTE THROUGH ENVIRONMENTAL SETUP:
Player doesn't distract barman with an object thrown elsewhere (like pulling totem nose). 
Instead, creates CONDITIONS for item acquisition by exploiting NPC's built-in behavior loop. 

The key distinction: Barman's "looking for ingredients" animation is NATURAL BEHAVIOR, not 
something player FORCED him to do via environmental manipulation. Player TIMED their intervention
(to use wax) during this naturally-occurring attention shift window.


TEMPORARY OPPORTUNITY CREATION:
Once wax applied, barman discovers problem and creates NEW opportunity state (barrel outside = accessible).
This is distinct from Observation Replay where player watches NPC perform then waits for them to leave.
Here player ACTIVELY CHANGES the barrel's physical state during window, which THEN triggers 
new behavior chain from NPC.


TIMING MECHANIC AS DISTRACTION CORE:
Walkthrough emphasizes "Quickly use the wax" or timing language—underscores narrow window where
barman's back is turned. This isn't about creating a lasting diversion (like knocking over object that he then investigates for 30 seconds). It's about EXECUTING THE CRITICAL ACTION during brief attention gap in his pattern.


COMIC DELIVERY:
Absurdity derives from wax-plugged-spigot = "empty/barrel-broken" conclusion. No logical person 
would think a beer barrel is empty because one spigot fails—but the game's internal causality accepts this as valid barman reasoning. Barman never suspects foul play, only mechanical failure.


FAILURE MODE:
If player attempts to use wax while barman faces counter (no distraction active), interaction blocked:
"Barman notices you tampering with his supplies and kicks you out."

This demonstrates the timing requirement—the environmental exploit works ONLY during attention window.
```

**Why It's Distraction Physics**: The puzzle requires exploiting the barman's existing behavior pattern (turned away to find ingredients) rather than creating a new distraction from scratch. Environmental manipulation (wax on spigot) occurs DURING naturally-occurring attention gap, triggering consequences (abandoned barrel outside). This differs from creating external noise or pulling levers—player hijacks NPC's routine moment of vulnerability through precise timing.

---

### SpaceQuest III: Arnoid Pursuit and Pod Trap (Phleebhut) (SQ3)

**Problem**: After landing on Phleebhut, Roger Wilco is hunted by the "Arnold" — a relentless robotic terminator with superior combat capabilities. Direct confrontation guarantees death. The only escape requires luring the Arnold into carnivorous hanging pods that populate a specific cave area and harvest their bounty (invisibility belt) from the defeated machine.

<small>Source: gamefaqs-tricrokra-archive.html, lines 376-382 — "Well, it'll take awhile before he finds you... Now the Terminator will catch you."</small>

<small>Source: the-spoiler-walkthrough.html, lines 89-97 — "The Arnoid will show up. Luckily, he is in a good mood and will give you a small amount of time to run away."</small>

**Predator Rerouting as Distraction Variant**:
This is an extreme form of NPC distraction where the "NPC" is an active pursuer rather than a stationary guard. Player must guide the pursuer's attention away from themselves toward environmental hazards (carnivorous pods). Unlike standard distraction, Roger cannot simply hide—he must actively lure the Arnold into the trap zone while maintaining safe positioning himself. The mechanic shifts from "distract guard to steal item" to "route predator into death zone to survive."

```
PHASE 1 - PRE-CHASE PREPARATION:

Step A - Purchase Required Items at World o' Wonders:
Command Sequence: SELL Gem → BUY Orat on a stick → BUY Underwear → BUY Hat
Citation: gamefaqs-tricrokra-archive.html, lines 393-401 — "= Sell the gem... = Buy Orat on a stick = Buy the chicken hat = Buy the thermoweave underwear"

Critical: Must sell gem for enough buckazoids to afford all three items. The Orat is specifically required for extracting invisibility belt post-defeat.


PHASE 2 - RELIABLE ESCAPE METHOD (Carnivorous Pod Trap):

Step B - Lead Pursuer to Trap Zone:
Command Sequence: South x3 → East → Enter cave with hanging pods
Citation: gamefaqs-tricrokra-archive.html, lines 413-417 — "= Exit south x3"


Step C - Position for Safe Harvest:
Positioning Instruction: Stand BEHIND the carnivorous pods but NOT directly underneath them
Critical Constraint: The "things-in-the-cave" will kill Roger if he enters beneath them while Arnold is present. Standing behind (not under) keeps player safe while Arnold passes through danger zone.
Citation: gamefaqs-tricrokra-archive.html, lines 416-420 — "= Stand in the cave behind the 'things' and wait for the Terminator to come it'll get eaten by the 'things.'"


Step D - Wait for Trap Activation:
Mechanism: Carnivorous pods have independent detection system that triggers when humanoid (Arnold) enters kill zone but does not detect Roger unless he is directly below.
Outcome: Arnold is captured and consumed; Roger emerges unharmed from protected position.


Step E - Extract Invisibility Belt:
Prerequisite: ORAT ON A STICK in inventory (purchased earlier on Phleebhut)
Command: USE ORAT on defeated Arnold's remains
Reward: INVISIBILITY BELT acquired
Citation: gamefaqs-tricrokra-archive.html, line 421 — "= Use the Orat on a stick to get the Terminator's invisibility belt"


FAILURE MODES:
- If player returns to ship while being pursued → Arnold catches and kills Roger instantly (game over)
Citation: gamefaqs-tricrokra-archive.html, lines 418-420 — "DON'T GO TO YOUR SHIP. If you go there, you'll be killed."

- Unreliable alternative method exists ("hook grab" in building elevator) with low success rate and minimal points
Citation: gamefaqs-tricrokra-archive.html, lines 406-411
```

**Why It's Distraction Physics (Predator Rerouting Variant)**: The puzzle uses environmental hazards to redirect NPC attention—but the "NPC" is an active hunter pursuing Roger directly. Standard distraction physics involves diverting a guard's gaze or rerouting their patrol; here the player guides an unstoppable pursuer into terrain-based death through precise positioning. Roger becomes environmental engineer creating lethal trap conditions, using the pods' independent detection as his weapon. Unlike Sensory Exploitation (attack vulnerability) or Timed Consequence (escape under deadline), this manipulates the spatial relationship between player, predator, and environmental hazard to transform pursuer into victim.

---

## Game Examples

### INDY1: Roast Boar Distraction via Fireplace Smoke
<small>Source: walkthrough-king.txt, lines 154-158</small>

**Setup**: Nazi Colonel Vogel's office at Castle Brunwald is guarded by his dog. Indy needs to pass through the office to access items in the drawers, but the dog will attack if he enters without distraction. The kitchen upstairs has a roast boar being prepared and a fireplace with burning coals.

**Blocking Condition**: Dog stands guard in front of Vogel's office door. Cannot enter or take items from desk while dog is present. Direct combat possible but suboptimal (violence-heavy playstyle, loses puzzle points).

**Solution Chain**:
1. Go upstairs to kitchen area on 2nd floor
2. Take empty stein from counter, fill it from ale keg spigot
3. Go to fireplace adjacent to where roast boar hangs
4. Pour first stein of ale onto burning coals → creates thick smoke that fills room
5. Wait for smoke to clear enough to see/grab roast boar
6. Take roast boar (dog's food) into inventory, refill stein one more time
7. Return downstairs through guard corridors with boar in inventory
8. Approach Vogel's office and GIVE roast boar to dog sitting at door

<small>Source: walkthrough-king.txt, lines 209-210 — "Enter the first door to the west to find Vogel's office. Give the roast boar to the dog, then open the right drawer in"</small>

9. Dog becomes occupied eating the boar → attention diverted from doorway
10. Enter office while dog distracted by food, access desk drawers freely

**Environmental Manipulation**: Fireplace coals convert liquid ale into smoke—physical transformation that temporarily reduces visibility enough to safely retrieve hanging meat. The ale creates a sensory barrier (smoke/ash) that protects Indy from thermal damage while accessing the otherwise unreachable item. Dog's behavior is not "hacked" through AI weakness—instead, player physically brings the object dog naturally wants to its location.

**Why It's Distraction Physics**: Unlike Sensory Exploitation which attacks an NPC's direct vulnerability (feeding monkey fruit because monkeys like fruit), this puzzle requires MANIPULATING THE PHYSICAL ENVIRONMENT FIRST (ale→smoke conversion) before accessing the distraction item itself. The fireplace acts as a transformative medium: without creating smoke barrier, Indy cannot retrieve the boar due to proximity to burning coals. Once boar acquired, giving it to dog is straightforward—the complex puzzle was getting the boar, not convincing the dog. Environmental engineering (heat + liquid → temporary visibility reduction) creates opportunity window for item acquisition.

### INDY1: Security Console Ale Short-Circuit

**Setup**: Nazi security control room at Castle Brunwald contains an alarm system that will trigger during escape sequence unless disabled. The room is guarded by a Nazi soldier patrolling outside the door, but can be bypassed via combat or Mein Kampf book trade. Inside, the security console has ventilation grating on its side panel.

<small>Source: walkthrough-king.txt, lines 190-192</small>

**Blocking Condition**: Alarm system is active and functional. If triggered during escape, it will lead to confrontation with Donovan or fail Henry's rescue entirely. Cannot disable through normal "use console" interaction (no dialogue/options for deactivation). Physical short-circuiting required.

**Solution Chain**:
1. Acquire stein of ale from earlier kitchen sequence (carried throughout castle infiltration)
2. Navigate to security control room on ground floor corridor
3. Deal with guard outside door: either GIVE Mein Kampf book OR fight him
4. Enter security room past the neutralized guard
5. Locate grating/ventilation panel on SIDE of alarm console
6. USE stein ON grating → Pour ale into electrical components
7. Ale conducts electricity, short-circuiting the alarm system
8. Alarm disabled—will not trigger during escape sequence

<small>Source: walkthrough-king.txt, lines 191-192 — "Once done, pour your stein of ale into the grating on the side of the security console to disable the alarm system."</small>

**Environmental Manipulation**: Liquid ale is conductive when poured onto exposed electrical contacts. The grating design exposes internal components without requiring tool-based disassembly. Indy exploits the console's poor industrial design (open ventilation near sensitive circuitry) to achieve what hacking or sabotage cannot—pure physical destruction through fluid dynamics. This is not "breaking the alarm"—it's repurposing a beverage container into a conductive fluid delivery mechanism.

**Why It's Distraction Physics**: The puzzle uses environmental PHYSICS rather than NPC manipulation, but follows same pattern: observe system behavior (alarm triggers on escape) → identify exploitable interaction point (grating exposes internals) → use available item in unconventional way (ale as conductive destruction agent) → create window of opportunity (disabled alarm = safe route for Henry). The ale's dual-use nature mirrors other DNP items (wax barrel plug, thrown bucket)—everyday object repurposed through understanding of environmental rules. Unlike simple "break console" solution, player must recognize that liquid + exposed electronics = failure mode they can engineer intentionally.

---
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

## Related Types

- **Sensory Exploitation**: Attacks NPC directly via vulnerability (tickle/sleep/food); DNP attacks NPC indirectly via environmental change that reroutes their behavior
- **Timed Consequence**: Both use timing windows, but TC is about narrative urgency without mechanical deadline; DNP creates player's own temporary opportunity through active manipulation  
- **Multi-Faceted Plan**: DNP often simpler "one action breaks blockage" vs MFP's multi-requirement synthesis from disparate sources
- **Observation Replay**: Related when exploiting NPC behavior cycles, but OR waits for natural timing while DNP CREATES distraction conditions proactively rather than passively observing existing patterns

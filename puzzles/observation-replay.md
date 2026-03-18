# Observation Replay

**Information Architecture**: Game presents a procedural sequence once, under observation-only conditions (guard present, locked door, NPC interference). Player cannot interact during the demonstration.

**Player Action Pattern**: Watch and memorize the exact sequence of actions or values. Return when guard/interference is absent. Replay sequence precisely to unlock new access.

**Core Mechanic**: Single viewing + exact reproduction = reward. Information is presented in correct order once; puzzle difficulty emerges from memory load plus opportunity management.

**Variations**:
- Numeric sequences (safe combinations, door codes)
- Action sequences (push/pull patterns, dance moves)
- Visual patterns (light arrangements, color orders)

**Adventure Game Implementation**:
- NPC performs action while blocking player interaction
- Cutscene triggers once, cannot be rewound
- Player must note sequence through observation alone
- Return later when conditions allow replication
- Standard actions (USE TALK LOOK) applied in memorized order

**Example Structure**:

```
Player needs: Access to [LOCKED_LOCATION]

Discovery Phase:
→ Approach [LOC] and observe [NPC] perform exact sequence:
  "Watch as guard opens safe: PULL-15, PUSH-3, PULL-27"
→ Blocked from interacting ("Can't touch while watched!")

Return Phase:
→ Create opportunity (distract NPC, wait for departure)
→ Apply memorized sequence to [OBJECT] with same standard actions:
  USE safe → PULL handle 15 times...
→ Reward unlocked
```

**King's Quest VI Parallel**: None identified in walkthrough.

**Monkey Island Examples**:
- **Safe Combination**: Storekeeper opens safe while player watches (notes combination). Later, when storekeeper leaves shop unsupervised after going to find Sword Master, player returns and enters exact PULL/PUSH sequence he observed.

### Grim Fandango: Year Three - Meche's Vault Safe Combination Lock (GF)

**Problem**: Manny must open the vault safe where Meche is hiding from Domino. The safe has a complex combination lock with four tumblers that must be precisely aligned before pulling the opening wheel. Critical detail: Pulling too early causes tumblers to spin, requiring complete reset.

<small>Source: the-spoiler_walkthrough.html, lines 723-760 — Safe combination Q&A and execution details</small>

```
OBSERVATION PHASE - Learning Combination Lock Mechanics:
→ Initial vault door approach → "Can't just open; needs tumblers aligned"
→ Examine wheel interface → Four tumblers visible through slot window
→ Observation: Tumbler position relative to door jamb indicates alignment


REPLAY EXECUTION CHAIN (Must be performed in exact order):

STEP 1A - Align First Tumbler (TOP tumbler):
Action: Rotate WHEEL RIGHT (clockwise) until all four tumblers begin spinning together
Critical: Stop wheel exactly when TOPMOST tumbler aligns with door jamb gap
Verification: Step away from wheel, look at it → Manny's dialogue confirms "they're lined up" or indicates misalignment


STEP 1B - Lock First Tumbler in Place:
Action: Use SCYTHE on spinning tumblers AFTER correct alignment achieved
Critical Timing: Must block BEFORE pulling handle; handles spinning if pulled prematurely


STEP 2 - Align Second Tumbler (SECOND from top):
Action: Rotate WHEEL LEFT (counter-clockwise) until second tumbler aligns with jamb gap
Constraint: Cannot overshoot; if passed alignment point, must restart entire sequence from Step 1


STEP 3 - Align Third Tumbler (THIRD from top):  
Action: Rotate WHEEL RIGHT again until third tumbler aligned
Same constraints apply: Precision stopping required; no room for error


STEP 4 - Align Fourth Tumbler (BOTTOM tumbler):
Action: Rotate WHELL LEFT one final time until bottom tumbler matches jamb gap position
Final check: All four tumblers should show gaps aligned with door jamb in single column


STEP 5 - Open Vault Door:
Prerequisite: SCYTHE already used on tumblers to lock their positions (Step 1B)
Action: PULL HANDLE
Result: If all alignment correct + tumblers locked → Vault opens, Manny enters

FAILURE MECHANICS:
If PULL HANDLE before SCYTHE locks tumblers → tumblers spin wildly, door won't open. Must restart entire sequence from zero alignment.


WHY IT'S OBSERVATION REPLAY:

MEMORIZED SEQUENCE REQUIRED:
The RIGHT-LEFT-RIGHT-LEFT rotation pattern must be remembered and reproduced precisely. Game provides no on-screen checklist—player either recalls the alternating pattern or fails repeatedly until they notice the alternating direction requirement through observation of tumbler behavior.

EXACT TIMING CRITICAL:
Each tumbler must stop at exact jamb gap alignment. This is not trial-and-error but PATTERN RECOGNITION from observing how tumblers move as wheel rotates. The "aha" moment comes from watching movement patterns, then reproducing them.

NOIR THEME - CLASSIC SAFE-CRACKING TROPES:
Combination locks are quintessential noir elements—precision timing, mechanical understanding of locking mechanisms, the tension between success (opening smooth) and failure (tumblers spin). The dialogue feedback ("Manny tells you if they're lined up") mimics films where safecrackers rely on auditory/visual cues.

DISTINCTION FROM PATTERN LEARNING:
Unlike Pattern Learning, there's no Domain A → Domain B transfer. The vault safe is a single-instance puzzle where observation of THIS SPECIFIC MECHANISM enables success at THIS SPECIFIC LOCATION. No generalized tumbler-system learned for later application elsewhere.
```

---

### Beneath a Steel Sky: Power Plant Switch Sequence (BAS)

**Problem**: The control panel behind barred gates requires two switches positioned correctly before re-energizing the system, but the correct configuration cannot be determined through examination alone—player must create an opportunity to observe the mechanism working.

<small>Source: 5_steamah_walkthrough.html, lines 382-384 — "Place the PUTTY on the LIGHT SOCKET and turn the main SWITCH back on. This results in a short circuit, opening the left CONTROL PANEL. Turn the main SWITCH back off. Notice two SWITCHes (levers) within the left CONTROL PANEL? Get the left SWITCH levered up and the right SWITCH levered down."</small>

**Discovery Phase**:
```
Location: Power Plant (Middle Level)

PHASE 1 - Create Observation Opportunity:
1. Arrive at power plant with WRENCH and PUTTY (from Factory storeroom)
2. Use WRENCH on two BUTTONS below steam pipe to unlock them
3. Have Joey press right button while player presses left simultaneously
4. Steam valve overloads, old worker leaves room
5. Turn OFF main SWITCH above control panel → safe to examine

PHASE 2 - Force System State Change (Observation Trigger):
1. Remove LIGHT BULB from socket when power is off
2. Replace with PUTTY (conductive material creates short circuit)
3. Turn main SWITCH back ON → bars blow open due to electrical surge
4. TURN POWER OFF immediately (now safe to inspect exposed panel)

PHASE 3 - Observe Required Configuration:
Two switches visible inside opened left control panel:
- Left switch must be UP
- Right switch must be DOWN

PHASE 4 - Reproduce Correct Configuration:
1. Set LEFT SWITCH levered UP
2. Set RIGHT SWITCH levered DOWN  
3. Turn main power back ON
→ Elevator access granted to middle level
```

<small>Source: 1_preterhuman_mitch_shaw_walkthrough.html, lines 160-174 — Detailed switch manipulation and power cycling sequence</small>

**Why It's This Type**: Player cannot know the correct switch configuration through direct interaction or hints. The puzzle requires creating conditions (short circuit with putty) that cause the game to *demonstrate* the working state (bars open when switches are positioned correctly), then reproducing that exact state later once the panel is accessible.

**Note on 16-bit SCUMM Engine Quirk**: This puzzle leverages Revolution Software's SCUMM-derived engine mechanics—the short circuit isn't realistic behavior but exploits how voltage/short detection logic triggers cutscene events regardless of actual electrical physics. Common in 1990s point-and-click adventures where object interaction rules simplify real-world causality.

---

### Broken Sword: Shadow of the Templars - Stealing Towel and Wire (Chapter 2)

**Problem**: Must steal two items from guarded locations—towel while Doyle takes a drink, wire while monk sneezes. Both require precise timing based on observed NPC action patterns.

<small>Source: broken-sword-1/4_agh_peter_christiansen_walkthrough.html, lines 257-260</small>
<small>Source: broken-sword-1/4_agh_peter_christiansen_walkthrough.html, line 269</small>
<small>Source: broken-sword-1/1_walkthroughking_broken_sword.html, lines 97, 100</small>

**Sub-Puzzle A - Towel Theft**:
```
OBSERVATION PHASE:
→ Locate Doyle's office with towel hanging near desk
→ Watch NPC pattern: Doyle periodically walks to desk corner, takes sip from glass
→ Identify exact timing window: towel accessible ONLY during drinking animation

REPLAY PHASE:
→ Wait for next sip cycle (no interaction possible outside window)
→ At precise moment when mouth reaches glass → Take towel action executes
→ Towel added to inventory; Doyle unaware due to animation-blocking state
```

**Sub-Puzzle B - Wire Theft**:  
```
OBSERVATION PHASE:
→ Locate monk holding wire in side room/altar area
→ Watch NPC pattern: Monk performs repetitive prayer gesture, then sneezes at interval
→ Identify exact timing window: wire drops to floor during sneeze animation

REPLAY PHASE:  
→ Wait for next sneeze cycle from doorway (cannot approach without detection)
→ At precise moment of sneeze → Grab wire action executes before monk recovers
→ Wire added to inventory; used later for Plaster Casting System puzzle
```

**Why It's This Type**: Classic Observation Replay structure—player watches NPC perform blocking action once, memorizes exact timing window created by secondary animation (drinking, sneezing), then replays identical sequence to steal item. NOT Pattern Learning because no system rules transfer to new domains—each theft is unique one-off timing puzzle. NOT Distraction Physics because player doesn't manipulate environment; they exploit existing NPC behavior loop without modification.

---

### Broken Sword II: The Smoking Mirror - London Underground Signal Switch (Chapter 5)

**Problem**: Nico must board the train at Thames Dock by switching the signal light to red, but requires obtaining a weight card from a scale that needs coins, and coins are only accessible via hairclip trick on vending machine. The sequence of actions observed during exploration must be reproduced in precise order.

<small>Source: 2_the_spoiler_tom_hayes_walkthrough.html, lines 274-281 — "Walk over to the vending machine. Use the hairclip with the coin slot. Get the coin from the coin reject slot."</small>

<small>Source: 4_kasagaming_walkthrough.html, lines 370-377 — "Use the hairclip on the coin slot of the chocolate machine, then pick up the coin from the coin reject slot... Use the coin on the weighing machine and receive a weight card."</small>

```
OBSERVATION / EXPLORATION PHASE:
→ Enter London Underground Station platform area
→ Observe vending machine with locked items (chocolate, coin) behind slots
→ Notice handbag in inventory contains hairclip
→ Try direct interaction → "Can't open without coin" feedback
  
REPLAY EXECUTION CHAIN:
Step 1 → Use hairclip on coin slot of chocolate vending machine
         - Observed mechanism: clip jams/reverses slot logic
Step 2 → Collect ejected coin from reject slot  
         - Timing: immediate action after insertion, no delay

Step 3 → Approach weighing machine with coin in hand
         - Note display: "Insert penny for card" prompt visible

Step 4 → Use coin on scale → receive weight card automatically
         - Exchange is automatic; no additional timing window

Step 5 → Locate cupboard next to weighing machine  
Step 6 → Examine crack near cupboard mechanism (requires dagger)
Step 7 → Use ancient dagger on cupboard lock → disables obstruction
Step 8 → Use weight card on access crack → activates door mechanism

Step 9 → Press red signal button → switches train lights to STOP signal
         - Train now accessible for boarding

Step 10 → Board train → cutscene triggers, arrive at Thames Dock
```

**Why It's This Type**: While primarily a sequential item use chain, the core mechanic is observing environmental cause→effect relationships then replaying them: hairclip→coin ejection, coin→card exchange, card+dagger→access. Player explores station and observes each mechanism's requirements independently, then replays exact sequences in correct order. The "observation" is reading environmental UI hints (slot prompts, crack visibility); the "replay" is executing the discovered action chains precisely as observed.

**Distinction from Meta-Puzzle Construction**: Each step produces output for next step (coin→card→access), but player DISCOVERS this chain through exploration and observation of separate mechanisms, then REPLAYS it once fully understood. There's no "trial sequence that demonstrates solution" element—just cause-effect relationships learned individually.

---

### Broken Sword II: The Smoking Mirror - Thames Dock Guard Evasion (Chapter 5)

**Problem**: Nico must steal into the ship cabin where Professor Oubier holds the Jaguar Stone, but a guard patrols continuously with Pablo nearby. Success requires timing movement to exact patrol cycle—any deviation results in capture/death. The sequence must be memorized from initial observation and reproduced precisely.

<small>Source: 2_the_spoiler_tom_hayes_walkthrough.html, lines 309-315 — "Click on the other crate on the left, so Nico can hide closer to the ship... Wait until the guard starts talking to Pablo, and then climb down the ladder..."</small>

<small>Source: 4_kasagaming_walkthrough.html, lines 400-404 — Move to second crate after guard passes, move onto boat (ditto) and climb the ladder..."</small>

```
OBSERVATION PHASE - PATROL CYCLE ANALYSIS:
→ Enter Thames Dock area, observe guard movement pattern
→ Guard patrols back along dockside route at fixed intervals  
→ Pablo stands stationary near ship ladder; occasional dialogue with guard
→ Ship cabin accessible only during guard attention window on Pablo

GUARD BEHAVIOR LOOPS IDENTIFIED:
Loop A → Patrol approaches from left → reaches Nico's position → continues right
Loop B → Reaches Pablo after ~10 seconds → engages in conversation (~5 seconds)
Loop C → Returns to patrol loop; ship cabin exposed during entire Loop B window

REPLAY EXECUTION - TIMING SEQUENCE:
Step 1 → Wait for guard patrol → move to SECOND crate (after guard passes first)
         <small>Source: kasagaming_walkthrough, line 402 — "Move to the second crate after the guard has passed"</small>
         
Step 2 → Continue movement ONTO SHIP as patrol clears area
Step 3 → CLIMB LADDER before patrol completes cycle return

CRITICAL TIMING WINDOW:
Step 4 → Wait for guard to reach Pablo and START TALKING  
         <small>Source: tom_hayes_walkthrough, line 312 — "Wait until the guard starts talking to Pablo"</small>
         
Step 5 → CLIMB DOWN LADDER (immediately as conversation begins)
Step 6 → OPEN CUPBOARD door
Step 7 → CLIMB BACK UP LADDER (guard now faces away, occupied with Pablo)

COMPLETION SEQUENCE:
Step 8 → Guard enters cupboard investigating → climb down, close cupboard
Step 9 → Grab mop, use on cupboard door to stick it open/slow guard discovery  
Step 10 → Look through porthole as cutscene triggers (Oubier/Karzac confrontation)

Step 11 → Enter cabin automatically during scene break
         → Check Oubier → he's still alive
         → Grab Jaguar Stone immediately
         → Karzac attacks → use ancient dagger to escape
```

**Why It's This Type**: Player observes guard patrol pattern, identifying that guard+Pablo conversation creates temporary vulnerability window. Entire sequence (climb down, open cupboard, climb back up, close behind guard) must reproduce exact timing observed during initial exploration. The "single viewing" is watching guard behavior; the "reproduce exactly" is executing the 4-action sequence during correct patrol cycle. Multiple saves/tries needed if timing fails—but successful run matches observed opportunity window precisely.

**Distinction from Distraction Physics**: Player doesn't CREATE distraction; they EXPLOIT existing NPC routine. Guard-Pablo dialogue happens automatically in game loop—Nico must TIME her actions to it, not trigger it. DNP would involve "pull lever to make guard investigate noise" whereas this is "wait for guard to naturally talk to Pablo."

---

### Syberia: Momo's Dam and Oar Sequence (Valadilene, SYB)

**Problem**: To access the secret mammoth cave, player must open a dam that blocks the river path. The lever controlling the dam is broken when first attempted. Player must observe Momo (the automaton guide)'s movement pattern, then replicate key actions through timed interactions with Momo as intermediary.

<small>Source: gamefaqs_thayes_syberia.txt, lines 360-371 — "ask Momo to Help open the dam. He'll try, but the lever will break off. Get the lever... Run right and ask him to Help get the oar. After Momo gets the oar, run right and ask him to Help open the dam."</small>

```
OBSERVATION PHASE (Momo's Behavior Pattern):

Step 1 → Follow long forest path after Voralberg house attic sequence
         - Momo walks ahead as visible guide through secret route
         
Step 2 → Reach dam control post with large lever mechanism
         - Attempt to USE handle directly on dam → Lever BREAKS OFF
         
Step 3 → Receive BROKEN LEVER item in inventory (damaged state recorded)
         - Dam remains closed, path blocked
   
Step 4 → Dialogue option "Help" appears when talking to Momo
         - Player learns Momo CAN interact with environment independently


REPETITION REQUIRED SEQUENCE (Exact Action Order):

CRITICAL DISCOVERY:
→ Dam lever physically broke off—human hands too weak/damaged mechanism
→ Momo is automaton with superior strength but no independent agency trigger
→ "Help" dialogue must be used in SPECIFIC CONTEXT to activate Momo's assistance


EXECUTION SEQUENCE (must follow exact order):

Step 1 → Collect broken lever from ground after first failed attempt
         <small>Source: gamefaqs_thayes_syberia.txt, line 364 — "Get the lever"</small>
         
Step 2 → Navigate DOWN path to abandoned boat location
         - Dam is uphill; boat with oar is downstream along riverbed

Step 3 → Attempt to USE broken lever on boat's stuck oar
         <small>Note: First player tries alone—mechanically fails</small>
         
Step 4 → Return to Momo (automaton reappears at boat location)
         
Step 5 → Select "Help" dialogue targeting the OAR retrieval
         <small>Source: line 367-368 — "ask him to Help get the oar"</small>
         - CRITICAL: Context must be "oar stuck in boat" not general help request
         
Step 6 → Momo's automaton animation triggers: Pulls oar free with mechanical strength
         - Player observes exact action sequence (Momo grips oar, pulls smoothly)
         - OAR now loose, retrievable by player

Step 7 → Collect OAR from boat (inventory item acquired)
         
Step 8 → Navigate UPSTREAM back to dam location (retracing path)
         
Step 9 → Select "Help" dialogue targeting DAM lever again
         <small>Source: line 369 — "ask him to Help open the dam"</strong></small>
         - Context now is "dam won't open with broken lever"
         
Step 10 → Momo's animation triggers second time: Uses superior strength to force dam lever open
          - Dam gates swing open, river flow unblocked
          
Step 11 → Follow newly opened path upstream into mammoth cave entrance


WHY IT'S OBSERVATION REPLAY (Not Pattern Learning):

SINGLE-SEQUENCE MEMORIZATION:
Player does not learn a general SYSTEM to apply across multiple targets. Instead, discovers that Momo can be "helped" with specific tasks in a SPECIFIC ORDER:
1. Get broken lever → break happens
2. Go to boat, ask help on OAR first (not dam)
3. Collect oar → return upstream  
4. Ask help on DAM second (after oar task completed)

The puzzle is NOT "Momo can lift heavy things" generalized rule—it's EXACT SEQUENCE: broken lever attempt creates item, downstream oar retrieval must complete before upstream dam opening succeeds. Order matters because game state tracks Momo's "help availability" through this specific sequence chain.


TIMING/CONTEXT DEPENDENCY:
Player cannot simply "ask for help twice." The "Help" dialogue option appears ONLY when player is at target location with appropriate context:
- At boat = OAR help available  
- At dam AFTER oar retrieved = DAM help available

This creates observation-replay structure where player discovers opportunity windows through initial failure (broken lever), then reproduces the correct sequence of HELP REQUESTS in discovered order.


SYBERIA AUTOMATON THEME IMPLEMENTATION:
Unlike BAS's guard patrol timing, SYB uses Momo as a MECHANICAL intermediary that requires proper input sequencing. The automaton isn't teaching general principles—it's responding to specific command sequences. Player "observes" through trial (broken lever reveals problem) then "replays" correct interaction order with Momo assistant.
```

---

### Gabriel Knight 1: Snake Scale Observation - Face Removal Sequence (GK1)

**Setup**: After being attacked by a python in the Voodoo Museum, Gabriel returns to his bookstore looking sick. Grace removes something from his face and places it in her ashtray. The player must observe this sequence during a cutscene, then reproduce specific actions when full control returns—using tweezers to retrieve a tiny snake scale that provides critical evidence linking the museum python to the crime scene murders.

<small>Source: justadventure_walkthrough.html, lines 942-950 — "As Gabriel enters the bookstore, Grace remarks on how 'green' he looks and notices something sparkling on his face. (i) Watch CAREFULLY what happens next! (ii) She removes something from Gabriel's face …….. (iii) …………... and puts the small item into the ashtray on her desk. From inventory, use the Magnifying Glass to enlarge the small item in the ashtray – It is a snake scale from the python that attacked Gabriel in the Voodoo Museum. [+ 1 point] Since it is so fragile, from inventory, use the Tweezers to pick up the Museum Snake Scale. [+ 1 point]"</small>

<small>Source: justadventure_walkthrough.html, lines 948-950 — "In inventory, compare the Museum Snake Scale with the Lake Snake Scale you picked up at the crime scene. See the 2 Snake Scales side by side in inventory – They are DEFINITELY from the SAME snake! [+ 2 points]"</small>

**Single Viewing Phase (Cutscene - No Control)**:
- Player watches Grace observe something on Gabriel's face during dialogue sequence
- She removes an invisible-to-inventory item with specific hand motion
- Places it in ashtray on her desk before player regains control
- Player has NO opportunity to intervene during this sequence

**Reproduction Phase (Full Control Restored)**:
1. Use magnifying glass on ashtray → reveals tiny snake scale was left behind [+ 1 point]
2. Use tweezers to pick up fragile Museum Snake Scale from ashtray [+ 1 point]
3. Compare with Lake Snake Scale from earlier crime scene in inventory
4. Discovery: Both scales are from the SAME snake species [+ 2 points]
5. Critical evidence chain complete: Python attack at museum directly connected to murders

**Why It's Observation Replay (Not Truth Revelation)**:
- The scale existed but was effectively invisible until player WATCHED where Grace placed it during the cutscene
- Without observing the sequence, player would never know to examine the ashtray specifically—too many other interactions available
- Actions must be reproduced in exact order: magnifying glass first (reveals item), then tweezers for pickup
- The discovery (scales match) only possible because player observed AND replayed the removal location

**Distinction from Pattern Learning**: Player doesn't learn a SYSTEM with multiple applications. They observe ONE specific sequence with ONE required reproduction. Grace's action is not part of a reusable mechanic—it's a narrative event that must be witnessed to enable later solution.

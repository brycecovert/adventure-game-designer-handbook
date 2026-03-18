# Corporate Espionage / Multi-Layer Infiltration Puzzle

**Information Architecture**: Player must bypass multiple security systems, each requiring different approach strategies. Access control is layered (perimeter → interior → restricted zones), and requires gathering authentication items (keycard, disguise, visual credentials) from different locations within facility. Security personnel actively patrol interior spaces with conditional response behaviors.

**Player Action Pattern**:
1. Breach perimeter using temporary concealment/stealth item
2. Acquire uniform/disguise from accessible storage
3. Perform mandatory maintenance tasks to avoid suspicion during patrols
4. Observe authority figure patterns to identify absence windows
5. Steal authentication credentials during vulnerability window
6. Bypass final electronic door controls with collected items

**Core Mechanic**: Multiple independent security barriers exist within a single facility, requiring the player to adapt behavior based on location context—steath for entry, disguise and maintenance for interior patrols, opportunistic theft for credentials, technical authentication for final barrier.

## Variations

| Variation | Security Layers | Player Adaptation Required | Example |
|-----------|-----------------|---------------------------|---------|
| **Disguise + Maintenance** | Visual ID check + behavioral monitoring | Must perform role actions correctly | SQ3 janitor infiltration |
| **Pure Stealth** | Active pursers, sensors | Avoid detection entirely | Classic stealth games |
| **Credential Stack** | Multiple door types requiring cards/keycodes | Collect all credentials in any order | Some sci-fi adventures |

---

## Game Examples

### SpaceQuest III: ScummSoft Headquarters Infiltration (Pestulon) (SQ3)

**Problem**: Roger reaches Pestulon where ScummSoft is holding two Andromeda citizens captive behind an "impenetrable force field." Infiltrating the company headquarters requires bypassing guards, security doors, and eventually confronting corporate boss Elmo. Security personnel patrol hallways and will kill intruders unless disguised as staff.

<small>Source: gamefaqs-tricrokra-archive.html, lines 534-539 — "Wear the invisibility belt = Turn on the belt = Enter ScumSoft"</small>

<small>Source: the-spoiler-walkthrough.html, lines 131-148 — Complete infiltration sequence</small>

```
LAYER 1 - PERIMETER BREACH (Invisibility Belt):

PREREQUISITE: INVISIBILITY BELT in inventory (captured from Arnold on Phleebhut)
LOCATION: Ship → South to ScummSoft building entrance

Action Sequence:
- WEAR belt → TURN ON belt (become invisible to guards)
- PUSH BUTTON at door control panel
- ENTER door while invisible

BELT FAILURE MECHANIC:
Citation: gamefaqs-tricrokra-archive.html, lines 542-544 — "The invisibility belt will get broken. Great."
Outcome: Belt breaks immediately upon entering; player now vulnerable inside and must acquire disguise quickly.


PHASE A - DISGUISE ACQUISITION (Becoming Staff):

LOCATION: South from entry → First door left (janitor closet)
Action Sequence:
- GET CLOVERES → Automatic costume change to janitor uniform

ITEMS GRANTED WITH UNIFORM:
- VAPORIZER (waste disposal tool, multi-purpose)
- Janitorial appearance (guards no longer kill on sight)


PHASE B - MANDATORY MAINTENANCE TASK (Behavioral Stealth):

SECURITY MECHANIC: Guards and sensors check trash can contents throughout facility. If any can is left full while player passes as janitor → immediate death for "not doing job properly."

SOLUTION PATTERN:
- Every room visited must have all visible trashcans emptied
- Command: USE VAPORIZER on each can until empty


LAYER 2 - AUTHENTICATION ACQUISITION (Photocopy Substitution):

SUB-PUZZLE: Boss Elmo's office security door requires facial recognition

INFORMATION FLOW:
1. Navigate maze hallways, vaporizing cans throughout
2. Reach first western room after entry area
3. Observe picture of Elmo's face on wall (not in boss's office yet)
4. TAKE PICTURE from wall
5. Use nearby photocopier: COPY picture
6. PUT PICTURE back on original location (avoid raising alarm if inspected)

Citation: gamefaqs-tricrokra-archive.html, lines 557-563 — "= Get the picture = Use the copier to copy the picture = Put the picture back where you found it."

OUTPUT ITEM: COPIED PHOTO of Elmo's face
PURPOSE: Will fool facial recognition scanner at restricted area


LAYER 3 - AUTHORITY FIGURE SURVEILLANCE (Wait for Absence):

LOCATION: Continue north through offices to boss's office window
OBSERVATION REQUIRED: Wait until Elmo leaves his office through east door

Citation: gamefaqs-tricrokra-archive.html, lines 577-580 — "Now the boss is gone... Enter his office"

STRATEGY: Player monitors from hallway. When Elmo exits east, opportunity window opens to enter office without confrontation.


LAYER 4 - CREDENTIAL THEFT (Keycard Acquisition):

WINDOW OF OPPORTUNITY: Only after Elmo leaves office
LOCATION: Elmo's private office (east side of building)
Action: GET KEYCARD from desk

Citation: gamefaqs-tricrokra-archive.html, line 580 — "steal the keycard from his desk and exit south"


LAYER 5 - RESTRICTED AREA ACCESS (Multi-Authentication Door):

LOCATION: Exit ScummSoft building (walk south out to main hall) → First door right on south side
SECURITY SYSTEMS TO BYPASS: Two-part electronic lock

AUTHENTICATION SEQUENCE:

STEP A - Insert Keycard
Prerequisite: KEYCARD in inventory (stolen from Elmo's office)
Command: USE keycard → put in slot reader


STEP B - Facial Recognition Scanner  
Prerequisite: COPIED PHOTO of Elmo's face in inventory
Command: Hold copy → SHOW picture/COPIED photo to scanner

Citation: gamefaqs-tricrokra-archive.html, lines 592-596 — "= Go south and stop at the first door on the right = Use the keycard = Show the picture to fool the face scanner"


STEP C - Enter Restricted Area (Prison Cell Zone)
Door opens after BOTH authentications succeed
Two captured Andromedan citizens visible inside force field cell



LAYER 6 - CAPTIVE RESCUE:

LOCATION: Inside restricted room with prison cells
ACTION SEQUENCE:
- PRESS BUTTON at wall panel → Creates bridge to cells
- Walk to center platform
- USE VAPORIZER on each captive (dissolves their energy field restraints)

Citation: gamefaqs-tricrokra-archive.html, lines 597-601 — "= TYPE PRESS BUTTON to create a bridge = Go to the center = Use the vaporizer to free Mark and Scott"


LAYER 7 - FINAL CONFRONTATION SEQUENCE:

TRIGGER MECHANIC: After freeing captives, wait for Elmo to return. He challenges Roger to combat.
COMBAT PHASES: Two sequential encounters (robot boxing match → space battle)

Citation: gamefaqs-tricrokra-archive.html, lines 603-610 — "wait for the boss to pop up and he challenges you to a fight... For the space battle goes..."


```

**Why It's Multi-Layer Infiltration (Distinct from Simple Sensory Exploitation)**:
This puzzle contains multiple sub-puzzle types in sequence:
1. **Sensory Exploitation**: Invisibility belt fools guard visual detection (but breaks)
2. **Disguise Mechanic**: Janitor uniform provides social camouflage
3. **Conditional Behavior Enforcement**: Janitor MUST empty cans—behavioral role play, not just wearing clothes
4. **Meta-Construction**: Picture copied then keycard stolen to combine at final door
5. **Timed Opportunity Window**: Stealing keycard requires Elmo's absence

Unlike pure sensory exploitation (one sense vulnerability), this is a multi-barrier infiltration where each layer requires different solutions from different mechanics. The challenge is managing all sub-puzzles in correct sequence: belt→disguise→copy picture→wait for boss→steal card→escape building→combine authentications→rescue captives.

**Key Distinction from Information Brokerage**: IB gathers items through NPC trade chains (A wants X, give Y to A, get Z). Here, no social exchange exists—purely mechanical barriers requiring collected items. The "intelligence" gathering (copying picture) is environmental observation, not NPC negotiation.


**Comparison to Multi-Faceted Plan**: MFP gathers parallel requirements from different NPC dialogues/situations. This infiltration has SEQUENTIAL dependencies: cannot copy picture before obtaining janitor access; cannot steal keycard before boss leaves office; vaporizing cans happens continuously during passage, not as discrete "gather this item" objective.


**Security Design Pattern Analysis**:
- **Redundant Authentication**: Final door requires BOTH card AND face scan—even stealing Elmo's identity isn't enough without his physical card
- **Behavioral Enforcement**: Not just wearing disguise—must perform janitorial duties correctly or guards recognize fraud
- **Temporal Windows**: Boss absence creates single opportunity for credential theft

---

### Quest for Glory III: Thief Espionage Routes (QFG3)

**Setup**: In QFG3, the Thief class has unique infiltration mechanics available throughout the war/siege narrative. Unlike the Fighter's diplomatic routes or Wizard's magical solutions, the Thief can steal critical items through stealth-based penetration of enemy territory at night. These are parallel to—rather than replacements for—the main diplomatic quest lines.

<small>Source: qfg3-gamefaqs-cyricz.txt, lines 2963-2970 — "Wait until nighttime and return to the Laibon's hut... Go outside the hut and go back inside. You're supposed to climb in through a crack in the wall."</small>

<small>Source: qfg3-gamefaqs-cyricz.txt, lines 2996-2998 — "Infiltrate the Chief's Hut by crawling under it... The panther is outside the door. It'll be easier if you feed it some meat first (5), but you can also just dodge and jump through tightrope."</small>

```
THIEF INFILTRATION ROUTE A: Laibon's Hut - Steal Magic Drum

OBJECTIVE: Obtain Magic Drum without diplomatic acquisition (Fighter receives it from Laibon after Warrior Initiation)

PHASE 1 - TIMING WINDOW IDENTIFICATION:
Requirement: Wait until NIGHTTIME in game clock cycle
Action: Monitor sun position (Special icon → hourglass menu)
Constraint: Must be night; daytime infiltration fails immediately

PHASE 2 - PERIMETER BREACH (Crack Exploitation):
Location: Laibon's Hut exterior, Simbani Village
Obstacle: Normal door guarded/patrolled during night hours
Sensory Exploitation: Crack in wall visible but requires Fine Dagger to widen
Action Sequence:
- Exit hut area → Walk around building to find crack in mud-brick wall
- USE Fine Dagger on crack → creates entry point sized for Thief character model only
- CRAWL through crack while SNEAK mode active (Stealth stat checked)

PHASE 3 - INTERIOR NAVIGATION (Hidden Compartment Access):
Interior State: Laibon sleeping; Magic Drum displayed in locked compartment
Action Sequence:
- Move silently through hut interior (Sneak verb must remain active)
- APPROACH shelf/altar where Drum is stored (no key needed—compartment is unlocked for narrative reason: Laibon trusts it's safe)
- TAKE Magic Drum → Item added to inventory without triggering alarm

PHASE 4 - EGRESS (Reverse Entry):
Exit Method: Same crawl-out through crack in wall
Risk Assessment: If awakened during exit → immediate combat failure state
Result: Possession of Magic Drum via theft rather than gift


THIEF INFILTRATION ROUTE B: Leopardmen Chief's Hut - Steal Spear of Death

OBJECTIVE: Obtain Spear of Death by stealth instead of peaceful exchange after returning Magic Drum

PHASE 1 - ACCESS GAIN (Nighttime Village Entry):
Prerequisite: Already know path to Leopardmen Village (via Johari guidance or Wizard/Fighter route)
Timing: Must be night; panther guard less active
Constraint: If discovered → combat with Chief or panther


PHASE 2 - PANTHER GUARD BYPASS:
Obstacle: Panther blocks hut entrance door
Sensory Exploitation Options:

OPTION A (Preferred - Safer): Feed Meat to Panther
- Prerequisite: Carry raw meat in inventory
- Action: USE Meat on ground at panther feet
- Result: Panther distracted eating; guard effectively removed for ~30 seconds
- Points: +5 puzzle points demonstrated
   
OPTION B (Risky - Stealth Check): Dodge/Past Through Timing Window
- Requirement: High Agility and Stealth stats
- Pattern: Panther patrol has predictable left-right movement cycle
- Action: Time movement between patrols using tightrope mechanics
- Failure State: Attack initiated if caught in middle of crossing


PHASE 3 - INTERIOR THREATS (Monkey Distraction System):

THREAT A: Noise-Making Monkey Inside Hut
Discovery: Upon entering, player hears monkey squeaking/movements
Mechanical Effect: If monkey continues making noise → wakes sleeping Chief → combat/failure

Solution Pattern (Sensory Exploitation):
- Locate food items on shelves (Fruit)
- USE Fruit to feed monkey → monkey occupied eating for extended duration
- Additional points (+5) for freeing monkey into jungle after taking spear

THREAT B: Chief's Sleeping Position Blocks Spear Access
Observation: Chief sprawled across floor directly beneath hanging spear
Solution Sequence:
- Crawl under hut entrance (Thief-specific action not available to other classes)
- Move around Chief without stepping on floorboards that creak
- Approach wall where Spear of Death mounted


PHASE 4 - TARGET ACQUISITION:

Action: TAKE Spear of Death from wall mount
Points Awarded: +10 for successful theft WITHOUT waking Chief
Risk: If Chief awakens during theft attempt → immediate combat initiated with unfavorable odds


CRITICAL DISTINCTION FROM FIGHTER ROUTE:

Fighter's Approach (Diplomatic Exchange):
- Complete Warrior Initiation trials
- Marry Johari through bride-price ceremony  
- Return Magic Drum to Leopardmen Chief in person
- Negotiate peaceful return of Spear of Death
- Points earned honorably; maintains narrative of preventing war

Thief's Approach (Espionage Operations):
- Infiltrate Laibon's Hut at night → steal Magic Drum first
- Enter Leopardmen Village under cover of darkness
- Defeat panther guard through sensory exploitation (meat distraction)
- Bypass monkey security by feeding fruit
- Steal Spear of Death from Chief's hut with Stealth checks
- Points earned through skill demonstration, not honor

BOTH PATHS ACHIEVE SAME NARRATIVE OUTCOME: Peace conference possible because both artifacts recovered. The Thief simply demonstrates class-specific mechanics (stealth, lockpicking, timing windows) rather than Fighter's combat/trials or Wizard's magical solutions.

WHY IT'S CORPORATE INFILTRATION (NOT SIMPLE STEALTH PUZZLE):

MULTIPLE LAYERS OF SECURITY:
- Layer 1: Temporal restriction (nighttime only—guards/monsters different behavior patterns)
- Layer 2: Physical barrier exploitation (crack in wall requires Thief-size model + tool use)
- Layer 3: Interior guard AI (panther with detectable patrol cycles, exploitable via feeding)
- Layer 4: Secondary threat system (monkey noise alert mechanism)
- Layer 5: Target accessibility (requires navigating around sleeping NPC without triggering awareness)


BEHAVIORAL ROLE-PLAY REQUIREMENT (THIEF IDENTITY):
Must maintain Sneak verb active throughout entire sequence. Unlike SQ3's janitor disguise where player PERFORMS duties, Thief infiltration requires PLAYER TO NEVER ACT like a non-thief—continuous stealth mode demonstrates class specialization as core mechanic.


TEMPORAL WINDOW DEPENDENCIES:
- Laibon's Hut theft must occur at night but BEFORE Magic Drum given back diplomatically (inventory conflict)
- Chief's Hut infiltration has dual constraints: nighttime requirement + panther patrol cycle timing
- Monkey feeding creates extended window but still time-bound before natural awakening


PARALLEL TO SQ3 ARCHITECTURE:

Shared Pattern with SpaceQuest III:
- SQ3: Invisibility belt → Janitor disguise → Maintain by vaporizing cans → Photocopy credentials → Steal keycard during absence → Combine authentications at final door
- QFG3 Thief: Nighttime entry → Crack wall infiltration → Feed panther for access window → Distract monkey with fruit → Navigate sleeping guard room → Extract target item

Both use multi-stage barriers where each layer requires different solution (temporal + physical + behavioral avoidance + sensory exploitation). The core mechanic of "bypass security not through confrontation but through systematic barrier removal" is identical despite vastly different narrative contexts.
```

<small>Source: qfg3-gamefaqs-cyricz.txt, lines 2958-2971 — Thief Laibon's Hut infiltration sequence</small>

<small>Source: qfg3-gamefaqs-cyricz.txt, lines 2991-3004 — Leopardmen Chief hut stealth entry with panther and monkey obstacles</small>

---

### INDY1: Corridor Guard Disguise System (Servant/Officer Uniforms)
<small>Source: walkthrough-king.txt, lines 161-188</small>

**Setup**: Castle Brunwald contains multiple Nazi guards patrolling corridors on the ground floor and 2nd floor. Each guard presents a blocking condition that can be bypassed through three distinct methods: direct combat (violence path), dialogue negotiation (persuasion path), or wearing appropriate disguise uniforms. Two uniform types exist in circulation: servant uniform (access to lower-security areas) and officer's uniform (grants high-level access, requires brass key to unlock).

**Blocking Condition - Multi-Layer Security**: Guards patrol corridors on two floors with conditional detection behaviors based on player appearance:
- Ground floor corridor: Drunk guard + patrolling guard + armored closet area
- 2nd Floor: West corridor guard (patrols east-west), additional guards at doorways
- Each guard responds differently depending on whether Indy wears no uniform, servant clothes, or officer's attire

<small>Source: walkthrough-king.txt, lines 166-169 — "There is another guard in the corridor to the west, and there are 3 ways to deal with him. Dressed as Indy, you can talk to him (1, 2, 2)... or... change into the servant's uniform, then talk to him (1, 1, 3, 2)"</small>

**Solution Chain — Uniform Acquisition Sequence**:

PHASE A - SERVENT UNIFORM (Ground Floor, Lines 161-164):
1. Navigate past initial guard via combat or dialogue negotiation
2. Enter closet room on east side of green carpet area
3. TAKE servant uniform from unlocked storage (officer's uniform locked here—requires key)
4. CHANGE INTO servant costume at closet or any accessible wardrobe
5. Return to corridor, approach guards wearing servant disguise
6. Guards accept lower-priority dialogue tree (different conversation options available)

PHASE B - OFFICER'S UNIFORM REQUIREMENTS (2nd Floor Loop, Lines 174-183):
1. Ascend to 2nd floor, follow corridor east, enter northern room
2. Take 50 Marks from chest in this room
3. Return south, navigate through west-patrolling guard (now bypassable as servant)
4. Enter western door when corridor turns north
5. Open chest → find OFFICER UNIFORM package inside

<small>Source: walkthrough-king.txt, lines 179-180 — "Open the chest and look inside to get a uniform. Look at it to find a brass key."</small>

6. INSPECT uniform in inventory → discover BRASS KEY hidden inside (essential item for unlocking)
7. Return downstairs to ground floor closet where officer's uniform was originally locked
8. USE brass key on closet lock
9. TAKE officer's uniform (now unlocked) into inventory

PHASE C - DISGUISE ACTIVATION (2nd Floor Activation, Lines 183-184):
10. Ascend back to 2nd floor room containing 50 Marks chest (has change wardrobe option)
11. CHANGE INTO officer's uniform at this location
12. Exit through alternate door in same room

PHASE D - HIGH-LEVEL ACCESS GRANTED (Lines 184-187):
13. Encounter guard past exit door—new dialogue options available as officer: TALK (option 2, 2, 3) vs combat
14. Continue north and east through previously inaccessible passages
15. Enter northern office door—guard allows access based on officer status recognition

<small>Source: walkthrough-king.txt, lines 186-187 — "Dressed as an officer, talk to this guy (2, 2, 3)... If you were dressed as an officer, this conversation will help you later on."</small>

16. Navigate past guards who would have blocked combat/required payment when wearing civilian clothes
17. Maintain officer disguise through security zones (guards defer to authority rather than challenge)

**Why It's Corporate Infiltration Disguise Layering**: Unlike simple Sensory Exploitation (single vulnerability attack like "feed dog boar"), this puzzle implements MULTI-STAGE AUTHENTICATION where each disguise tier unlocks progressively access patterns:
- **Tier 1 (No uniform)**: Guards respond with hostility—requires combat or monetary payment (15+ marks per guard)
- **Tier 2 (Servant uniform)**: Guards recognize lower status—different dialogue, no payment required, but limited zone entry
- **Tier 3 (Officer uniform)**: Guards recognize authority—complete corridor access, privileged conversations that advance plot

The locked uniform requiring brass key demonstrates REDUNDANT AUTHENTICATION similar to SQ3's final door (keycard + photo scan). Player must acquire ITEM FROM LOCATION A (brass key in officer's package) → unlock RESTRICTION AT LOCATION B (ground floor closet lock) → obtain ITEM C (officer's uniform) → activate at LOCATION D (2nd floor wardrobe) → gain ACCESS PATTERN E (corridor passages previously blocked by guards).

**Behavior Verification Mechanic**: Unlike SQ3 where vaporizing cans continuously tests whether you're "really a janitor," the disguise system here uses CONTEXTUAL DIALOGUE VERIFICATION. Guards don't periodically check if you're a "real officer"—instead, they recognize uniform type at first encounter and modify their response accordingly. The verification happens through available conversation trees (officer gets options 2-2-3, servant gets options 1-1-3-2), not behavioral performance checks.


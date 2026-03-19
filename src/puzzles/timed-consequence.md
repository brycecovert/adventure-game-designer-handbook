# Timed Consequence Puzzle

## Mechanic Definition

Urgency is conveyed through narrative consequence rather than mechanical time limits. The player learns that failure will result in permanent story change, but there's no visible countdown, progress bar, or explicit mechanical deadline. The pressure is diegetic—existing within the story world, not imposed by the game interface.

## Information Architecture

**Conveyance Method**: Threat of consequence through dialogue/narrative
- NPCs explicitly state what will happen if player doesn't act
- The consequence is always permanent and story-altering
- No UI element tracks the deadline—the player must infer urgency from narrative

**Player Action Pattern**:
1. Learn threat through dialogue/story event
2. Understand what the consequence is (permanent story change)
3. Determine what actions prevent the consequence
4. Execute actions with appropriate urgency
5. If successful, consequence avoided; if not, permanent change occurs

**Core Mechanic**: The puzzle is about managing urgency without visible metrics. The player must internalize the threat and act accordingly.

## Design Rationale

- Maintains immersion—no UI elements break narrative
- Creates emotional stakes—the threat of permanent loss matters more than "game over"
- Rewards urgency without stress—players feel pressure without countdown anxiety
- Allows variable pacing—skilled/experienced players can take more time

## Why It's Effective

The tension is narrative rather than mechanical. Failing doesn't mean "game over and restart"—it means the story changes permanently. This creates real stakes without punishing exploration.

## Mechanic Variations

| Variation | Urgency Signal | Consequence Type |
|-----------|---------------|------------------|
| Dialogue-stated | Character says "you have limited time" | Permanent transformation/death |
| Environmental | World visibly changes (emptying city, rising fire) | NPCs become unavailable |
| Progressive | Character relationships degrade over time | Missing story content |
| Celestial | Described event (alignment, eclipse) approaches | One-time opportunity lost |

## Generic Example Structure

**Information Flow**:
- Character: "You have until [event] to [action]. After that, [consequence]."
- Player understands consequence: Permanent story change, not restart
- Player determines required actions: What needs to be done before event
- Player acts with urgency but can still explore
- If completed before event: Normal continuation
- If not: [Consequence] occurs—game continues but fundamentally altered

**The puzzle**: Internalizing urgency without visible metrics and acting accordingly.

## Adventure Game Implementation

Limited actions become urgent:
- TALK to NPCs quickly—some become unavailable after consequence
- WALK between locations—with purpose, not exploration
- The puzzle isn't about speed, it's about priority

This puzzle tests: "Can I internalize narrative urgency and act with appropriate priority without mechanical feedback?"

---

## Game Examples

### Beneath a Steel Sky: Eyeball Guardian Timing Puzzle (BAS)

**Problem**: In LINC-Space security zones, Eyeball guardians patrol virtual corridors. Player must navigate past them to retrieve critical items (TUNING FORK, DIVINE WRATH program) while managing 15-20 second blind duration windows before reactivation.

<small>Source: 5_steamah_walkthrough.html, lines 521-523 — "'Blind' the first EYEBALL. The idea is to get the TUNING FORK before the first EYEBALL reactivates in about 15-20 seconds... This eyeball reactivates only within a few seconds, so be quick!"</small>

<small>Source: 1_preterhuman_mitch_shaw_walkthrough.html, lines 305-315 — "Use the BLIND program on the EYE. Go NORTH again. Get the TUNING FORK if the EYE is still blinded (white)"</small>

**Consequence Structure**:
```
THREAT: Being trapped/locked out by reactivated eyeballs
PERMANENTITY: Must disconnect and re-enter LINC-Space, losing progress
NO VISIBLE TIMER: Player must estimate from visual feedback (eyeball color: white=blinded vs colored=active)

PHASE 1 - BLIND FIRST EYEBALL (Timer ~15-20s):
→ Use BLIND command → eyeball turns WHITE (inactive state)
→ ⏱️ Invisible timer starts NOW
→ Move to second room before reactivation

PHASE 2 - BLIND SECOND EYEBALL (Timer "few seconds"):  
→ Second eyeball reactivates much faster ("within a few seconds")
→ Use BLIND immediately → white state achieved
→ QUICKLY enter thick plasma exit beside it

PHASE 3 - RACE TO TUNING FORK:
→ Exit north (STOP before CRUSADER room—don't engage yet)
→ Go right into side corridor
→ GRAB TUNING FORK from floor
→ ⏱️ If first eyeball reactivates during this phase = trapped

PHASE 4 - SAFE RESET POINT:
→ Return to hub with WELL in center
→ Use PLAYBACK command on WELL (resets eyeball states)
→ DISCONNECT safely to main terminal

FAILURE STATE: If timer expires before Phase 4 complete
→ Eyeballs reactivate (return to colored state)
→ Player locked into section until disconnect/reconnect

---

### Broken Sword: Shadow of the Templars - Khan Cliff Escape (Chapter 4)

**Problem**: Final confrontation with Khan creates narrative urgency—George must execute precise escape sequence at cliff edge. No visible timer but death occurs if action order deviates from required pattern (buzzer then immediate jump).

<small>Source: broken-sword-1/4_agh_peter_christiansen_walkthrough.html, lines 420-427</small>
<small>Source: broken-sword-1/1_walkthroughking_broken_sword.html, lines 178-179</small>

**Consequence Structure**:
```
NARRATIVE URGENCY (No Mechanical Timer):
→ Scene establishes Khan confrontation as life-or-death scenario
→ No countdown visible, no progress bar tracking urgency
→ Threat conveyed entirely through NARRATIVE context: failed actions = character death

ESCAPE SEQUENCE REQUIREMENT:
Step 1 → Approach cliff edge with Khan pursuing behind
         - Cutscene or dialogue establishes critical moment
         
Step 2 → Press buzzer at exact location (bridge/escape mechanism trigger)
         - Activates bridge withdrawal or rope lowering mechanism
         
Step 3 → JUMP OFF CLIFF Immediately after buzzer activation
         - Cannot pause, explore, or examine environment
         - Death state triggers if delay exceeds narrow window

FAILURE STATE: Sequence deviation results in game over
→ Jump before pressing buzzer = fall to death (no rescue mechanism active)
→ Press buzzer then delay too long = Khan catches player / bridge collapses / narrative consequence triggers restart
```

**Why It's Timed Consequence**: Urgency exists entirely through NARRATIVE stakes (Khan pursuing, life-or-death scene establishment), not mechanical timer. Player internalizes threat from story context—cutscene language, dialogue, positioning all indicate "act now or die." No HUD element tracks the deadline; urgency is DIEGETIC within story world. The puzzle tests ability to prioritize correctly: player must recognize that immediate action required rather than exploration/interaction. This differs from Observation Replay's precise timing window (where exact button press moment matters for success) because TC focuses on ACTION SEQUENCE ORDER with narrative threat, not frame-perfect execution skill.

---

### Legend of Kyrandia: Malcolm Knife Throw-Back (LK1)

**Problem**: At the entrance to Serpent's Grotto, the antagonist Malcolm appears and throws a knife at Brandon. The player must click to throw the knife back BEFORE it hits Brandon. This is a critical first-time-only encounter with immediate permanent consequence—failure results in death and game over. Any other action (saving, running, dialogue) triggers Malcolm throwing another knife that cannot be missed.

<small>Source: classicgamesparadise_walkthrough.html, lines 107-108 — "When you try to enter, Malcolm will show up to taunt Brandon. When he throws the knife at Brandon, quickly click on it while it is stuck in the tree to throw it back. If you try to run, Malcolm will throw another and won't miss this time."</small>

<small>Source: bonny_ploeg_walkthrough.html, lines 45-46 — "Enter the grotto: Malcolm will come out. As soon as you can, throw the knife back at him: anything else, even saving the game, is lethal." + line 88 — "Getting turned to stone (or in the floppy version: knifed) by Malcolm at the serpent grotto" listed as death scenario</small>

```
NARRATIVE URGENCY WITHOUT MECHANICAL TIMER:

THREAT ESTABLISHMENT:
→ Player attempts to enter Serpent's Grotto after sealing ice with flute
→ Cutscene/dialogue sequence establishes confrontation
→ MALCOLM THROWS KNIFE at Brandon (animated projectile)
→ CRITICAL MOMENT: Knife is STUCK IN TREE near Brandon (not yet lethal)

TIME WINDOW:
- No visible countdown or progress bar
- Deadline implied: "click knife before it completes trajectory"
- Threat conveyed through cutscene tension, not UI element


REQUIRED ACTION SEQUENCE:

Step 1 → Malcolm throws knife; animation plays showing projectile
         - Player cannot interact during throw animation
         
Step 2 → Knife lands STUCK IN TREE (briefly accessible state)
         - CRITICAL: Must click on stuck knife IMMEDIATELY
         - Pre-typing command won't work—must wait for exact moment

Step 3 → Click/USE on knife while it's stuck (before game processes impact)
         - Brandon catches and throws knife back at Malcolm
         - Cutscene: Malcolm stunned, flees, seals grotto entrance with ice

FAILURE STATES:

A. RUN AWAY: Trigger different animation—Malcolm throws second knife
   → Second projectile cannot be caught/deflected
   → Direct hit = instant death/game over
   
B. SAVE GAME during initial throw window:
   → Saving triggers "too slow" failure state  
   → Even the act of saving counts as "wrong action"
   → Malcolm's dialogue changes; second knife throws

C. WRONG DIALOGUE/INTERACTION:
   → Any command other than immediate knife-click fails
   → Same outcome: lethal follow-up attack


WHY IT'S TIMED CONSEQUENCE (Not Observation Replay):

NARRATIVE URGENCY VS MECHANICAL PRECISION:
This puzzle establishes urgency through STORY CONTEXT—Malcolm as antagonist, confrontation scene, life-or-death stakes—rather than requiring frame-perfect input skill. The "timing window" exists not because animation frames demand exact timing, but because the NARRATIVE establishes Malcolm's attack as IMMEDIATE THREAT that demands immediate response.

PERMANENT CONSEQUENCE:
Failure = DEATH (permanent game state ending requiring restart/loading). Not just "puzzle failed, try different approach." The consequence is binary: survive or permanent death. This matches TC's emphasis on story-altering outcomes rather than mechanical retry loops.

NO MEMORIZATION REQUIRED:
Unlike Observation Replay where player must memorize sequence from one viewing then reproduce it later, here player acts DURING the event, not after witnessing it. No prior observation, no delayed reproduction—pure immediate response to narrative threat.


"ANYTHING ELSE IS LETHAL" MECHANIC:
The walkthrough explicitly states "even saving the game is lethal"—this emphasizes how NARRATIVE URGENCY overrides normal game systems. The save system (normally safe action) becomes DEATH TRIGGER because story context demands one specific immediate response. This is TC's hallmark: urgency that exists beyond UI/menus, embedded in diegetic world rules.
```

---

### Legend of Kyrandia: Fireberry Maze Navigation (LK1)

**Problem**: Inside Shadowrealm/Serpent's Grotto, the player navigates a dark maze with limited visibility. Fireberries provide illumination but burn out after exactly 3 screen transitions when carried. If caught in darkness without light source, shadow wraiths devour Brandon (game over). The puzzle requires careful resource management across an unmemorable labyrinth with death as consequence for miscalculation.

<small>Source: classicgamesparadise_walkthrough.html, lines 173-175 — "Be careful though; you can only safely move between rooms 3 times before the Fireberries will burn out. If you are caught in a dark room without any light, the shadow wraiths will no longer be repelled by the light and will devour you. If you drop a fireberry on the ground, it won't burn out and will make that room safe to go back to if you run out of berries."</small>

<small>Source: bonny_ploeg_walkthrough.html, lines 49-53 — "The caves are dark. If you are in a dark spot when you have no firebrities on you, you'll die... Fireberries will burn infinitely on the bush or on the floor, but you can only carry them for 3 screens."</small>

```
NARRATIVE URGENCY THROUGH RESOURCE DECAY:

THREAT ESTABLISHMENT:
→ Shadowrealm is naturally dark (perpetual shadow/dungeon aesthetic)
→ Fireberries are required to repel shadow wraiths (established through early death or hint)
→ CRITICAL MECHANIC: Berries burn out after 3 screen transitions when HELD IN INVENTORY

DEATH CONSEQUENCE:
- No timer visible, no progress bar tracking berry burn-rate
- Player must internally count "1 screen... 2 screens... 3 screens remaining"
- At zero burns: darkness activates → wraiths appear → instant death


STRATEGY OPTIONS (Both Require Planning):

OPTION A - Permanent Light Beacons:
Step 1 → Pick up 4 fireberries at each bush
Step 2 → Travel to new dark room, DROP ONE BERRY ON FLOOR before moving on
           - Berry placed on floor burns INDEFINITELY (doesn't decay)
           - Room becomes permanently safe for re-entry
Step 3 → Continue with remaining berries; each room gets beacon
Step 4 → If run out of portable berries → backtrack to any lit room (safe zone)

OPTION B - Map-Assisted Save/Reload at Bushes:
Step 1 → Create external paper map, number all fireberry bush locations
Step 2 → Establish secondary save file at EACH bush position
         - Label saves with location identifier from map
         - Primary save = progression; secondary save = bush checkpoint
Step 3 → When carrying berries into unknown section, use primary save only
Step 4 → If berries expire before finding next bush: RELOAD to nearest bush save

CRITICAL STRATEGY ELEMENTS:

1. BERRY ECONOMY MANAGEMENT:
   - Carrying = rapid decay (3 screens max)
   - Dropped on floor = infinite burn time
   - Each bush = finite resource pool, not renewable indefinitely
   
2. NAVIGATION WITHOUT MEMORY:
   All rooms look identical (dark cave aesthetic, no unique visual markers). External mapping required because internal landmarks don't exist.

3. DEATH CONSEQUENCE STRUCTURE:
   Darkness death is PERMANENT (game over), not "lose current berries and respawn." Player must manage risk through strategic berry placement or save-file discipline.


WHY IT'S TIMED CONSEQUENCE:

RESOURCE-DECAY URGENCY VS MECHANICAL TIMER:
No visible countdown exists. The "3 screens" burn rate is revealed through failed attempts or walkthrough knowledge. The urgency comes from INTERNAL COUNTING—player mentally tracks remaining screens before berry expiration. This creates NARRATIVE TENSION ("how far can I go before darkness claims me?") without HUD timer.

STORY-EMBEDDED MECHANIC:
The fireberry mechanic is THEMATICO—shadow realms require light; carried light burns through use; abandoned light becomes permanent sanctuary. These rules feel diegetic, not arbitrary "3 moves before reset" puzzle structure.

PERMANENT CONSEQUENCE FOR MISMANAGEMENT:
Death in darkness = complete game over, requiring reload to much earlier save point. This is TC's hallmark stakes—consequence is NARRATIVE FAILURE (Brandon consumed by shadows), not JUST mechanical setback (lose inventory and retry).


DISTINCTION FROM PATTERNS/LOGISTICS PUZZLES:
While inventory management involved (Cross-Realm Logistics element), the CORE PUZZLE MECHANIC is URGENCY MANAGEMENT. Not "where are items located" but "how long until items cease functioning." The temporal decay creates narrative urgency absent from pure logistics puzzles.

```

---

### SpaceQuest III: Ortega Force Field Escape (SQ3)

**Problem**: Roger reaches Ortega, a planet protected by an impenetrable force field beam maintained by a shield generator. After discovering the generator's location via telescope and acquiring items needed for escape, Roger must destroy the generator to disable the shielding—triggering an invisible countdown before the entire planet explodes. The player receives warning that time is limited but no visible timer displays remaining duration.

<small>Source: gamefaqs-tricrokra-archive.html, lines 485-491 — "Once you continued a timer will start to run. A timer you don't see, but one that is pretty narrow."</small>

<small>Source: the-spoiler-walkthrough.html, lines 126-128 — "'Throw detonator'. 'Climb down ladder'. The planet's going to explode!."</small>

```
THREAT STRUCTURE:

URGENCY SIGNAL (Dialogue-based):
Walkthrough explicitly states "Once you continued here a timer will start to run. A timer you don't see, but one that is pretty narrow."
The threat consequence: "If you exceed the time you are dead." [game over]

NO UI TIMER EXISTS:
Player must infer remaining time from narrative cue alone ("planet's going to explode!") and internal urgency management


PHASE 1 - PREPARATION (Before Timer Activates):

STEP A - Wait for Scouting Party to Depart
Prerequisite: Land on Ortega, wear thermoweave underwear (heat protection)
Location: South → West → South (behind bridge structure)
Action: Wait until armed men leave the area before proceeding
Citation: the-spoiler-walkthrough.html, line 123 — "Walk behind the boulder and wait for the men to leave"


STEP B - Discover Planet Location via Telescope
Location: Scout observation post (same location as above)
Action: LOOK in telescope → discover Pestulon coordinates
Outcome: New destination added to ship navigation system
Citation: gamefaqs-tricrokra-archive.html, line 489 — "Use the telescope, and you'll discover Pestulon"


STEP C - Acquire Escape Tools
Items collected at scout post (before heading north):
- THERMAL DETONATOR (from box) → used to destroy generator
- METAL POLE → required to pole vault across chasm after explosion

Citation: gamefaqs-tricrokra-archive.html, lines 490-491 — "= Get a detonator from the box = Get the pole"


PHASE 2 - TIMER ACTIVATION SEQUENCE:

STEP A - Navigate to Shield Generator
Path: Exit south post → East × 2 → North (outside generator) → North again → Downstairs → North → East
Citation: gamefaqs-tricrokra-archive.html, lines 498-503 — Path sequence to reach generator interior


STEP B - Climb Final Access Point  
Command: CLIMB ladder at north end of generator room


STEP C - DESTROY GENERATOR (TIMER BEGINS)
Action: THROW detonator into large hole in floor
Consequence Triggered: Force field deactivates; planet enters destruction sequence
Invisible Countdown: Walkthrough notes "pretty narrow" time limit

Citation: gamefaqs-tricrokra-archive.html, line 508 — "Throw the Detonator into the big hole"


PHASE 3 - ESCAPE SEQUENCE (Race Against Invisible Timer):

STEP A - Descend Generator Building  
Command: CLIMB DOWN ladder immediately after detonation
Citation: gamefaqs-tricrokra-archive.html, line 509 — "= Climb down"


STEP B - Navigate Back to Ship (Fixed Exit Path)
Navigation Sequence (MUST NOT DEVIATE):
- West → South → South → West ×2 → North

Critical Step at Chasm:
Position: After second west direction, before final east
Action: USE POLE to vault across ground crack formed by explosion
Citation: gamefaqs-tricrokra-archive.html, line 468 — "USE POLE (you'll use your pole to jump over the crack)"


STEP C - Reach Ship and Launch
Final Moves: EAST → NORTH (center of screen) → Enter ship based on position
Commands in Ship: SIT → LOOK COMPUTER → Select "1" (Engines) → "3" (Takeoff)

Citation: gamefaqs-tricrokra-archive.html, lines 520-527 — Final escape sequence


CONSEQUENCE STRUCTURE:

IF TIMER EXPIRES BEFORE ESCAPE:
Consequence: Game over (death by planetary explosion)
No UI warning—player must infer remaining time from narrative urgency alone


WHY IT'S TIMED CONSEQUENCE PUZZLE:

NARRATIVE URGENCY WITHOUT MECHANICAL TIMER:
Walkthrough explicitly states "A timer you don't see"—this is TC's defining trait. The player knows time matters but cannot quantify remaining duration without external knowledge (walkthrough) or careful observation of explosion animations (which may not be visible before game ends).

NO SAVE/LOAD GAMEPLAY LOOPS ALLOWED:
While player can theoretically save/reload, the design intends single-attempt execution after detonation. There's no "try again" safety net—player must prepare all items beforehand and know/remember escape route.

CONSEQUENCE IS PERMANENT STORY CHANGE (Or Death):
If player fails to escape in time, consequence is Roger Wilco dying—story ends. This is TC's hallmark: stakes are narrative (character death) rather than mechanical (lose points/item).


KEY DISTINCTION FROM PREDATOR CHASE ESCAPE:
Predator Chase has immediate pursuit mechanic with no timer UI but ACTIVE PURSUER. Player is being hunted by Arnold in real-time. Ortega escape has no visible pursuer—only environmental destruction sequence triggered by player's own action, requiring self-managed urgency without external threat presence.

TIMED URGENCY VS FIXED ROUTE:
The puzzle's difficulty emerges from knowing/remembering a specific multi-step path (West → South × 2 → West × 2 → North → East) under time pressure. Unlike standard navigation puzzles, deviation or hesitation risks explosion death. This combines memory management with urgency—TC's narrative tension applied to rote escape sequence.

```

---

### Quest for Glory IV: Gypsy Rescue Window (QFG4)

**Setup**: On days 4-5 of gameplay, the Burgomeister at the town office will announce that gypsies have been captured and accused of being werewolves, with Igor "missing." The player must investigate and rescue them before a specific deadline or the gypsies are executed/lost permanently.

<small>Source: qfg4-gamefaqs-anonymous.txt lines 831-856 — "Day 4-5: Farmers found gypsy at Burgomeister's office... Gypsy accused of being werewolf, Igor 'missing'"</small>

```
URGENCY SIGNAL - NARRATIVE THREAT:
Step 1 → Visit Burgomeister's office on Day 4+ (in-game calendar tracked by hotel nights)
         Event triggers automatically if player has progressed足够 enough in valley exploration
         
Dialogue Conveyance:Burgomeister explains gypsies captured for "werewolf activities" near village farms.
Igor the hunchback is "missing" and suspected of involvement.
THREAT IMPLICIT: If gypsies are proven guilty or Igor not found, they face execution/expulsion from valley.

NO MECHANICAL TIMER UI:Player has no countdown or explicit deadline displayed.
Urgency must be inferred from narrative context: legal situations typically resolve quickly in medieval-settings.

CONSEQUENCE OF INACTION:If player delays too long (approx. days 6-8 depending on playthrough):Gypsies may be executed, released prematurely without aid,
OR the investigation opportunity closes entirely.
Result: Cannot complete Gypsy-related quests including Fortune Teller readings OR Rusalka quest for Paladins

REQUIRED ACTION SEQUENCE (Rescue Path):Step 1 → Search Igor's likely locations (NOT town, NOT Dr. Cranium's)
         Clue: Igor works at cemetery during day

Step 2 → Visit Cemetery after gypsy accusation event
         Look for tipped tombstone or unusual markings near graves

Step 3 → Investigate moaning sound coming from UNDER a disturbed grave
         Tombstone has been pushed over, revealing hidden cavity underneath

Step 4 → Class-specific tombstone lifting:
          Fighter: Use strength to push/force tombstone aside directly
          Thief: Use rope tied to nearby tree branch as pulley system to lift stone  
          Wizard: Cast Fetch spell on tombstone to magically remove it
         Result: Igor freed from underground hiding/detention spot

Step 5 → Automatic consequence: Gypsies are released once Igor is found
         Reasoning: Without Igor's alleged leadership, accusation collapses

REWARD FOR SUCCESSFUL RESCUE:Gypsy camp becomes fully accessible for future interactions.
Magda the Fortune Teller available for tarot readings (up to 4, providing Undead Amulet/Aura Spell).
Critical information about Dark One's name "AVOOZL" eventually revealed through readings.

PALADIN-SPECIFIC EXTENSION:Rescued gypsies provide quest hints for Rusalka lake spirit release.
Magda can advise on "sacrifice needed" and guidance toward true redemption mechanics.

WHY IT'S TIMED CONSEQUENCE PUZZLE:NARRATIVE URGENCY WITHOUT MECHANICAL DEADLINE:
Player learns THREAT exists (gypsies face consequences) but NO COUNTDOWN DISPLAYS.
Game continues normally if player ignores it—consequence only manifests as LOST OPPORTUNITY.

PERMANENT STORY CHANGE:Puzzle opportunity closes after certain point (exact timing undocumented, varies by playthrough).
Unlike "game over" puzzles, the game CONTINUES but specific content becomes UNACCESSIBLE.
This is hallmark Timed Consequence: narrative urgency, player-managed priority, permanent consequence of delay.

COMPARISON TO SPACEQUEST 4 EXPLOSION:SQ4 = mechanical death if fail (hard reset)
QFG4 = missed questline content (soft lockout, game continues)
Both share core TC trait: no visible timer, must infer urgency from narrative context.
```

<small>Cited from: qfg4-gamefaqs-anonymous.txt:831-856, qfg4-gamefaqs-sac.txt:2430-2447</small>

---

### Quest for Glory IV: Will-o'-Wisp Nighttime Capture (QFG4)

**Setup**: To reveal the Sense Ritual location at the Squid Stone, player must capture Will-o'-Wisps. Wisps only appear at NIGHT and die if not released before DAYBREAK. This creates a strict time-window puzzle combining environmental timing with consequence management.

<small>Source: qfg4-gamefaqs-sac.txt lines 1946-1952 — "Make sure to let them out before daybreak or else they'll expire"</small>

```
ENVIRONMENTAL URGENCY SIGNAL - Celestial Cycle:
Step 1 → Travel to swamp edge area (west forest, near Dark One Cave entrance)
         CRITICAL CONSTRAINT: Must visit during NIGHT game time only
         
NIGHTTIME DETECTION:Will-o'-Wisps visible as floating lights above dark water surface.
During daytime: Wisps disappear entirely; cannot be captured or interacted with.

CAPTURE MECHANIC:Step 2 → Ensure candy in inventory (purchased from General Store, town)
         Item prerequisite for luring wisps

Step 3 → Use CANDY on ground/water near visible wisp
         Result: Wisps approach slowly, attracted by sweet smell

Step 4 → Wait ~3-5 seconds until wisp enters capture range

Step 5 → Use EMPTY FLASK on approaching wisp  
Result: Wisp captured inside flask, added to inventory item "Flask of Will O' Wisps"

TIMED CONSEQUENCE WINDOW - Daybreak Deadline:
         URGENCY: Captured wisps are ALIVE organisms inside flask.
         
         THREAT: If daybreak occurs before releasing wisps back into environment,
                 they DIE inside the flask permanently.
                 
         NO EXPLICIT WARNING: Game does not display countdown or "wisps dying soon" message.
                  Player must track time by observing sun/moon position OR checking clock UI.

RELEASE AND APPLICATION (Daytime):Step 6 → Travel to Squid Stone ritual marker location
         
Step 7 → Use Flask of Will O' Wisps on ritual stone BEFORE daybreak if captured at night end
         Result: Wisp light reveals hidden Mad Monk's tomb entrance + Bone Ritual scroll location

CONSEQUENCE STRUCTURE:If wisps die from daybreak before release:Flask becomes empty/useless.
Must restart entire capture process (wait for next night cycle, repeat luring).
No permanent game lockout, but creates REPLAY PENALTY and delays progression.

WHY IT'S TIMED CONSEQUENCE PUZZLE:ENVIRONMENTAL URGENCY WITHOUT MECHANICAL TENSION:
Player knows "before daybreak" is deadline but no explicit countdown.
Natural celestial cycle serves as timer (day/night transition).

SOFT CONSEQUENCE (Not Death/Lockout):Wisps dying = inconvenience and delay, not permanent story change or game over.
This is softer Timed Consequence compared to Gypsy rescue (which can permanently close questlines).

HYBRID WITH OBSERVATION REPLAY:OR component:Lure pattern must be observed and reproduced correctly (behavior learning).
TC component: Capture-to-release window creates urgency layer on top of OR mechanics.

The Will-o'-Wisp puzzle demonstrates TC can apply to ITEM PRESERVATION not just character survival—
maintaining captured organism's viability is the timed challenge, with mechanical consequence (item uselessness) if deadline missed.
```

<small>Cited from: qfg4-gamefaqs-anonymous.txt:1075-1080, qfg4-gamefaqs-sac.txt:1946-1952</small>

---

### Relationship to Predator Chase Escape Pattern

Predator chase sequences are a specific variant where urgency is created through active pursuit rather than narrative deadline. The SQ3 Arnoid chase exemplifies this—the "timer" is how fast the robot catches Roger, not a story-based deadline like DOTT's time machine or QFG4's four-year limit. See [Distraction Physics](distraction-environmental-manipulation.md) for predator rerouting mechanics where players guide pursuers into environmental hazards.

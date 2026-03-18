# Multi-Character Coordination Puzzle

**Information Architecture**: Game requires two or more characters to perform simultaneous actions at separated locations. Success depends on character switching and timing, NOT just sequential progression or individual character competence. Single-character attempts physically impossible regardless of inventory or knowledge.

**Player Action Pattern**: 
1. Identify that puzzle has spatially-separated components
2. Determine which character has required capability (strength, skill, inventory item)
3. Position each character at their designated location/action point  
4. Execute actions in tight sequence using character-switch mechanic
5. All sub-actions complete before narrative urgency timeout

**Core Mechanic**: The puzzle exploits the MULTI-CHARACTER party system to create actions that NO SINGLE character could accomplish alone, regardless of knowledge or items—forcing player coordination and action sequencing across separated spatial contexts.

---

## Variations

| Type | Coordination Pattern | Urgency Level | Example |
|------|---------------------|---------------|---------|
| **Simultaneous Dual-Action** | Two characters act at once in different rooms | High (narrative consequence) | Pool reactor: drain & refill |
| **Sequential Handoff** | Character A creates opportunity → B captures it | Medium | Circuit breaker: off → fix wires → on |
| **Position Lock + Action** | One character HOLDS state while other acts | Variable | Holding door open, maintaining power OFF |
| **Character-Skill Complement** | Different abilities required from each character | Low-Medium | Strength to open + skill to manipulate |

---

## Game Examples

### Maniac Mansion: Pool Reactor Meltdown (Dual-Action Simultaneous)

**Problem**: Swimming pool contains two critical items (Glowing Key for dungeon/padlock access, Radio needed later). Pool water functions as atomic reactor coolant located at pool bottom. Draining reveals items but initiates meltdown countdown that destroys mansion if not reversed—killing all characters permanently. Single character physically incapable due to distance/speed constraints between valve location and pool ladder.

<small>Source: syntax2000_walkthrough.txt, lines 219-226 — "NOTE 4:- there is an atomic reactor at the bottom of the swimming pool, the water keeps it from over heating and exploding. To get the radio and the glowing key you must first empty the pool, and then afterwards refill it. A single character can not complete the task alone in the time before the reactor overheats. One character must go under the house to the water valve and another to the pool side."</small>

```
CHARACTER DISTRIBUTION REQUIREMENTS:
- HUNK STRENGTH CHARACTER (Dave after Hunk-O-Matic machine, or Bernard)
  → Task: Open front yard grate, access crawl space, control water valve
  
- SECOND CHARACTER (any of remaining two party members, e.g., Syd/Razor/Michael)  
  → Task: Position at pool ladder, descend during drain window, retrieve items

SPATIAL CONFIGURATION (creates impossibility for single character):
Location A: Front yard grate → crawl space under house → water valve handle
Location B: Pool area with descending ladder → pool bottom where items sit
Distance: Walkable but takes 15-30+ seconds per traversal
Meltdown Window: Narrative state implies ~45-60 second safe window MAXIMUM

IMPOSSIBILITY PROOF (Why one character fails):
To complete alone, single character would need to:
1. Turn ON valve → pool begins draining (Location A start)
2. Walk from crawl space to outside → to pool area (Location A→B transition)  
3. Descend ladder as water level drops (timing critical!)
4. Retrieve TWO items from pool bottom (Glowing Key + Radio)
5. ASCEND ladder before explosion
6. Walk back toward crawl space entrance...
7. ...open grate, descend again (second traversal B→A)
8. Turn valve OFF to refill pool (before meltdown completes)

Even in ideal conditions with PERFECT timing:
- Step 2 alone exceeds travel time budget  
- Steps 6-7 adds another full round-trip cost
- Total minimum actions = 7 physical movements + item retrievals
- Safe window likely only covers ~3-4 of these comfortably

TWO-CHARACTER SOLUTION SEQUENCE:
<small>Source: syntax2000_walkthrough.txt, lines 96-101 — "DAVE:- turn on water valve... SYD:- down into empty pool, get radio, get glowing key, up out of pool. DAVE:- turn off water valve."</small>

PREPARATION PHASE:
1. Hunk character opens front yard grate (requires strength)
2. Hunk positions in crawl space near valve handle  
3. Second character positions at pool ladder waiting position

EXECUTION PHASE (Character switching required):
4. [Switch to VALVE CHARACTER] Activate water valve → MELTDOWN INITIATED
   - Pool begins draining rapidly
   - Reactor exposed, overheating process started
   
5. [QUICK CHARACTER SWITCH TO POOL CHARACTER]  
   - Second character descends immediate as water recedes (no travel time needed!)
   - Grab Radio from pool bottom
   - Grab Glowing Key from same location
   - Ascend ladder back to pool surface level

6. [SWITCH BACK TO VALVE CHARACTER] Turn water valve OFF → Refill initiated
   - Pool refills, reactor coolant restored  
   - Meltdown sequence aborted
    
7. STORY CONTINUES: Both items obtained, all characters survive, no game-over consequence

CHARACTER SWITCH MECHANIC (SCUMM Engine Feature):
- Player uses "New Kid" command to cycle between active party members
- Each character maintains separate position, inventory, actions-in-progress
- Switching takes negligible time (instantaneous in-game)
- This mechanic ENABLES coordination puzzles by allowing rapid action sequencing
```

**Why It's Multi-Character Coordination**:
1. **Physical Impossibility for Single Actor**: Puzzle design explicitly states "A single character can not complete the task alone" via distance/timing constraints—not lack of knowledge or tools
   
2. **Exploits Game's Character-Switch System**: Solution REQUIRES using the "New Kid" command mechanic as core puzzle interaction, not just convenient navigation

3. **Spatial + Temporal Dual Constraint**: Puzzle would be trivial if:
   - Valve was adjacent to pool (single traversal = one character possible)
   - Meltdown window was infinite (time pressure removed = sequential same-character action works)
   Both constraints must exist for coordination requirement
   
4. **Parallel Action Architecture**: Successful solution has two characters completing their respective roles in PARALLEL time, not sequentially

**Distinction from Timed Consequence**: 
While pool puzzle HAS narrative urgency (reactor meltdown), the Timed Consequence classification describes WHAT makes it urgent. Multi-Character Coordination describes HOW it must be solved. Most timed puzzles can be single-character if fast enough—this one is impossible for one character even with perfect timing due to SPATIAL constraints.

**Distinction from Meta-Puzzle Construction**:  
No sequential item chain here—the two actions (open valve, get items) are COMPLEMENTARY not DEPENDENT. One does not produce an output that enables the next; both must complete within same time window for mutual success. The "production" is coordinated survival, not item crafting.

---

### Maniac Mansion: Circuit Breaker Power Restoration (Sequential Handoff)

**Problem**: Meteor Mess arcade game (on second floor past exam room in Games Room area) displays high score that unlocks Secret Laboratory access code. However, power to games room is cut due to broken electrical wires in attic/observatory space. Restoring power requires simultaneous circuit breaker manipulation AND wire repair—actions separated by floors and requiring different character inventories/tools.

<small>Source: syntax2000_walkthrough.txt, lines 227-233 — "NOTE 5:- a particular arcade game in the games room will give you vital information, but unfortunately the power line has broken in the attic. This is another two character job, one must stand by the circuit breakers in the basement whilst the other must take the tools to the attic. Only when the electric power to the whole house has been turned off can the broken wires be repaired."</small>

```
SEPARATE REQUIREMENTS (Character Skill/Item Distribution):

CHARACTER A (Circuit Breaker Handler):
- Location: Basement fuse box (ground floor)
- Required Action: Toggle circuit breakers OFF during repair window
- Inventory needed: NONE (just presence and timing)
- Critical behavior: Must be PRESENT at breaker panel when switch occurs

CHARACTER B (Wire Repair Specialist):  
- Location: Attic/observatory wiring area (third floor, behind secret door revealed by paint remover)
- Required Action: Fix broken wires with tools
- Inventory needed: Tool box from garage + flashlight with working batteries
- Critical state: Can only work when power is DEACTIVATED

BLOCKING CONDITION ANALYSIS:
- Broken wires prevent electricity from reaching second-floor game room
- Arcade meter/game display remains dark/inactive without power  
- High score code unavailable = laboratory door permanently locked
- No alternative power source exists in mansion (central breaker only)
- Attempting to work on live wires = invalid action or electrocution failure

SEQUENTIAL HANDOFF SOLUTION:
<small>Source: syntax2000_walkthrough.txt, lines 144-151 — "SYD:- ...turn off circuit breakers... DAVE:- turn on flashlight, use tools to fix broken wires... SYD:- turn on circuit breakers"</small>

PHASE 1 - PREPARATION (can occur before power failure discovery):
1. Character A: Access basement via gargoyle door push → locate fuse box panel
2. Character B: 
   - Obtain tool box from garage (yellow key required to open car trunk)
   - Access plant room, use paint remover on wall blotch → reveals secret door
   - Enter attic space with broken wires
   - Open radio found in attic → extract batteries
   - Install batteries in flashlight

PHASE 2 - COORDINATED EXECUTION (character switching essential):
3. [Switch to Character A at basement] Open fuse box, prepare for breaker toggle
   
4. [SWITCH: Circuit Breakers OFF] Flip circuit breakers to OFF position
   - ENTIRE MANSION goes dark (cutscene/dialogue confirms power loss)
   - Attic wire repair window NOW ACTIVE
   
5. [IMMEDIATE SWITCH TO Character B in attic] Activate flashlight
   - Use tool box on broken wires → Repair animation completes
   - Power restoration enabled (wires now intact and safe for electricity)
   
6. [SWITCH BACK TO Character A at basement] Flip circuit breakers back ON
   - Electricity restored to full mansion including second-floor game room
   - Arcade meter activates, high score visible

PHASE 3 - ARCADO SEQUENCE NOW UNLOCKED:
7. Obtain quarter from Edna's sealed envelope (microwave steam puzzle)
8. Access Meteor Mess arcade machine in now-powered games room  
9. Insert quarter → High score number displayed = laboratory door code
10. Use Glowing Key on dungeon double-padlocks, enter numeric code
11. Secret Laboratory accessible → proceed to final Meteor weapon sequence

URGENCY LEVEL ANALYSIS:
- NO narrative timer present (unlike pool reactor meltdown)
- Power can remain OFF indefinitely without consequence
- HOWEVER, leaving power off too long increases probability of Purple Tentacle encounter when refitting circuit breakers
  <small>Source: syntax2000_walkthrough.txt, line 151 — "the chances are that the purple tentacle will throw you into the dungeon"</small>
  
This creates SOFT URGENCY (danger probability increases) rather than HARD URGENCY (meltdown certainty), making this puzzle more forgiving than Pool Reactor variation.

MULTI-CHARACTER REQUIREMENT PROOF:
Single character could theoretically complete IF:
- Travel time from basement to attic < "power OFF" maintenance window (which is infinite!)
BUT practical constraints make it unwieldy:
- Must manually carry tools UP multiple flights during execution
- Flashlight operation while walking + tool usage = clunky single-character flow
- Design INTENT clearly signals dual approach through narrative setup

The "two character job" explicitly mentioned in walkthrough NOTE 5 confirms this is DESIGNED as coordination puzzle, not just optionally easier with two actors.
```

**Why It's Multi-Character Coordination**:
1. **Complementary Resource Distribution**: One character holds location/control (breaker panel), other holds tools/skill—neither can independently complete both halves

2. **Sequential State Management**: Power OFF state is TEMPORARY and must be TRANSITIONED between two locations; holding it requires one actor while the other benefits from it

3. **Intended Design Pattern**: Walkthrough explicitly documents "This is another two character job" confirming design intent, not emergent optimization opportunity

**Distinction from Pool Reactor Variation**:  
Circuit breaker uses SEQUENTIAL handoff (power off → repair complete → power on) while pool reactor uses TRUE parallelism (drain and retrieve happening in same time window). Both are Multi-Character Coordination but with different temporal patterns.

---

## Design Considerations

**Implementation Patterns**:
- **Travel Time Budgeting**: Distance between character locations must exceed single-character safe window
- **Inventory Segmentation**: Required items/tools physically distributed so no one character starts with complete set  
- **Action Blocking**: Certain locations/actions unavailable until state change occurs (power off, water drained)
- **Soft vs Hard Deadlines**: Decide if coordination failure has permanent consequence or just requires retry

**Best Practices**:
1. Make character-switch mechanic quick and intuitive—coordination frustration from clunky switching overshadows puzzle logic
2. Provide clear visual/auditory feedback when one character's action completes (circuit "click" sound, valve turn animation, pool drain progress)
3. Consider offering hint about multi-character nature (environmental clue like nearby sign saying "Caution: Reactor—two-person operation required")

**Common Pitfalls**:
- Players may not check all floors/areas for second character positioning options
- Ambiguous success/failure feedback leaves players unsure if coordination succeeded or was unnecessary  
- Overly tight timing windows create frustration rather than cleverness perception

---

## Related Types

| Type | Similarity to Multi-Character Coordination | Distinction |
|------|-------------------------------------------|-------------|
| **Timed Consequence** | Both involve urgency and potential failure consequences | TC focuses on WHEN; MCC focuses on WHO/WHERE (can combine) |
| **Meta-Puzzle Construction** | Both require multi-step completion | MPC has sequential DEPENDENCIES; MCC has synchronized INDEPENDENCE |
| **Multi-Faceted Plan Puzzle** | Both gather requirements from multiple sources | MFP synthesizes separately-found info; MCC physically requires multiple actors |

---

## When to Use This Type

Document a puzzle as Multi-Character Coordination when:
1. ✓ Single character literally CANNOT complete it regardless of knowledge/inventory (design constraint, not player limitation)
2. ✓ Solution REQUIRES using character-switch mechanic at critical action points
3. ✓ Spatial separation between required actions is intentional design choice
4. ✓ Both characters perform MEANINGFUL work (not just "wait here" filler roles)

DO NOT use this classification if:
- Single character COULD solve it with more patience/time (just less efficient = not MCC, standard efficiency optimization)
- One character passively waits while other does all work (solo puzzle in disguise)
- Puzzle is really about sequential dependency chain (use Meta-Puzzle Construction instead)

---

## Variations Extended

| Type | Coordination Pattern | Urgency Level | Example |
|------|---------------------|---------------|-------------|
| **Single-Character Substitution** | Disguise/skin swap as mechanical workaround for blocking condition | Medium | Loom: Reflect draft enters forge as Rusty |

---

### Loom: Forge Entry via Reflection Substitution (Single-Character Substitution)

**Problem**: Blacksmith's Guild entrance requires a Blacksmith's identity—Bobbin Threadbare as a Weaver is physically blocked from entry by the doorman guard with no dialogue options available to convince him otherwise. However, Bobbin just encountered Wellwrought "Rusty" Nailbender, a legitimate Blacksmith who can enter freely. The REFLECT draft enables appearance substitution, mechanically functioning as a single-character workaround for what appears to be a multi-character requirement.

```
BLOCKING CONDITION ANALYSIS:

Standard Entry (Impossible):
- Bobbin approaches guild door → doorman blocks access
- No TALK/USE OPTIONS available to doorman while standing at gate  
- Inventory contains distaff only—no items that would convince guard
- Design intent: Weavers and Smiths are hostile guilds; no peaceful entry as Bobbin


SINGLE-CHARACTER SUBSTITUTION SOLUTION:
<small>Source: walkthrough-king_bennett.html, line 76 — "Cast the REFLECTION on RUSTY. You change appearances."

Source: strategywiki_loom_walkthrough.html, line 694 — "Cast the REFLECTION on RUSTY. You change appearances."

Source: the-spoiler_gamecat.html, lines 305-306 — "use the REFLECT spell on Rusty and you'll swap images. Now walk down to the Blacksmiths' Guild..."
</small>
```

**Preparation Phase (Forest Gravestone)**:
1. After escaping dragon's cave maze, arrive at Blacksmith's cemetery
2. Wake sleeping boy Wellwrought "Rusty" Nailbender using WAKE draft
3. Rusty introduces himself as Blacksmith, explains role in firewood gathering
4. Learn that he works for guild Bobbin needs to enter (unavailable directly)

**Reflection Execution**:
5. Cast REFLECT draft on Rusty's sleeping form → appearance swap animation plays
6. Player character now APPEARS AS Rusty visually (skin/substitution not disguise item equipped)
7. Walk to Blacksmith's Guild entrance
8. Doorman recognizes "Rusty" as legitimate guild member → allows entry without question
9. Bobbin enters forge chamber while maintaining Rusty's appearance

**Why It's Single-Character Substitution Variation**:

The REFLECT draft creates a mechanical equivalent of multi-character coordination using ONLY ONE character through identity substitution:

1. **Physical Blocking Workaround**: Doorman's blocking script checks for Blacksmith identity, not specific character sprite. By swapping appearance via magical means, Bobbin bypasses gatekeeper without fighting or dialogue
2. **Not True Multi-Character**: Unlike MM pool puzzle (two actors at separated locations simultaneously), this is ONE actor playing a different role—the "coordination" comes from having encountered Rusty earlier
3. **Identity-Based Access Control**: The guard checks VISUAL IDENTITY rather than physical presence—this is key to why single character succeeds where it would normally fail

**Distinction from Sensory Exploitation**:
- Sensory Exploitation tricks the GUARD'S PERCEPTION (they see something different)
- Reflection changes THE PLAYER'S APPEARANCE (doorman genuinely sees "Rusty")
- SE: Guard is fooled; Reflect: Player IS (visually) someone else

**Distinction from Stealth/Disguise Items**:
In most adventure games, disguise items are inventory objects that player EQUIPS. In Loom, the appearance change is a CASTABLE SPELL with no ongoing inventory tracking—the transformation itself IS the puzzle solution, not an item application step.

---

### Zak McKracken: Pyramid Escape (Position Lock + Inventory Distribution)

(continuing next...)



**Problem**: Final pyramid tomb in Cairo contains White Crystal needed to complete the alien communication machine. Golden key opens chest but activates timed escape sequence. Three characters must coordinate at sarcophagus, chest/stairs, and exterior—each holding unique inventory items required for successful exit.

<small>
Source: textfiles-com-solution.txt, lines 287-301 — "Switch to Leslie! Find door and walk to Sarcophagus' feet and push them. Switch to Zak! Walk to stairs. Switch to Melissa! Walk to stairs too. Switch to Leslie! Walk away from feet... Use golden key on box. Push button. Switch to Zak! (quickly) Get white crystal"
</small>

**Coordination Requirements**:

```
INVENTORY DISTRIBUTION:
- Melissa: Golden Key (obtained Mars chamber via ankh force-field bypass)
- Leslie: Broom Alien (clears sand blocking pyramid exterior entrance)
- Zak: Bobby Pin Sign (unlocks tomb interior door), Duct-taped fishbowl helmet + wetsuit

SPATIAL BLOCKING CONSTRAINT:
Position A: Sarcophagus feet pushing point
Position B: Staircase passage (appears after feet pushed, but physically blocked by character sprite)
Position C: Upper chamber with golden key box/chest
Position D: Pyramid exterior entrance (sand pile)

COORDINATION SEQUENCE:
1. [LESLIE] Push sarcophagus feet → hidden staircase appears BUT she blocks passage
2. [LESLIE] Walk away from feet area entirely → clears path  
3. [ZAK & MELISSA] Now can ascend to upper chamber
4. [MELISSA] Insert golden key in box, push button → TIMER ACTIVATES
5. [IMMEDIATE SWITCH TO ZAK] Grab white crystal within ~10 second window

ESCAPE PHASE (all three characters):
6. [LESLIE outside] Use broom alien on sand pile → exterior entrance clears
7. [ZAK] Use bobby pin sign in keyhole → interior door unlocks  
8. [All three coordinate through maze to tram exit]
```

**Why It's Multi-Character Coordination**:
1. **Physical Blocking**: Leslie's sprite occupies staircase passage; requires character switch + repositioning before others can ascend
2. **Resource Segmentation**: Golden key (Melissa), broom alien (Leslie), bobby pin sign (Zak) = no single person has complete toolset
3. **Sequential Dependency Pipeline**: Each actor must complete their role before next can progress

**Distinction from Timed Consequence**: Has urgency (crystal grab window), but PRIMARY mechanic is coordinating three actors through blocking states with distributed inventory—not just speed. TC applies to sub-puzzle; overall pyramid escape is MCC.

---

### Indiana Jones: Fate of Atlantis - Team Path Multi-Character Coordination (IJOA)

**Problem**: On the Team path, players control both Indiana Jones and Sophia Hapgood with character-switching capability. Multiple puzzles require transferring control between characters to access separated locations or leverage unique knowledge/abilities each character possesses. Indy's Team path uses SEQUENTIAL handoff coordination rather than MM-style true parallel action.

<small>Source: walkthroughking_ashley_walkthrough.html — "Let Sophia talk to Costa and then try it yourself." (Initial coordination pattern)</small>

**Coordination Pattern Examples**:

Example A - Sternhart Distraction (Tikal):
```
STEP 1 [INDY AT TIKAL]:  
- Meet Dr. Sternhart blocking pyramid entrance
- Direct confrontation fails; dialogue doesn't progress goal  

STEP 2 [TRANSFER TO SOPHIA]:
- Switch character control to Sophia at same location
- Talk to Sternhart → he's fascinated by her psychic insights, distracted

STEP 3 [RETURN TO INDY]:  
- Transfer control back to Indiana Jones
- While Sternhart occupied talking to Sophia → Indy sneaks behind him
- Steal lantern from unattended position

RESULT: SEPARATION OF ATTENTION enables theft impossible for single character alone
```

<small>Source: walkthroughking_ashley_walkthrough.html — "Get Sophia to keep him busy, while you go and steal his lantern."</small>

Example B - Nazi Submarine Guard Elimination (Team Path Finale):
```
STEP 1 [SOPHIA IN ADJACENT CELL]:
- Use intercom to communicate with Sophia through shared cell wall  
- Sophia agrees to create diversion

STEP 2 [COORDINATED DISTRACTION]:
- Sophia makes noise → guards walk toward her position (out of patrol pattern)
- Guard now exposed in vulnerable spot between cells

STEP 3 [INDY EXPLOITS POSITIONING]:
- Walk Indy around behind distracted guard  
- After Sophia knocks him out with thrown object → Indy collects key items

RESULT: PHYSICAL SEPARATION enables flanking hit that single character's positioning cannot achieve
```

<small>Source: walkthroughking_ashley_walkthrough.html — "Get her to distract the guard, and then walk around behind him. After she knocks him out..."</small>

Example C - Gold Box Bead Puzzle (Atlantis):
```
STEP 1 [INDY GATHERS PRE-REQUISITES]:
- Collect two orichalcum beads from game progression
- Acquire golden box mechanism  
- Obtain fish-shaped orichalcum detector item

STEP 2 [TRANSFER TO SOPHIA FOR PHYSICAL POSITIONING]:  
- Convence Sophia to crawl through narrow hole (smaller character model required)
- Sophia positioned behind gate/barrier Indy cannot pass alone

STEP 3 [INDY PROVIDES INVENTORY + DETECTOR FEEDBACK]:
- Give Sophia gold box containing beads
- Use orichalcum fish detector → points at Sophia (has hidden bead in necklace)
- Convence her to place hidden bead into box, close lid

RESULT: CHARACTER-SPECIFIC PHYSICAL CONSTRAINTS (size difference enabling passage through small aperture) + SHARED INVENTORY TRANSFER = solution impossible for solo character
```

<small>Source: walkthroughking_ashley_walkthrough.html — "Convince her to crawl through the hole... Use the fish and it will point at Sophia's necklace, convince her to put it in the gold box."</small>

**Why It's Multi-Character Coordination**:
1. **Physical Impossibility For Single Actor某些**: Guard flanking requires simultaneous positioning of attacker (Indy) and distraction-source (Sophia) in separated spatial contexts. Single character would need to walk BOTH approaches simultaneously—requiring sequential handoff mechanism  
2. **Character-Switching as Core Mechanic**: Puzzle uses the control-transfer command strategically, not just for navigation
3. **Sequential Handoff Pattern (vs MM Parallel)**: Unlike Maniac Mansion's true parallel control, Indy's Team path uses SEQUENTIAL switching—player controls ONE character at a time, but must alternate between them to maintain coordinated positions/attention states

**Distinction from Multi-Faceted Plan**: MFP gathers independent requirements into synthesis; MCC requires simultaneous spatial occupation or sequential handoff for PHYSICALLY impossible actions. The core challenge is CHARACTER COORDINATION, not information synthesis.

**Distinction from Information Brokerage**: While characters exchange items here, the PRIMARY mechanic is SPATIAL SEPARATION + CONTROL TRANSFER—brokerage focuses on NPC trade mapping regardless of physical positioning. MCC's core question: "how do two separated locations coordinate?" not "who trades what?"

---

### Day of the Tentacle: Super-Battery Construction (Cross-Time Sequential Handoff)

**Problem**: Hoagie needs a super-battery to power his Chron-O-John in 1795, but the battery requires three ingredients (oil, vinegar, gold flakes) and Red Edison's help. These materials are scattered across THREE DIFFERENT time periods—oil and vinegar from past NPCs, gold flakes obtained by flushing through Bernard's present timeline. The battery assembly itself requires Hoagie to distract Red Edison while simultaneously being in two places at once: watching the construction AND stealing the finished product before Red can claim it.

<small>Source: swords_and_software_walkthrough.html, lines 940-948 — "Give the patent application to Red Edison, who asks you to bring him oil, vinegar and gold for the super-battery."</small>

```
INVENTORY DISTRIBUTION ACROSS TIME PERIODS:

[1795 - PAST / Hoagie's timeline]:
- Oil: Must convince Benjamin Franklin to give lab coat, then use with kite to generate lightning → collect oil residue from ground after strike? [VERIFY]
- Vinegar: From Ben Franklin's wine bottle? (needs verification of exact source)
- Red Edison's Lab: Where battery assembly occurs
  
[1993 - PRESENT / Bernard's timeline]:  
- Gold flakes: Flushed through time from present (possibly from TV show gold or casino win?)
- Battery plans: Initially taken by Bernard, then flushed back to past

[2026 - FUTURE / Laverne's timeline]:
- Ingredients possibly gathered here as well (needs walkthrough verification)

MULTI-CHARACTER REQUIREMENTS:
1. Item gathering across separated timelines (requires character switching + flushing network)
2. Simultaneous assembly AND theft during distractor window  
3. Hoagie must be positioned to watch construction complete AND grab battery before Red notices
```

**Why It's Multi-Character Coordination**:
While primarily a Cross-Temporal Causality puzzle for ingredient gathering, the FINAL ASSEMBLY requires HOAGIE + RED EDISON coordination—keeping Red distracted while battery finishes cooking, then stealing it. The three-character flushing network (Bernard→Hoagie items) enables the gathering phase which is multi-timeline coordination through the Chron-O-John system rather than traditional spatial separation.

**Distinction from Cross-Temporal Causality**:  
The super-battery puzzle uses time travel as LOGISTICAL ENABLEMENT (moving ingredients between eras to one assembly point). CTC puzzles have actions that alter WORLD STATE across timelines (tree destruction, document changes). Here the battery is crafted in ONE location using MULTISOURCE inputs—the temporal dimension aids collection not causality.

---

### Day of the Tentacle: Human Show Championship (DOTT, Multi-Character Item Assembly)

**Problem**: Laverne needs to win the "Humanity Show" contest with her mummy entry against rival contestant Harrold. The mummy starts as just a skeleton display—it lacks hair, teeth, and laugh capability needed to compete in all three categories (Best Hair, Best Smile, Best Laugh). Each item can only be obtained by a different character in a separated location/time period. Laverne alone CANNOT complete the entry regardless of her actions or dialogue choices.

<small>Source: gamefaqs_tricrokra_walkthrough.txt, lines 398-427 — "Laverne can't do this on her own, so let's get the help from the boys."</small>

```
MULTI-CHARACTER REQUIREMENT ANALYSIS:

BEFORE ASSEMBLY (Item Distribution Across Characters):
- Laverne (Future/2026): Has mummy base entry + nametag for contest registration
  Cannot obtain any enhancement items in her timeline alone
  
- Bernard (Present/1993): Can access Oozo the Clown's laugh box, Dr. Fred's office
  Items: Fake barf (to disqualify Harrold), laugh box (for Best Laugh category)

- Hoagie (Past/1795): Can access Betsy Ross's room, horse in stables
  Items: Spaghetti for mummy hair, horse teeth for smile enhancement
  
SINGLE-CHARACTER IMPOSSIBILITY PROOF:
Laverne is spatially isolated from all item sources. Even if she could travel, 
she cannot perform Bernard's actions (cut clown with scalpel) or Hoagie's actions 
(read textbook to horse until asleep). Each character has UNIQUE CAPABILITIES required.

COORDINATION SOLUTION CHAIN:
```

<small>Source: gamefaqs_tricrokra_walkthrough.txt, lines 398-428</small>

```
PHASE 1 - ITEM GATHERING (Parallel Actions Across Characters):

BERNARD ACQUIRES LAUGH BOX (Present):
1. Use Laverne's scalpel on Oozo the Clown → clown collapses  
2. Pick up laugh box from clown inventory
3. Give/send laugh box to Laverne via Chron-O-John flushing network

BERNARD ACQUIRES BARF DISQUALIFICATION ITEM:
4. Push speaker box in Green Tentacle's room, turn on stereo
5. Fake barf dispenses below (munching machine failure)
6. Send barf to Laverne
  
HOAGIE ACQUIRES MUMMY HAIR MATERIAL (Past):
7. Give spaghetti to Laverne (via item transfer)

BERNARD SENDS TEXTBOOK FOR TEETH EXTRACTION:
8. Give textbook from Dr. Fred's office to Hoagie
9. Hoagie reads textbook to horse → horse falls asleep, teeth exposed
10. Extract horse teeth, send to Laverne


PHASE 2 - ENTRY ASSEMBLY (Laverne as Coordinator):

11. Laverne applies fake barf in front of Harrold → disqualification achieved
12. Apply horse teeth to mummy → Best Smile entry complete
13. Apply soggy noodles (formerly spaghetti) to mummy head → "hair" created  
14. Use fork (sent by Bernard) on noodles → combs them into hair-like appearance
15. Insert laugh box into mummy's pocket → triggers when judges approach
  
PHASE 3 - JUDGING:
16. Talk to judges for ALL categories with enhanced mummy entry
17. Mummy wins Best Hair (noodles+fork), Best Smile (horse teeth), Best Laugh (box)
18. Laverne receives dinner coupon prize → enables kennel guard bribery later
```

**Why It's Multi-Character Coordination**:

1. **Spatial/Temporal Separation of Requirements**: Each character must physically be in their specific time period to obtain items—Laverne cannot get Bernard's laugh box without his presence in the present, cannot get horse teeth without Hoagie reading textbook in past
  
2. **Chron-O-John Flushing Network as Coordination Enabler**: Item transfer across timelines requires using the game's unique three-era flushing system—Bernard flushes to Laverne/Laverne flushes to Hoagie creates bidirectional pipeline

3. **Character-Specific Actions Required**: 
   - Only Bernard can use scalpel on clown
   - Only Hoagie can read horse to sleep with textbook
   - Only Laverne can assemble entry and present to judges
   
4. **Synthesis at Single Point (Mummy Entry)**: All parallel item gathering converges on single object that Laverne must complete

**Distinction from Cross-Temporal Causality**: While items travel across time, the puzzle does NOT alter world state through historical changes. The laughing box in 1993 is same as in 2026—no causal alteration, only LOGISTICAL TRANSFER. CTC changes HISTORY (tree cut → disappears); this moves INVENTORY.

**Distinction from Meta-Puzzle Construction**: The gathering phase IS parallel (Bernard can get laugh box AND barf in any order; Hoagie's spaghetti/teeth are independent). Only the assembly phase has sequence, but that's minimal. Core requirement is MULTI-CHARACTER not sequential crafting.

---

## The Dig Character-Coordination Patterns (Four Aliens, Shared Inventory)

### The Dig: Crew Task Distribution via Radio Communication (TD)

**Problem**: After arriving on the alien planet, crew members split up and explore different locations independently. Unlike traditional multi-character games with explicit character-switching mechanics, The Dig uses a hybrid system: player controls Boston (protagonist) directly while coordinating with Maggie and Brink through radio communication (Penultimate device). Character abilities are specialized—Maggie's linguistic expertise can interpret alien symbols, Brink's archaeology knowledge identifies artifacts—but they are physically SEPARATED by the game world. Coordination occurs through INFORMATION SHARING rather than simultaneous action.

<small>
Source: mogelpower_morgana_walkthrough.txt, lines 1-25 — "Maggie ... renowned journalist and linguistic expert"; "Ludger Brink (noted geologist and archaeologist)"

Source: spoiler_paul_greunke_walkthrough.txt, multiple instances of "talk to Maggie about" and "talk to Brink about" as information exchange points
</small>

**Distribution Requirements**:
```
CHARACTER SPECIALIZATIONS:
- Boston Low (player-controlled): Physical actions, inventory management, exploration
- Maggie Robbins (linguist): Can interpret alien language symbols when shown artifacts
- Ludger Brink (archaeologist/geologist): Expert knowledge of ancient technologies, burial chambers, artifacts

INVENTORY SHARING LIMITATION:
Unlike MM or DOTT where each character has separate inventory, The Dig uses a SINGLE SHARED INVENTORY managed by Boston. However, items must be physically carried TO separated locations where other characters can examine them via TALK/SHOW interactions.

COORDINATION PATTERN ASYNCRONOUS (not simultaneous):
1. Player/Boston collects artifact at Location A
2. Travel to Location B where Maggie/Brink positioned
3. SHOW item → character provides domain-specific insight
4. Apply knowledge gained when returning puzzle context
```

**Information Exchange Solution Pattern**:

[Source: mogelpower_morgana_walkthrough.txt, lines 1120-1137]

Example - Glowing Crystals and Life Restoration:
```
DISCOVERY PHASE (Boston/Museum):
→ Boston collects GLOWING CRYSTALS from museum floor
→ Exhibits show skeleton transformation imagery but no explicit explanation

COORDINATION PHASE (Maggie/Library):  
→ Boston radios Maggie via Penultimate device
→ SHOWS crystals to Maggie over radio
→ Dialogue reveals: "the dead could be raised" via crystal display interpretation
→ Maggie's linguistic knowledge decodes the museum display meaning

APPLICATION PHASE (Boston/Nexus):
→ Boston returns to Brink's body with crystals
→ USEs crystals on body → Brink resurrected as undead being
```

**Why It's NOT Traditional Multi-Character Coordination**:
1. **No Simultaneous Actions**: Characters never act in PARALLEL—no character switching for synchronized tasks
2. **Single Actor Physicality**: All physical actions performed by Boston alone; Maggie and Brink are advisors not doers
3. **Information Transfer, Not Spatial Coordination**: Puzzle resolution comes from Maggie's KNOWLEDGE being applied to Boston's ITEMS

**Correct Classification**: This is more accurately **Information Brokerage** where NPCs (separated party members) provide expert interpretation. The "multi-character" aspect is narrative framing only—mechanically it's NPC expertise acquisition.

---

### The Dig: Weak Door Opening Requires Crew Member Strength (TD, Positional Coordination)

**Problem**: On the Museum Spire, a WEAKENED DOOR cannot be opened by Boston alone despite being unlocked. It requires TWO crew members to apply force simultaneously—one character pushes while the other assists. This is a physical constraint based on character positioning rather than inventory or knowledge distribution.

<small>
Source: spoiler_paul_greunke_walkthrough.txt, lines 184-186 — "try to open weakened door (can't open it yet)"

Source: mogelpower_morgana_walkthrough.txt, lines 1052-1053, 1187-1192 — "I couldn't OPEN the WEAKENED DOOR without help... Brink followed me back through... he did help me OPEN the WEAKENED DOOR"
</small>

**Coordination Requirements**:
```
PHYSICAL CONSTRAINT:
Door mechanism functional but requires combined strength of two characters

CHARACTER DISTRIBUTION:
- Boston (Player): Positioned at door initially
- Brink (NPC): Must be physically present at SAME location

NOT INVENTORY DEPENDENT: Cannot solve through items alone—requires crew positioning

SOLUTION SEQUENCE:
1. [Boston]: Opens doors to Museum Spire, finds weakened door cannot be opened solo
2. [Boston]: Resurrects Brink using glowing crystals at Nexus
3. [Both Characters Together]: Enter tram together (Brink follows Boston on-screen)  
4. [Both at Weak Door]: With BOTH characters present in scene → door can now be OPENED
5. [Result]: Life crystal chamber revealed, additional crystals can be collected
```

**Why It's Multi-Character Coordination (Minimal Form)**:
1. **Physical Presence Requirement**: Puzzle explicitly requires TWO bodies at same location—single character attempt fails with clear feedback ("can't open it yet")
2. **Not Inventory or Knowledge Based**: No item makes Boston stronger; no conversation provides "how to pry door open"
3. **Simplified Coordination Pattern**: Unlike MM's complex spatial separation + timing, this is simple PRESENCE DEPENDENCY—two characters adjacent = action possible

**Distinction from Standard MCC**: This is the MINIMAL form of Multi-Character Coordination requiring:
- Only two characters (not three)
- No simultaneous actions across separated locations
- Simple adjacency requirement for unlock condition

It demonstrates that not all multi-character puzzles require MM's dual-location parallel execution—some merely need character stacking at single locus. The "coordination" is simplified to ensuring BOTH characters arrive BEFORE attempting action, rather than sequencing actions DURING puzzle resolution.

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

### Zak McKracken: Pyramid Escape (Position Lock + Inventory Distribution)

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

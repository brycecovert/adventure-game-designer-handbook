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

### Simon the Sorcerer: Dragon Breathing Puzzle

**Problem**: Dragon's Cave (beyond Sleeping Giant area) contains Fire Extinguisher needed for later woodcutter basement access. However, dragon violently sneezes on every entry attempt, ejecting player from cave. Must find window of opportunity during breathing cycle without visible timer or guidance.

<small>Source: simon1_3.txt, lines 177-180 — "This poor Dragon has got one helluva cold and sneezes you out of the cave. Go back inside and give him the Cold Medicine you picked up near the start of the game. You need to be quick to do this or you'll get sneezed outside again."</small>

**Urgency Setup**:
- No countdown timer visible
- No "X seconds remaining" text prompt  
- No progress bar or sound effect indicating urgency level
- Player must watch for DYNAMIC INDICATORS only: chest movement, snore rhythm, head position

**Execution Window (approximately 3 seconds per attempt)**:
1. Enter cave during correct breathing phase
2. Walk past dragon WITHOUT stopping → go straight to remedy use point
3. Use Cold Remedy on dragon IMMEDIATELY upon approach

**SUCCESS**: Dragon accepts Cold Remedy, collapses into permanent deep sleep; Fire Extinguisher accessible

**FAILURE (Missed Timing)**: Dragon sneezes during approach → player ejected AGAIN; must retry timing

`Why It's Timed Consequence`:
1. **Narrative Urgency Through Behavior Patterns**: Player learns optimal timing ONLY through repeated failure observations—not from explicit UI feedback
2. **Internalize-Through-Failure Model**: Player builds mental model of breathing cycle duration through ejection consequences alone

---

### Maniac Mansion: Pool Reactor Meltdown

**Problem**: Swimming pool contains Glowing Key (dungeon exit access) and Radio (later power puzzle). Atomic reactor at pool bottom uses water as coolant. Draining pool exposes items but initiates meltdown that destroys mansion if not reversed. SINGLE character physically unable to complete both actions in time window.

<small>Source: syntax2000_walkthrough.txt, lines 219-226 — "NOTE 4:- there is an atomic reactor at the bottom of the swimming pool, the water keeps it from over heating and exploding. To get the radio and the glowing key you must first empty the pool, and then afterwards refill it. A single character can not complete the task alone in the time before the reactor overheats."</small>

**Narrative Urgency Established**:
- NO countdown display when valve turned ON
- NO "meltdown in progress" status indicator  
- Player learns from NOTE/cutscene that reactor overheats = house explosion = ALL CHARACTERS DEAD = TRUE GAME OVER

**Two-Character Required Solution**:
```
PHASE 1 - Setup:
- HUNK CHARACTER opens front yard grate → accesses crawl space with water valve
- SECOND CHARACTER positions at pool edge ladder waiting

EXECUTION (character switching essential):
1. [VALVE CHARACTER] Turn ON valve → Pool drains, MELTDOWN INITIATED
2. [QUICK SWITCH TO POOL CHARACTER] Descend ladder as water recedes:
   - Retrieve Radio from pool bottom
   - Retrieve Glowing Key
   - Ascend ladder quickly
3. [SWITCH BACK TO VALVE CHARACTER] Turn valve OFF → Pool refills, meltdown aborted

FAILURE CONSEQUENCE: House explodes, all three characters die—true game over requiring reload/new playthrough
SUCCESS STATE: Both items obtained, reactor safe, story continues normally
```

**Why It's Timed Consequence**:
1. **Narrative Urgency Without Timer**: Meltdown threat exists entirely within diegetic narrative (atomic reactor mechanics) with ZERO mechanical countdown visible anywhere in interface
2. **Permanent Total Failure**: Unlike most adventure game mistakes where one character dies, this failure is GAME-ENDING and TOTAL—entire household destroyed, no partial continuation possible
3. **Multi-Character Coordination Dependency**: Puzzle requires TWO characters precisely because of timing constraints—one cannot traverse between valve and pool fast enough alone

**Distinction from Multi-Character Coordination Type**: The Timed Consequence classification explains WHY urgency exists (narrative stakes). The MCC classification would explain HOW it must be solved (two actors at separated locations). Both classifications apply here, but Timed Consequence is the PRIMARY mechanism—the coordination just makes it achievable.

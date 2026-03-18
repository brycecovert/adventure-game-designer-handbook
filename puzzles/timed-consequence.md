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

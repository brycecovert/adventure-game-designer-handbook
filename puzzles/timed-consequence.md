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

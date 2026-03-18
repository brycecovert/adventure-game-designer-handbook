# Cross-Realm Logistics Puzzle

## Mechanic Definition

The player must manage items across multiple locations/worlds/states—transporting items between places, combining ingredients from different sources, or ensuring items survive transitions. The puzzle tests spatial and temporal thinking about inventory: what to carry, what to acquire, and when.

"Realms" can be literal (dimensions, afterlife, parallel worlds) or figurative (factions, time periods, game states).

## Information Architecture

**Conveyance Method**: Requirement discovery through exploration
- Player learns what ingredients are needed through books, dialogue, or failed attempts
- Player must discover where each ingredient is located across different realms
- Player must determine how to transport/combine items appropriately

**Player Action Pattern**:
1. Learn what's needed (through text or failed attempts)
2. Determine where each component is located
3. Travel to each location and acquire items
4. Transport items to combination point
5. Execute combination → solution achieved

**Core Mechanic**: The puzzle tests forward planning and spatial awareness. Players must remember what they'll need in future locations while managing limited inventory space.

## Design Rationale

- Rewards planning—thinking ahead about future requirements
- Creates world interconnection—realms feel connected through items flowing between them
- Adds strategic depth—inventory management becomes meaningful
- Enables payoff moments—items from early exploration save you later

## Why It's Effective

The satisfaction comes from "just in time" inventory management—having the right item when you need it because you planned ahead. This rewards thorough exploration without punishing missed content.

## Mechanic Variations

| Variation | Realm Type | Logistics Challenge |
|-----------|-----------|-------------------|
| Dimensional | Parallel worlds | Items may not exist in all realms |
| Temporal | Time travel | Items must be retrieved before they're "taken" |
| Faction-based | Political states | Items must be traded between hostile groups |
| State-based | Game states | Items only available in certain conditions |

## Generic Example Structure

**Goal**: Complete [Crafting/Activation] requiring [Ingredients]

**Information Flow**:
- Player learns through text: "The spell requires coal, egg, and hair"
- Player discovers locations: Coal at [Location A], Egg at [Location B], Hair at [Location C]
- Player must travel to each location and collect items
- Player must transport items to [Location D] for combination
- Player executes combination → spell complete

**The puzzle**: Managing items across locations with limited inventory space and no explicit tracking of what's needed.

## Adventure Game Implementation

The limited action set creates specific challenges:
- WALK between realms—travel has cost/time
- Inventory management—limited space forces decisions
- USE items in correct sequence/location
- The puzzle rewards players who explore thoroughly early

This puzzle tests: "Can I think spatially about where items are and plan my inventory accordingly?"

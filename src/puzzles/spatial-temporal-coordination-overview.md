# Spatial & Temporal Coordination Puzzles

Spatial-temporal coordination puzzles require solving problems by managing state or actions across **separated contexts**. Unlike observation-based puzzles (learning within one context) or gathering puzzles (collecting for synthesis), these demand simultaneous or sequential manipulation of variables in distinct domains that interact through defined rules.

The core mechanic is **Coordinate Across Boundaries**: the player must understand how changes in one context (temporal period, spatial dimension, character perspective, or moment in time) create effects in another, then execute actions respecting those causal chains.

## What Makes This Category Distinct

| Feature | Spatial-Temporal Coordination | Other Categories |
|---------|------------------------------|------------------|
| Context | Multiple separated domains interact | Single unified context |
| State Management | Changes persist and propagate across boundaries | Changes localized to current context |
| Timing | Often requires sequencing or synchronization | Order may not matter |
| Cognitive Load | Track interactions between contexts | Track within one domain |

## Subtypes

### [Cross-Temporal Causality](puzzles/cross-temporal-causality.md)
Actions in one time period directly affect another period's state, requiring the player to understand temporal causal chains and plan across eras.

### [Cross-Realm Logistics](puzzles/cross-realm-logistics.md)
Dimensional or alternate-world variant where objects, information, or states must be transferred between parallel spaces with different accessibility rules.

### [Multi-Character Coordination](puzzles/multi-character-coordination.md)
Synchronized or sequential actions across party members or switchable characters, often exploiting each character's unique abilities in tandem.

### [Timed Consequence](puzzles/timed-consequence.md)
Urgency framed narratively rather than through UI timers, requiring the player to complete sequences before story-driven consequences trigger.

## Design Patterns Across Subtypes

1. **Boundary Rules Must Be Clear**: Players need explicit understanding of how contexts interact (time travel causality, which items cross realms, when characters can communicate)

2. **Feedback Shows Cross-Context Effects**: Changes should be observable in both source and target contexts to reinforce the coordination mechanic

3. **Constraint Creates Tension**: Limited transitions between contexts (few time jumps, restricted character switching, one-way realm portals) force meaningful sequencing decisions

## Examples Across Games

- **MI2** (Cross-Temporal): Time-travel puzzle where future actions enable past discoveries
- **KQVI** (Cross-Realm): Transferring objects between human world and faerie dimension with different physics
- **Curse of Monkey Island** (Multi-Character): Coordinating Guybrush and the Elysian Fields' residents simultaneously

## Design Process Notes

**Failure Modes to Avoid:**
- Making boundary rules ambiguous so players can't predict cross-context effects
- Forgetting to provide feedback in the source context after actions propagate elsewhere
- Creating arbitrary constraints that feel like busywork rather than meaningful sequencing

**Playtesting Focus:**
- Do players understand how contexts connect before needing to use that connection?
- Can they predict what will happen in Context B after acting in Context A?
- Do players feel forced into linear sequences or discover multiple coordination approaches?

**Connection to Design Process:**
- See [internal-logic-fairness.md](../design-process/internal-logic-fairness.md) for maintaining consistent cross-boundary rules
- See [bushy-branching.md](../design-process/bushy-branching.md) for offering parallel coordination paths

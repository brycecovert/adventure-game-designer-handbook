# Sequential Construction

## Core Mechanic

Sequential Construction chains puzzle components linearly where Step N's output becomes Step N+1's input. Unlike Multi-Faceted Plan's parallel requirement gathering (A AND B AND C found independently), Sequential Construction requires sequential execution—each action creates the resource needed for the next action. There is exactly one valid forward sequence; steps cannot be reordered or pre-gathered.

## When to Use

When the puzzle solution requires building something through a production line where each intermediate product has meaning only within the chain. Best when the "aha" moment comes from realizing how each step feeds into the next, and failure at any step breaks the entire sequence.

## Solution Chain

1. Complete Step 1 → receive Output Item A
2. Use Item A in context of Step 2 → produce Output Item B
3. Repeat until final step produces Target Solution
4. Backtracking required if wrong interpretation leads to dead-end output

## Examples

### Monkey Island II: Dinky Island Water Filtration System

**Problem**: Need three directions from a parrot to find X marks the spot, but only one cracker exists initially.

**Why It's This Type**: Each intermediate item (broken bottle, crowbar, crackers, distilled water) is only useful within this specific chain. The parrot directions cannot be gathered in parallel—player must sequence the entire production line to obtain all three.

**Solution**:
1. Pick up Bottle (empty, capped)
2. Use Bottle on Rock → Broken Bottle + Crowbar
3. Use Crowbar on Barrel → Cracker #1 revealed
4. Feed Cracker #1 to Parrot → Direction 1 ("East of pond to dinosaur")
5. Use Broken Bottle as funnel into Still → creates distillation capability
6. Obtain Glass O' Water from ocean → use with Still → Distilled Water
7. Find empty Box on jungle path
8. Use Distilled Water on Box → produces Cracker #2 and #3
9. Feed remaining crackers to Parrot → Directions 2 and 3

---

### Beneath a Steel Sky: Grappling Hook Construction Chain

**Problem**: Need to cross to Security HQ building but no bridge or elevator access. Must craft a grappling hook from separately-obtained components.

**Why It's This Type**: Cannot grab anchor before Joey has welding capability; cannot cut cable without Joey's welder active; cannot create hook until both components obtained. Each intermediate item has exactly one purpose in this chain.

**Solution**:
1. Install Joey's welding shell at Factory
2. Tell Joey to CUT cable with welder → CABLE drops to Middle Level
3. Visit Anchor Insurance, speak to Billy Anchor about special policies
4. Have Joey WELD the STATUE while Anchor is on phone → ANCHOR detaches
5. Combine ANCHOR with CABLE in inventory → GRAPPLING HOOK created
6. Use GRAPPLING HOOK on big "S" SIGN across gap → swing to Security HQ

---

### Simon the Sorcerer: Goblin Cave Key Escape Chain

**Problem**: Locked in goblin cave with key inside the lock inaccessible. Need sequence of item interactions where each step produces the condition for the next.

**Why It's This Type**: Paper must be inserted before bone can retrieve key. Each step's output is exactly one step's input. Violating order breaks the chain permanently—key falls inside room and cannot be retrieved.

**Solution**:
1. Open delivery box, stand up fully → Rat Bone visible on floor, collect it
2. LOOK at boxes → find Spell Book, open it → Paper falls out, collect Paper
3. Use Paper on door → slides through bottom crack to interior floor
4. Use Rat Bone on lock → bone jams mechanism, key falls onto Paper
5. Get Paper from floor (now outside) → Paper retrieved with key riding on top
6. Use Key on lock → door opens

---

## Related Types

| Type | Similarity | Distinction |
|------|------------|-------------|
| [Multi-Faceted Plan](multi-faceted-plan.md) | Both involve gathering multiple items | MFP = parallel gathering (A and B and C); SC = sequential assembly line |
| [Pattern Learning](pattern-learning.md) | May involve learning rules | SC = each step has unique output; PL = same rules apply to new domain |
| [Observation Replay](observation-replay.md) | Chain of steps | OR = watch once, reproduce exactly; SC = create new output at each step |

## Index

| Game | Puzzle | Section |
|------|--------|---------|
| MI2 | Dinky Island Water Filtration | Examples |
| BAS | Grappling Hook Construction | Examples |
| SIMON | Goblin Cave Key Escape | Examples |

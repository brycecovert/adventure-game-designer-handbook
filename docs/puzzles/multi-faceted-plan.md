# Multi-Faceted Plan Puzzle

## Mechanic Definition

The player receives requirements for a solution incrementally—some explicit, some implicit—through failed attempts, character dialogue, and world state observation. The puzzle is "solved" not by executing a single action, but by assembling a complete mental model of what's needed.

## Information Architecture

**Conveyance Method**: Partial disclosure
- Initial contact: Player learns *something* is needed, but not what
- Failed attempts: Reveal what is missing through character reactions or internal monologue
- Synthesis: Player combines scattered clues to form complete requirements

**Player Action Pattern**:
1. Attempt solution → fails → learn gap
2. Address gap → attempt again → learn next gap
3. Repeat until complete mental model assembled
4. Execute complete plan

**Core Mechanic**: The puzzle exists in the player's notebook/information management, not in the UI. No checklist is provided.

## Design Rationale

- Rewards deep world engagement—talking to NPCs, exploring thoroughly
- Creates "designer collaboration" feeling—the player feels they built the solution
- Avoids "fetch quest" feel by requiring synthesis, not collection
- Failure is informative, not punitive

## Why It's Effective

The satisfaction comes from the synthesis moment—realizing "I need all three of these" after discovering each requirement in different contexts. This is distinct from "collect 3 items" because the player *must* infer the collection list themselves.

## Mechanic Variations

| Variation | Information Conveyance | Solution Discovery |
|-----------|----------------------|-------------------|
| Dialogue-driven | NPCs mention missing components indirectly | Player must connect separate conversations |
| Environmental | World state changes after partial completion | Player notices what's now accessible |
| Trial-and-error | Failed attempts explicitly state what's missing | Player iterates through gaps |
| Deduction | Partial info requires logical inference | Player pieces together from clues |

## Generic Example Structure

**Initial State**: Player faces obstacle. Attempting to overcome fails with feedback.

**Information Flow**:
- Character A mentions needing "something from the east"
- Character B mentions "I haven't seen [item] since [location]"
- Examining [location] reveals [item] is present but requires [action]
- Completing [action] provides [item]
- Returning to obstacle with [item] reveals *another* requirement

**Player synthesizes**: The complete solution is never stated; player builds it from fragments.

## Game Examples

### Monkey Island II: Voodoo Doll Construction (Largo)

**Requirement Discovery**:
1. Talk to Voodoo Lady → Learn 4 categories needed: Thread, Head, Body, Dead
2. **No single source explains all four sub-requirements**; player must explore each category

**Incremental Solution Assembly**:
- **Thread**: Access Largo's room (requires innkeeper distraction via escaped alligator) → laundry ticket → trade at laundromat for pearly-white bra
- **Head**: Same room access → pick up toupee with lice
- **Body**: Bar scene shows Largo spitting on wall → collect paper from cartographer → absorb spit
- **Dead**: Cemetery exploration → find ancestor tombstone → dig grave with shovel (torn from signpost)

**Synthesis**: Player must track 4 categorical requirements, each solved by distinct sub-puzzles. No explicit checklist; discovery through failed assumptions ("I can't get his clothes directly" → "Maybe laundry works?").

### King's Quest VI: [Pending walkthrough re-analysis]

---

## Related Types

- **Pattern Learning/Knowledge Transfer**: Both involve multi-step processes, but KT is about *same system in different domain* whereas MFP is about *different requirements for single goal*
- **Meta-puzzle Construction (below)**: Distinct from pure Multi-Faceted Plan by requiring sequential interdependence rather than parallel requirement gathering

## Meta-puzzle Construction Variation

A subtype of Multi-Faceted Plan where component puzzles must be COMPLETED in sequence, each enabling the next. Unlike standard MFP's parallel track gathering:

| Standard MFP | Meta-puzzle Construction |
|--------------|-------------------------|
| Four ingredients can be found in any order | Each step unlocks next puzzle state |
| Synthesis = all requirements assembled | Synthesis = correct sequence discovered |
| Example: Voodoo doll (all 4 gathered independently) | Example: Dinky Island water filtration |

**Dinky Island Water Filtration (MI2)**:
1. Find bottle → break on rock to get crowbar
2. Open barrel with crowbar → obtain cracker
3. Feed cracker to parrot → receive still activation clue
4. Use broken bottle as still intake → produce distilled water
5. Use water + box of cracker mix → more crackers for remaining directions

Each component *depends* on previous step's output; parallel gathering impossible.

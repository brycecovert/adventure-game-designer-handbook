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

### Indiana Jones: Fate of Atlantis - Theater Entry (IJOA)

**Problem**: Player must enter the theater where Sophia is giving her lecture, but direct entry is blocked—the gates are locked and tickets are sold out.

<small>Source: gamefaqs_darth_maul_walkthrough.html — "You can also go around back...the gate will be locked so you'll have to find another way in."</small>

**Three Independent Solutions** (any one grants access):

```
SOLUTION A - Persuasion Path:
1. Open back door → Biff (security guard) appears
2. Talk to Biff, choose dialogue praising Sophia repeatedly
3. Biff's attitude softens, allows entry

SOLUTION B - Force Path:  
1. Open back door → Biff confronts player
2. Insult Biff → fight initiated
3. Win fight → Biff incapacitated, path cleared

SOLUTION C - Environmental Path:
1. Push crates at back of building (different location)
2. Access fire escape via opened passage
3. Enter theater through alternate entrance
```

<small>Source: walkthroughking_ashley_walkthrough.html — "There are three possibilities (do all three in turn if you want maximum IQ points): Open the door and fight your way in (insult Biff). Open the door and talk your way in (be kind!). Push the crates out of the way and go to the fire escape."</small>

**Why It's Multi-Faceted Plan**: Three completely independent approaches exist. Player must discover all three by exploration and trial. No single requirement chain—each path is self-contained. The solution set (all valid entry methods) is assembled through world discovery rather than sequential dependency.

**Distinction from Meta-Puzzle Construction**: Each entry method operates independently—solving one doesn't require or enable the others. Player can choose ANY valid approach and proceed, unlike sequential chains where step N feeds into step N+1.

### Indiana Jones: Fate of Atlantis - Lost Dialogue Retrieval (IJOA)

**Problem**: After obtaining initial clues from Iceland and Tikal, Indy must retrieve Plato's Lost Dialogue from Barnett College library, but the book is hidden in one of three inaccessible locations. The game provides three separate discovery methods for locating it.

<small>Source: walkthroughking_ashley_walkthrough.html — "There are now three possibilities for finding the book - again perform all three sets of actions for maximum IQ points."</small>

**Three Independent Retrieval Methods**:

```
METHOD 1 - Chute/Wax Cat:
1. Find gum under desk (library upstairs)
2. Apply gum to coal chute → becomes sticky/usable
3. Melt wax cat statue in furnace using chute mechanism
4. Wax cat removal reveals book compartment

METHOD 2 - Arrowhead/Bookcase:
1. Collect arrowhead from library stacks
2. Get coal from furnace room, dirty rag from basement
3. Wrap arrowhead with rag (creates screwdriver)
4. Use wrapped arrowhead on screws in fallen bookcase
5. Open previously-inaccessible panel → book revealed

METHOD 3 - Key/Chest:
1. Pull totem pole across floor twice using mayonnaise (slippery surface)
2. Access hidden urn atop shelf → obtain key
3. Push large crate in totem room to reveal chest
4. Use key on chest → book obtained
```

<small>Source: walkthroughking_ashley_walkthrough.html — "Use the gum on the coal chute, and melt a wax cat in the furnace. Use the wrapped arrowhead on the screws in the fallen bookcase and open it. Push the large crate (totem pole room) and open the chest with the key."</small>

**Why It's Multi-Faceted Plan**: Three parallel sub-puzzles converge on identical goal (Lost Dialogue acquisition). Player must discover that multiple solutions exist, gather disparate items from library basement/furnace/stacks across unrelated contexts. No single source hints at all three methods—all discovery through exploration and experimentation.

**Relation to Meta-Puzzle Construction**: The totem pole/key/chest chain (Method 3) IS a mini-meta-construction puzzle within the larger MFP framework—items sequence strictly. But the OVERALL Lost Dialogue puzzle is MFP because ANY of three independently-gathered methods suffices.

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

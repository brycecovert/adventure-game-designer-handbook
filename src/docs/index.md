# Puzzle Types in Adventure Games

A taxonomy of puzzle design patterns derived from analysis of King's Quest VI: Heir Today, Gone Tomorrow and The Secret of Monkey Island, focusing on mechanics of information conveyance and player action.

## Table of Contents

| # | Puzzle Type | Core Mechanic | Game Source |
|---|-------------|---------------|-------------|
| 1 | [Multi-Faceted Plan Puzzle](./puzzles/multi-faceted-plan.md) | Requirements discovered incrementally; player synthesizes complete mental model | KQVI |
| 2 | [Sensory Exploitation Puzzle](./puzzles/sensory-exploitation.md) | Character perceptual vulnerabilities exploited through item matching | KQVI/MI |
| 3 | [Metaphor-to-Literal Translation](./puzzles/metaphor-literal.md) | Abstract language interpreted as literal game mechanics | MI |
| 4 | [Information Brokerage Chain](./puzzles/information-brokerage.md) | Implicit NPC exchange network mapped through incremental interaction | KQVI/MI |
| 5 | [Timed Consequence Puzzle](./puzzles/timed-consequence.md) | Narrative urgency without mechanical deadline; consequence is permanent story change | KQVI |
| 6 | [Environmental Storytelling Discovery](./puzzles/environmental-storytelling.md) | Information hidden in environment; discovered through examination, observation | KQVI |
| 7 | [Cross-Realm Logistics Puzzle](./puzzles/cross-realm-logistics.md) | Inventory management across multiple locations/realms; rewards forward planning | KQVI |
| 8 | [Truth Revelation Mechanic](./puzzles/truth-revelation.md) | Items reveal hidden truth; truth itself is the solution | KQVI |
| 9 | [Observation Replay Puzzle](./puzzles/observation-replay.md) | Single viewing of sequence, must reproduce exactly when opportunity arises | MI |
| 10 | [Pattern Learning / Knowledge Transfer](./puzzles/pattern-learning.md) | Learn rule set in low-stakes domain; apply exhaustively under consequences | MI |
| 11 | [Environmental Memo Chain](./puzzles/memo-chain.md) | Scattered written fragments across locations; synthesize narrative to reveal solution | MI |
| 12 | [NPC Distraction Physics](./puzzles/distraction-physics.md) | Manipulate environment to break NPC blocking pattern without confrontation | MI |
| 13 | [Meta-Puzzle Construction](./puzzles/meta-puzzle-construction.md) | Sequential interdependence; each step's output becomes next step's input | MI |

---

## Core Principles

These puzzle types share common characteristics that define adventure game puzzle design:

### Limited Actions, Unlimited Combinations
The standard adventure game action set (LOOK, TALK, USE, WALK, TAKE) is applied in novel ways. The puzzle emerges from the *combination* of actions, not from complex input systems.

### Information as Puzzle Element
The puzzle is often "what does the game know that I need to find out?" rather than "what do I need to do?" Information discovery is the primary mechanic.

### Failure as Feedback
Failed attempts reveal information about what's missing or wrong. The puzzle teaches through consequences, not explicit instruction.

### Synthesis Over Collection
The solution often requires combining information from multiple sources. No single action completes the puzzle—player must synthesize.

---

## Documentation Structure

Each puzzle type document contains:
- **Information Architecture**: How information is conveyed to the player
- **Player Action Pattern**: What the player does with that information
- **Core Mechanic**: The underlying puzzle logic
- **Variations**: Different ways this type can manifest  
- **Adventure Game Implementation**: How limited actions (LOOK, TALK, USE, WALK) map to the puzzle
- **Example Structure**: Generic template showing how the puzzle works
- **Game Examples**: Concrete instances from walkthroughs (KQVI or MI)
- **Related Types**: Cross-references to similar puzzle mechanics

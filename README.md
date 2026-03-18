# Puzzle Types in Adventure Games

A taxonomy of puzzle design patterns derived from analysis of classic Sierra, LucasArts, Revolution Software, and Microids adventure games (King's Quest III-VIII, Maniac Mansion, Secret of Monkey Island, Simon the Sorcerer, Legend of Kyrandia, Sam & Max Hit the Road, The Dig, Full Throttle, Indiana Jones: Fate of Atlantis, Space Quest I-IV, Quest for Glory I-IV, Beneath a Steel Sky, Broken Sword series, Syberia, The Longest Journey, Gabriel Knight), focusing on mechanics of information conveyance and player action. Notable examples include mechanical/clockwork-themed puzzles (SYB), war/siege diplomacy scenarios (QFG3), multi-class ritual divergence (QFG3), and corporate espionage infiltration patterns (SQ3/QFG3).

**New Documentation March 2026**: Complete Quest for Glory IV: Shadows of Darkness analysis revealing German folklore-based puzzles (Leshy riddles Baba Yaga, Rusalka), multi-realm traversal between Mordavia and Avoozl's Darkland dimension, expanded class-specific ritual challenges across seven major cave escape sequences, and dark Gothic horror puzzle themes. Also complete Gabriel Knight 1: Sins of the Fathers analysis documenting investigation/voodoo puzzles (Rada Drum translation, Loa Machine cipher system, Priest Disguise acquisition chain, Snake Scale evidence comparison, Vevě reconstruction multi-faceted plan).

**Previous Documentation March 2026**: Quest for Glory III: Wages of War analysis revealing unique puzzle patterns for class-specific gameplay, multi-faction negotiation mechanics, thief infiltration routes, and supernatural siege defense sequences. Additional coverage: Beneath a Steel Sky (LINC-Space password systems), Broken Sword I & II (plaster chemistry knowledge transfer, warehouse escape MFP), Grim Fandango (coat check → photo finish ticket pattern learning), Simon the Sorcerer (magic word learning system + witch duel combat application), Legend of Kyrandia 1 (bell musical sequence puzzle).

## Table of Contents

| # | Puzzle Type | Core Mechanic | Game Source |
|---|-------------|---------------|-------------|
| 1 | [Multi-Faceted Plan Puzzle](./puzzles/multi-faceted-plan.md) | Requirements discovered incrementally; player synthesizes complete mental model | KQVI/KQVII/KQVIII/SIMON/LK1/SMHTR/INDY2/SQ1/SQ3/SQ4/QFG1/QFG2/QFG3/QFG4/BS1/BS2/TLJ/SYB/GF |
| 2 | [Sensory Exploitation Puzzle](./puzzles/sensory-exploitation.md) | Character perceptual vulnerabilities exploited through item matching | KQIII/KQVI/KQVII/MI/LK1/SMHTR/INDY2/SQ1/SQ3/QFG1/QFG3/QFG4/BS1/TLJ/SYB/GF/SIMON |
| 3 | [Metaphor-to-Literal Translation](./puzzles/metaphor-literal.md) | Abstract language interpreted as literal game mechanics | MI/SQ2/QFG4 |
| 4 | [Information Brokerage Chain](./puzzles/information-brokerage.md) | Implicit NPC exchange network mapped through incremental interaction | KQVI/KQVII/MI/LK1/INDY2/SQ1/TD/BS1/BS2/TLJ/SYB/GF/QFG3/QFG4 |
| 5 | [Timed Consequence Puzzle](./puzzles/timed-consequence.md) | Narrative urgency without mechanical deadline; consequence is permanent story change | KQIII/KQVI/MM/LK1/SIMON/QFG1/QFG3/QFG4/BAS/BS1/SQ3 |
| 6 | [Environmental Storytelling Discovery](./puzzles/environmental-storytelling.md) | Information hidden in environment; discovered through examination, observation | KQVI/KQVII/QFG1/QFG3/QFG4/SYB/GF |
| 7 | [Cross-Realm Logistics Puzzle](./puzzles/cross-realm-logistics.md) | Inventory management across multiple locations/realms; rewards forward planning | KQVI/KQIII/KQVII/KQVIII/LK1/INDY2/SQ3/SQ4/TLJ/SYB/QFG3/QFG4 |
| 8 | [Truth Revelation Mechanic](./puzzles/truth-revelation.md) | Items reveal hidden truth; truth itself is the solution | KQVI/KQVII/QFG3/SQ1/SYB/GF |
| 9 | [Observation Replay Puzzle](./puzzles/observation-replay.md) | Single viewing of sequence, must reproduce exactly when opportunity arises | KQIII/KQVII/KQVIII/MM/MI/LK1/SIMON/INDY2/QFG1/QFG3/QFG4/SQ1/SQ2/SQ3/SQ4/BAS/BS1/BS2/TLJ/SYB/GF/GK1 |
| 10 | [Pattern Learning / Knowledge Transfer](./puzzles/pattern-learning.md) | Learn rule set in low-stakes domain; apply exhaustively under consequences | MI/LK1/TD/KQVII/BAS/BS1/BS2/GF/SIMON/QFG3/QFG4 |
| 11 | [Environmental Memo Chain](./puzzles/memo-chain.md) | Scattered written fragments across locations; synthesize narrative to reveal solution | MI/SQ4/SYB/GF/GK1 |
| 12 | [NPC Distraction Physics](./puzzles/distraction-physics.md) | Manipulate environment to break NPC blocking pattern without confrontation | MI/INDY2/BS1/BS2/TLJ/GF/GK1/SIMON/QFG3 |
| 13 | [Meta-Puzzle Construction](./puzzles/meta-puzzle-construction.md) | Sequential interdependence; each step's output becomes next step's input | MI/MM/KQIII/KQVII/KQVIII/LK1/SMHTR/IJOA/TD/INDY2/SQ1/SQ3/SQ4/BAS/BS1/TLJ/SYB/GF/SIMON/QFG3/QFG4 |
| 14 | [Multi-Character Coordination Puzzle](./puzzles/multi-character-coordination.md) | Multiple characters required for separated location actions; single character physically impossible | MM/DOTT/TD/INDY2 |
| 15 | [Cross-Temporal Causality Puzzle](./puzzles/cross-temporal-causality.md) | Actions in one time period create immediate consequences in another; solution requires understanding historical causality | DOTT/TLJ/GF/QFG4 |
| 16 | [Surreal Logic Bridge](./puzzles/surreal-logic-bridge.md) | Real-world causality rejected for cartoon/comedy equivalences; success requires abandoning realistic reasoning | SMHTR/SIMON |
| 17 | [Comedy-Based NPC Persuasion](./puzzles/comedy-based-persuasion.md) | Dialogue success depends on tonal comedy matching, not logical argument or trade | SMHTR/GF/SIMON |
| 18 | [Symbol Code Translation](./puzzles/symbol-code-translation.md) | Visual symbols on artifact translate to interface actions via shape/color+order matching; applied exhaustively | TD/INDY2/KQVII/KQVIII/BS1/BS2/TLJ/SYB/GF/QFG3/QFG4/GK1 |
| 19 | [Robot Programming / Color-Encoded Sequences](./puzzles/robot-programming.md) | Abstract color→action rule discovery through experimentation; compose original sequences | TD/SYB |
| 20 | [Escalating Combat Progression](./puzzles/escalating-combat-progression.md) | Sequential combat gauntlet where each victory yields weapon needed for next opponent | FT/SQ3/QFG3 |
| 21 | [Corporate Infiltration Puzzle](./puzzles/corporate-infiltration.md) | Multi-layer security breach requiring disguise, behavioral role-play, and credential synthesis | SQ3/QFG3 |
| 22 | [Predator Chase Escape](./puzzles/predator-chase-escape.md) | Redirect environmental hazards toward pursuing antagonist; timing/positioning critical | SQ3 |
| 23 | [Repair Chain Construction](./puzzles/repair-chain-construction.md) | Sequential component installation where each repair enables next system functionality | SQ3 |
| 24 | [Class-Specific Ritual Challenge](./puzzles/class-specific-ritual.md) | Same narrative obstacle solved through mechanically distinct class implementations | QFG3/QFG4 |
| 25 | [Multi-Faction Diplomacy Puzzle](./puzzles/multi-faction-diplomacy.md) | Multiple warring groups independently satisfied before unified conflict resolution possible | QFG3 |


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
- **Game Examples**: Concrete instances from walkthroughs
- **Related Types**: Cross-references to similar puzzle mechanics

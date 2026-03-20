# Why Adventure Games

## The Contract Between Designer and Player

In 1989, Ron Gilbert wrote "Why Adventure Games Suck" while designing *Monkey Island*. It remains the most concise statement of adventure game design principles ever written—not because it prescribes solutions, but because it defines the **contract** between designer and player.

This chapter synthesizes Gilbert's twelve rules and the community's responses to them, establishing the design philosophy that underlies everything in this handbook.

---

## Gilbert's Twelve Rules (1989)

Gilbert's original rules, condensed:

1. **Give the player options** — Progress should never require a single specific action
2. **Unconnected events should not gate progress** — Random interactions shouldn't block story advancement
3. **Reward intent** — If the player has the right idea, the interface shouldn't punish execution
4. **Arbitrary puzzles should not exist** — Solutions must follow from established game logic
5. **Incremental reward** — Players should feel progress at each step
6. **Real-time is bad for drama** — Don't force players into time-pressure situations that break immersion
7. **Puzzles should advance the story** — Every puzzle should reveal something meaningful
8. **Don't require "I forgot to pick it up"** — Avoid solutions that depend on players remembering long-gone opportunities
9. **Avoid backwards puzzles** — Never require finding a solution before encountering the problem
10. **Sub-goals need to be obvious** — Players should always know what their immediate next step might be
11. **End objective needs to be clear** — Players should always know their ultimate goal
12. **Live and learn: no need for "saving"** — Design so save-scumming isn't necessary

---

## What Gilbert Got Right

### The Keys and Locks Philosophy

> "It's all keys and locks." — Ron Gilbert

Every puzzle in an adventure game is a lock. Every action, item, or piece of information is a key. The craft lies in:

- Making keys interesting to find
- Making locks feel earned when opened
- Ensuring keys and locks share a consistent internal logic

### Reward Intent

Gilbert's rule #3—"Reward the intent of the player, not the interface"—is the most violated and most important principle in adventure game design. When a player combines two items correctly but the game rejects it because they didn't use them in the exact right order, the game has broken its contract.

**Source:** [Why Adventure Games Suck](resources/criticism/why-adventure-games-suck-ron-gilbert.md)

### Clear Objectives and Sub-Goals

Rules #10 and #11 address what modern designers call "possibility space"—the set of actions a player believes might be valid. When objectives are unclear, players waste time on irrelevant actions. When objectives are clear but unachievable, they feel frustrated rather than challenged.

**Source:** [Why Adventure Games Suck](resources/criticism/why-adventure-games-suck-ron-gilbert.md)

---

## What Gilbert Missed (or What the Community Added)

### The Inception Principle

Stanislav Costiuc's insight: the goal of adventure game design is **inception**—planting the solution in the player's mind so they feel they discovered it rather than guessed it.

- **Inception:** Player thinks "I should use the doll on LeChuck" because earlier puzzle taught them the pattern
- **Extraction:** Player has no choice but to try random combinations until something works

The difference between good and bad adventure game puzzles is often whether the designer performed inception or forced extraction.

**Source:** [Adventure Puzzle Design](resources/puzzle-design/adventure-puzzle-design-stanislav-costiuc.md)

### Exploration as Reward

Bryce Covert argues that adventure games offer something no other genre does: the **experience of exploration**. The joy of a new room, a new character, a new piece of the world—these are intrinsic rewards that make adventure games worth playing even when puzzles frustrate.

This means puzzle design must serve the exploration experience, not contradict it.

**Source:** [Why Adventure Games Rock](resources/defense/why-adventure-games-rock-tickstales.md)

### Death as Design Tool

Gilbert avoided death ("Live and learn"). Sierra embraced it. The truth is more nuanced: death can create meaningful tension when it serves story, but becomes frustration when it punishes without warning.

**Source:** [Why Adventure Games Rock](resources/defense/why-adventure-games-rock-tickstales.md)

---

## The Synthesis: A Design Contract

Based on Gilbert's rules, community response, and documented best practices, the adventure game design contract includes:

| Principle | Description |
|-----------|-------------|
| **Inception over Extraction** | Plant solutions in players' minds through earlier puzzles |
| **Internal Logic** | Every solution must follow from established game rules |
| **Reward Intent** | When players have the right idea, let them succeed |
| **Visible Progress** | Every step should feel like advancement |
| **Clear Objectives** | Players should always know their goal and immediate sub-goals |
| **Fair Failure** | Death and failure should teach, not punish |
| **Exploration Serving Design** | Puzzles should enhance world exploration, not gate it |

---

## How to Use This Chapter

This chapter establishes the **philosophy** behind the handbook. When you read about specific puzzle types in Part III, these principles should inform every design decision.

When designing a puzzle, ask:
- Does this puzzle perform **inception** or **extraction**?
- Does the solution follow **internal logic** established earlier?
- Does this puzzle **reward the player's intent**?
- Does this puzzle make the player feel **smarter or stuck**?

If the answer is "stuck," you're violating the contract.

---

## Further Reading

- [14 Deadly Sins of Graphic-Adventure Design](resources/criticism/14-deadly-sins-graphic-adventure-design-filfre.md) — Jimmy Maher's comprehensive catalog of contract violations
- [Seven Deadly Sins of Adventure Games](resources/criticism/seven-deadly-sins-adventure-games.md) — Adrian Chmielarz on why adventure games died
- [Moon Logic and Divergent Thinking](resources/moon-logic/moon-logic-divergent-thinking.md) — Psychological perspective on fair vs. unfair puzzles

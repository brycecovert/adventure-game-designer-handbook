# Bushy Branching

## Preventing Player Stuckness Through Parallel Paths

"Bushy branching" is the practice of designing multiple parallel puzzle paths so players always have alternatives when they get stuck.

---

## The Core Problem: Linear Lock-In

In a purely linear puzzle chain:

```
A → B → C → D → E
```

If a player gets stuck on B, they cannot progress. They must:
1. Keep trying B
2. Consult a walkthrough
3. Stop playing

All three options create frustration.

---

## The Solution: Bushy Branches

```
    ┌── B1 ──┐
A ──┼── B2 ──┼── E
    └── B3 ──┘
```

If a player gets stuck on one branch, they can try another. The key insight is that **branches should be independent but converge at natural points**.

---

## Types of Branching

### Horizontal Branching

Multiple puzzles in the same "tier" that can be completed in any order.

**Example:** Gathering three map pieces from three different locations.

**Design rule:** Branches should have similar difficulty and length.

### Vertical Branching

Alternative solutions to the same problem.

**Example:** Open a locked door with the key, or pick the lock, or find another way around.

**Design rule:** Alternative solutions should be equally valid but not equally obvious.

---

## Balancing Branch Difficulty

When using parallel branches:

| Problem | Solution |
|---------|----------|
| One branch is too hard | Add a hint or easier sub-puzzle |
| One branch is too easy | Add a wrinkle to extend it |
| Branches converge too early | Delay convergence points |
| Branches never converge | Create artificial dependencies |

---

## The Caged Situation Technique

"A caged situation in an adventure game is an easy situation almost all the time."

Start players in a restricted capability scenario, then expand their abilities through the puzzle progression.

**Pattern:**
1. Player can only do X
2. Puzzle requires X + Y
3. Player solves puzzle to get Y
4. Now player has X + Y
5. Repeat

This creates natural difficulty progression and prevents early-game stuckness.

---

## Source Material

This technique is documented in:
- [Why Adventure Games Suck](resources/criticism/why-adventure-games-suck-ron-gilbert.md)
- [Puzzle Design in Adventure Games - StackExchange](resources/puzzle-design/puzzle-design-adventure-games-stackexchange.md)

---

## Placeholder: Bushy Branching Tutorial

**To be written:** A design exercise showing how to take a linear puzzle chain and add bushy branching to it, with before/after diagrams.

**Key questions to answer:**
- How many branches are enough?
- When should branches converge?
- How do you balance difficulty across branches?

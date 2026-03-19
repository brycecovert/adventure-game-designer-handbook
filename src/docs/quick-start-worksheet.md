# Quick-Start Design Worksheet

Use this worksheet when starting a new adventure game puzzle design. Print or copy for each puzzle you design.

---

## 1. Puzzle Dependency Chart Template

Map your puzzles before coding. This chart reveals bottlenecks, parallel paths, and dead ends.

```markdown
| Puzzle # | Puzzle Type | Dependencies (What this needs) | Unlocks (What this enables) | Difficulty |
|----------|-------------|-------------------------------|----------------------------|------------|
| 1        | [type]      | [prerequisites]              | [next puzzles]            | [1-5]      |
| 2        | [type]      | [prerequisites]              | [next puzzles]            | [1-5]      |
| 3        | [type]      | [prerequisites]              | [next puzzles]            | [1-5]      |
```

**Targets** (from LucasArts analysis):
- 3-5 parallel chains
- 9-10 items per puzzle chain
- Bushy over linear

---

## 2. Design Checklist

For each puzzle, verify these principles:

- [ ] **Limited Actions**: Could this puzzle work with fewer verbs?
- [ ] **Information as Puzzle Element**: Does the player know what they need to find?
- [ ] **Failure as Feedback**: Does failing teach something useful?
- [ ] **Synthesis Over Collection**: Must player combine multiple sources?
- [ ] **Inception**: Does the puzzle teach its own solution?
- [ ] **Reward Intent**: Does near-correct execution work?
- [ ] **Internal Logic**: Does the solution follow from established rules?
- [ ] **Clarity of Objective**: Does the player know their goal?

If you answered "no" to 3+ questions, redesign before coding.

---

## 3. Questions to Ask About Each Puzzle

Answer these six questions before finalizing any puzzle:

1. **What is the single most important piece of information the player needs?**
   `_______________`

2. **How will the player discover this information?**
   `_______________`

3. **What is the "hook" that makes this puzzle memorable?**
   `_______________`

4. **What happens if the player gets stuck?** (hint system connection)
   `_______________`

5. **Does this puzzle connect to the player's overall goal?**
   `_______________`

6. **Is there more than one way to solve it?**
   `_______________`

---

## 4. My Puzzle Design

**Puzzle Name:** _______________
**Type:** _______________
**Core Mechanic:** _______________

**Solution Chain:**
1. _______________
2. _______________
3. _______________

**Dependencies:** _______________
**Unlocks:** _______________
**Failure Mode I'm Worried About:** _______________

**Playtest Question:** _______________

---

## 5. Blank Puzzle Template

Copy this section for each puzzle in your game:

**Puzzle Name:** _______________
**Type:** _______________
**Core Mechanic:** _______________
**Solution Chain:**
1. _______________
2. _______________
3. _______________
**Dependencies:** _______________
**Failure Mode I'm Worried About:** _______________
**Playtest Question:** _______________

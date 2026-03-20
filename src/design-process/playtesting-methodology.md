# Playtesting Methodology

## Why Adventure Games Need More Testing Than Any Other Genre

Jimmy Maher wrote: "Testing is vital to any other form of game, but with adventures it can mean *everything*. A terrible adventure can become a great one following just a few weeks of testing."

---

## Why Testing Matters More for Adventure Games

Unlike action games where skill is the primary challenge, adventure games challenge **understanding**. When players get stuck, it's often because:

- They didn't understand a clue
- They missed an item
- They formed an incorrect mental model
- The solution violated their expectations

Only playtesting reveals these gaps.

---

## Types of Playtests

### Blind Playtest

New players experience the game with no guidance.

**What it reveals:** Where players naturally get stuck, what confuses them, what they try that doesn't work.

### Focused Testing

Testers target specific puzzles or sections.

**What it reveals:** Whether specific puzzles work as intended.

### Stress Testing

Rapid, aggressive play — testers try to break the game.

**What it reveals:** Edge cases, dead ends, sequence breaks.

---

## Identifying Stuck States

### The "Dead Air" Signal

When a player stops interacting for more than 10-15 seconds, they're likely stuck.

**Design response:** This is where hint systems should trigger (see Hint System Design chapter).

### The Wandering Signal

When players repeatedly visit the same rooms without purpose, they lack direction.

**Design response:** Sub-goals may be unclear.

### The Frustration Signal

When players express annoyance or start trying random actions, they've lost confidence.

**Design response:** Failure feedback may be unclear or misleading.

---

## Iteration Patterns

| Problem | Response |
|---------|----------|
| Players stuck on puzzle X | Add a hint, or add alternative path |
| Players missing item Y | Add visual/audio cue, or move item |
| Players forming wrong model | Add clarifying NPC dialogue |
| Players bored | Remove padding, add stakes |

---

## Community Testing

Modern indie developers use:
- itch.io beta testers
- Discord communities
- Game jam feedback
- Let's Play analysis

Watch where players get stuck in videos. Where do they pause? Where do they ask questions?

---

## Source Material

- [14 Deadly Sins](resources/criticism/14-deadly-sins-graphic-adventure-design-filfre.md) — "Testing is everything" quote
- [Flaws of Point & Click Adventures](resources/criticism/flaws-undead-genre-point-click-adventures.md)

---

## Placeholder: Playtesting Protocol Template

**To be written:** A downloadable/playable template for conducting adventure game playtests, including:
- Observer checklist
- Tester questionnaire
- Stuck state identification guide
- Iteration prioritization matrix

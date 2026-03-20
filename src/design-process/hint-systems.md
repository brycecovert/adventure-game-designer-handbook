# Hint System Design

## When and How to Help Stuck Players

Every adventure game player will get stuck. Hint systems are how you help them without breaking the experience.

---

## The Principle: Help Without Removing Satisfaction

A good hint:
- Acknowledges the player is stuck
- Provides just enough guidance to unstick
- Preserves the "aha" moment

A bad hint:
- Reveals the entire solution
- Triggers too early or too late
- Feels like the game is insulting you

---

## Types of Hint Systems

### 1. In-World Hint Characters

A character in the game world provides hints when consulted.

**Example:** Gabriel Knight 3's hint character.

**Advantages:** Can be integrated into narrative; feels diegetic.

**Disadvantages:** Requires dialogue writing; can feel contrived.

### 2. Contextual Nudges

The game detects stuckness and offers subtle prompts.

**Example:** Thimbleweed Park's hint line.

**Advantages:** Automatic; can calibrate to player behavior.

**Disadvantages:** Requires detecting stuckness accurately.

### 3. Graduated Hint Systems

Multiple levels of hints, from vague to specific.

**Level 1:** "Are you sure you want to do that?"
**Level 2:** "Have you tried looking in the basement?"
**Level 3:** "The key is in the basement, behind the barrels."

**Advantages:** Respects player autonomy; lets them choose how much help.

**Disadvantages:** Requires designing multiple hint levels.

---

## Detecting Stuckness

### Quantitative Triggers

- No forward progress for N seconds
- Repeated failed attempts on same puzzle
- Excessive exploration of same area

### Qualitative Triggers

- Player hasn't interacted for extended time
- Player is revisiting areas already completed
- Player has collected items but not tried combinations

### Playtest-Derived Triggers

Watch where blind testers get stuck. These become your hint triggers.

---

## The "Dead Air" Reduction Principle

Every second a player is stuck with no feedback is a failure of design. Either:
1. The puzzle should have given better feedback, or
2. A hint should trigger

The goal is to minimize "dead air" without removing challenge.

---

## Designing Good Hints

### Good Hint Characteristics

| Characteristic | Description |
|----------------|-------------|
| **Specific location** | Directs player to area |
| **Partial information** | Narrows possibility space without revealing solution |
| **Actionable** | Player knows what to try next |
| **Non-spoiling** | Player still feels they solved it |

### Bad Hint Characteristics

| Characteristic | Why It's Bad |
|---------------|--------------|
| Full solution | Removes challenge entirely |
| Wrong direction | Wastes player time |
| Too vague | Doesn't help unstick |
| Too early | Removes opportunity to struggle |

---

## Source Material

- [Thimbleweed Park Preview](resources/history/thimbleweed-park-ron-gilbert-rockpapershotgun.md) — discusses hint line design
- [Puzzle Design StackExchange](resources/puzzle-design/puzzle-design-adventure-games-stackexchange.md)

---

## Placeholder: Hint System Implementation Guide

**To be written:** Technical guide for implementing hint systems in common adventure game engines (Ren'Py, Adventure Game Studio, custom engines), including:
- Stuckness detection algorithms
- Graduated hint UI design
- Playtesting hint calibration

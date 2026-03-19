# Inspiration Page Template

Use this exact structure for every game page in `/src/inspiration/`.

## File Naming

`src/inspiration/<game-name-kebab-case>.md`

Example: `loom.md`, `beneath-a-steel-sky.md`, `day-of-the-tentacle.md`

---

## Template Structure

```markdown
# <Game Name> (<Year>)

[2-3 sentence intro summarizing game, unique mechanics, and why its puzzles matter. Include first citation if applicable.]

## At a Glance

| | |
|---|---|
| **Release Year** | <Year> |
| **Developer** | <Studio/Designer> |
| **Core Mechanic** | <One-sentence description of what distinguishes this game> |
| **What players found enjoyable** | "<Direct quote from walkthrough>" — [brief context] [<Citation>]. Additional playthrough notes: "<second quote>" [<Citation>] |

![Game overview screenshot — <descriptive alt text hint for capturing the shot>](./<game>-overview.png)

---

## Puzzle 1: <Descriptive Name>

### Problem

[2-3 sentences explaining what must be accomplished. If puzzle involves a riddle or lengthy dialogue, format as blockquote:]

> "Exact text from game"
  
[Optional citation for setup details]

![<Specific visual to capture — key objects, UI state, character positions>](./<game>-puzzle1.png)

### What Makes It Rewarding

[2-3 sentences on mechanical design choice that creates satisfaction. Include direct quote from walkthrough author about the puzzle experience when available:]

"<Quote about player's moment of discovery or appreciation>" [<Citation>]

[Continue with mechanical analysis — why this isn't trial-and-error, how information was fairly conveyed, etc.]

### Solution

[1 sentence on outcome achieved]

### Steps
1. [Specific, mechanical action]
2. [Specific, mechanical action]
3. [Specific, mechanical action]
4. [Continued as needed...]
5. [Final action that completes puzzle]

### Screenshots
<at least one screenshot, with alt text. If no screenshot is available, make the alt text have the content that can be used to find one later>

[<Pattern Type>](../puzzles/<pattern-slug>.md) — [1 sentence explicitly connecting this example to the core mechanic of the pattern type, distinguishing from similar types].

---

## Puzzle 2: <Descriptive Name>

### Problem

[same structure as Puzzle 1]

![<descriptive alt text hint>](./<game>-puzzle2.png)

### What Makes It Rewarding

[same structure as Puzzle 1, with direct quote]

### Solution

[same structure as Puzzle 1]

### Steps
[n numbered specific actions]

[<Pattern Type>](../path/to/pattern.md) — [connection to pattern mechanic].

---

## Puzzle 3: <Descriptive Name>

### Problem

[same structure as Puzzle 1]

![<descriptive alt text hint>](./<game>-puzzle3.png)

### What Makes It Rewarding

[same structure as Puzzle 1, with direct quote]

### Solution

[same structure as Puzzle 1]

### Steps
[n numbered specific actions]

[<Pattern Type>](../path/to/pattern.md) — [connection to pattern mechanic].

---

## Other Puzzles

| Name | Problem & Solution | Pattern Type |
|------|-------------------|--------------|
| <Name 1> | [<15-word description>; include inline quote citation like `<"text" <Citation>>` if memorable] | [<Pattern>](../path/pattern.md) |
| <Name 2> | [Description with citation if needed] | [<Pattern>](../path/pattern.md) |
| <Name 3> | [Description with citation] | [<Pattern>](../path/pattern.md) |
| <Name 4> | [Description] | [<Pattern>](../path/pattern.md) |
| <Name 5> | [Description with citation] | [<Pattern>](../path/pattern.md) |
| <Name 6+> | [Continue to ~8 entries total, or as many notable puzzles as exist] | [<Pattern>](../path/pattern.md) |

---

### References

[<CitationKey1>] Full Author Name, Source Title (Year). URL

[<CitationKey2>] Full Author Name, Source Title (Year). URL

[<CitationKey3>] Full Author Name, Source Title (Year). URL
```

---

## Word Count Target

**~1,000 words total**, broken down as:
- Introduction + At a Glance: ~150 words
- Each featured puzzle: ~250 words × 3 = ~750 words
- Other Puzzles table + References: ~150 words

---

## Critical Requirements Checklist

Before committing:

- [ ] Exactly 3 featured puzzles with full Problem/Rewarding/Solution/Steps sections
- [ ] One screenshot placeholder per puzzle with specific alt text hint describing what to capture
- [ ] At least one direct quote formatted as blockquote or inline in each "What Makes It Rewarding" section
- [ ] At minimum one direct quote in "What players found enjoyable" field of At a Glance table
- [ ] All Pattern Type links point to existing files (verify with `ls src/puzzles/`)
- [ ] Filename matches kebab-case of game name
- [ ] References section includes full URLs for all cited walkthroughs
- [ ] Citation keys match between in-text citations and References section

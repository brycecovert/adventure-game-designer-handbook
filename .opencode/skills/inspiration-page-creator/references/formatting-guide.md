# Formatting Guide for Inspiration Pages

## Direct Quotes

### Blockquotes (for riddles, lengthy dialogue, or key game text)

Use when quoting verbatim game content that's central to the puzzle mechanics:

```markdown
### Problem

A riddle on his mother's gravestone hints at the solution:

> "Destiny shall draw the lightning  
> Down from heaven; roll its thunder  
> Far across the sea to where I  
> Wait upon the Shore of Wonder"

[source citation if needed]
```

**Guidelines:**
- Preserve original line breaks with `<space><backslash>` at end of line
- Use only when text is 2+ lines or critically important verbatim
- Place after problem setup, before analysis

---

### Inline Quotes (for walkthrough author commentary)

Use when incorporating another author's observation about player experience:

```markdown
As one walkthrough notes: "Look at the sheep and cast the Dye draft to dye them green, which will hide them from the dragon" [THayes].
```

Or integrated into sentence:

```markdown
One walkthrough captures the moment of revelation: "Remember the poem on your mother's grave? 'On the day the sky is opened...' You got it!" [GameCat].
```

**Guidelines:**
- Always attribute with citation key in brackets immediately after closing quote
- Use double quotes for external sources, single quotes for nested quotes
- Keep under 2 lines; if longer, use blockquote
- Prefer quotes that capture player's "aha moment" rather than mechanical steps

---

## Citations

### Citation Key Format

Create short keys from author/source names:

| Author/Source | Citation Key | Example |
|--------------|-------------|----------|
| Tom Hayes (GameFAQs) | THayes | [THayes] |
| Game Cat (The Spoiler) | GameCat | [GameCat] |
| Bobbin Threadbare (LP Archive) | BobbinThreadbare | [BobbinThreadbare] |
| StrategyWiki Community | StrategyWiki | [StrategyWiki] |

**Rules:**
- Use PascalCase for multi-word keys
- No spaces or underscores in key itself
- Keep to max 3 words
- Be consistent across single page (don't switch from THayes to Hayes)

---

### References Section Format

At end of page, before any closing content:

```markdown
### References

[THayes] Tom Hayes, GameFAQs Walkthrough (2008). https://gamefaqs.gamespot.com/pc/564920-loom/faqs/26748

[GameCat] Game Cat, The Spoiler Centre Solution. https://the-spoiler.com/ADVENTURE/Lucas.Arts/loom.5.html

[BobbinThreadbare] Bobbin Threadbare, Let's Play Archive LP (2011). http://lparchive.org/Loom/
```

**Format:**
- `['CitationKey']` followed by one space
- `Full Author Name,` (comma after name)
- `Source Title (Year).` (year in parentheses if known, period after)
- `URL` (full URL, no line break before it)
- Blank line between entries

---

## Pattern Type Links

### Verify Links Work

Before committing, run:

```bash
ls src/puzzles/ | grep -i <pattern-keyword>
```

Or manually verify the file exists at `src/puzzles/<exact-filename>.md`.

**Common Patterns & Correct Paths:**

| Pattern Type Display Name | File Path (correct link) |
|--------------------------|-------------------------|
| Pattern Learning | `../puzzles/pattern-learning.md` |
| Multi-Faceted Plan | `../puzzles/multi-faceted-plan.md` |
| Meta-Puzzle Construction | `../puzzles/meta-puzzle-construction.md` |
| Sensory Exploitation | `../puzzles/sensory-exploitation.md` |
| Metaphor-to-Literal | `../puzzles/metaphor-literal.md` (NOT metaphor-to-literal) |
| Distraction Physics | `../puzzles/distraction-physics.md` |
| Observation Replay | `../puzzles/observation-replay.md` |

### Always Test Markdown Links

After writing page, build to verify:

```bash
mdbook build 2>&1 | grep -i "<game-name>.md"
```

If no warnings or errors about missing links, all links are valid.

---

## Common Pitfalls to Avoid

### ❌ Wrong: Vague pattern type descriptions
```markdown
[Pattern Learning](../puzzles/pattern-learning.md) — This is a pattern learning puzzle because you learn something.
```

### ✅ Correct: Mechanical distinction
```markdown
[Pattern Learning](../puzzles/pattern-learning.md) — Player learns a system (DYE changes object color) in Domain A (Hetchel's tent), then applies the same rule in Domain B (field). Unlike Multi-Faceted Plan, this is a single mechanic applied consistently—not multiple requirements gathered from different sources.
```

---

### ❌ Wrong: Quote without attribution
```markdown
"One playthrough notes: 'the magical land was unique.'"
```

### ✅ Correct: Proper citation placement
```markdown
One playthrough notes: "the magical land was unique and just as memorable twenty years later" [BobbinThreadbare].
```

---

### ❌ Wrong: Broken link
```markdown
[Metaphor-to-Literal](../puzzles/metaphor-to-literal.md) — ...
```

### ✅ Correct: Verified existing file path
```markdown
[Metaphor-to-Literal](../puzzles/metaphor-literal.md) — ...
```

---

## Screenshot Alt Text Hints

Each placeholder should describe **what to capture**, not just generic "gameplay":

```markdown
❌ ![Game screenshot](./loom-puzzle1.png)
✅ ![Gravestone showing riddle and tree symbol that matches mountaintop tree](./loom-puzzle1.png)
✅ ![Workers visible at top of green tower before APPEAR draft is cast](./loom-puzzle3.png)
```

**Good alt text includes:**
- Specific objects in frame
- Key UI state or character action
- "Before" or "after" state if showing transformation
- Visual connection between elements (e.g., "matches", "contrasts")

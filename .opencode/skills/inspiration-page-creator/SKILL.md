---
name: inspiration-page-creator
description: This skill should be used when creating new game pages for the Inspiration section of puzzle-design-kb. It automates walkthrough analysis, puzzle extraction, and documentation in a standardized format while managing TODOS.md and committing after completion.
---

# Inspiration Page Creator Skill

## Quick Start

```
1. Load this skill before starting any inspiration page work
2. Read todos/TODOS.md to find next game task marked with [ ]
3. Execute autonomous workflow (no user intervention needed)
4. Commit and mark TODO complete after page creation
```

---

## Workflow: Autonomous Page Creation

### Step 1: Identify Target Game from TODOS

Read `todos/TODOS.md` and locate the first unchecked game entry under "Puzzle Sampling Chapter":

```markdown
- [ ] <Game Name>: analyze walkthrough and create game section
    - [ ] Examine walkthrough files in src/walkthroughs/<game-dir>/
    - [ ] Identify the 3 best puzzles using analysis-checklist.md criteria
    - [ ] Write Problem/Why It Works/Solution/Steps for each puzzle
    - [ ] Link each puzzle to its pattern type from the Playbook
```

**Set target game name and corresponding walkthrough directory path.**

---

### Step 2: Examine Walkthrough Files

Navigate to `src/walkthroughs/<game-dir>/` and list all files:

```bash
ls src/walkthroughs/<game-dir>/
```

Read the README first if it exists (`README.txt` or similar). Note available walkthrough sources, authors, and any special notes about the game's design.

Read **at least 2 complete walkthroughs** from different sources to:
- Identify all puzzles in the game
- Find quotes about player enjoyment moments
- Gather multiple perspectives on puzzle mechanics
- Collect citation information (author name, source, URL)

---

### Step 3: Select 3 Best Puzzles

Apply these criteria for puzzle selection (from `docs/analysis-checklist.md`):

**Priority 1: Mechanical Clarity**
- Can the pattern type be clearly identified?
- Is the solution chain reproducible across different playthroughs?
- Does it demonstrate a documented pattern from Playbook?

**Priority 2: "Aha Moment" Presence**
- Do walkthrough authors explicitly mention discovery or satisfaction?
- Is there a moment where information clicks together non-trivially?
- Does the solution feel earned rather than obvious?

**Priority 3: Pattern Diversity**
- Avoid selecting 3 puzzles of identical pattern type if possible
- Show range of mechanics the game offers
- Include at least one puzzle requiring multi-step reasoning

**Select exactly 3 puzzles. Note any 5-8 additional notable puzzles for "Other Puzzles" table.**

---

### Step 4: Extract Required Content For Each Featured Puzzle

For **each of the 3 selected puzzles**, extract:

1. **Problem Setup (2-3 sentences)**
   - What must player accomplish?
   - Key information or prerequisite knowledge required
   - If riddle or dialogue involved, copy exact game text for blockquote

2. **What Makes It Rewarding (2-3 sentences + quote)**
   - Mechanical design choice that creates satisfaction
   - How information was fairly conveyed to player
   - Why this isn't trial-and-error or fetch-quest filler
   - **REQUIRED:** Direct quote from walkthrough author about experiencing this puzzle

3. **Solution (1 sentence)**
   - Outcome achieved upon completion

4. **Steps (numbered list)**
   - Specific, mechanical actions (no "solve puzzle" vagueness)
   - Each step should be an observable player action
   - Include state changes or discovered information as relevant

5. **Pattern Type Classification**
   - Identify which Playbook pattern type matches
   - Write 1-sentence distinction connecting this example to core mechanic
   - Differentiate from at least one similar pattern type

6. **Screenshot Placeholder**
   - One per puzzle with descriptive alt text hint
   - Describe specific visual: objects, UI state, "before/after" moment

---

### Step 5: Extract Additional Content

1. **At a Glance Table Data:**
   - Release year
   - Developer/studio/designer name(s)
   - One-sentence core mechanic description
   - Minimum 2 direct quotes about player enjoyment with attributions

2. **Other Puzzles (6-10 entries):**
   - Name of puzzle
   - 10-15 word problem and solution summary
   - Pattern type classification with link
   - Include inline quotation citations if memorable moments exist

3. **References Section:**
   - Full author names
   - Source titles
   - Publication years (if known)
   - URLs for all cited walkthrough sources

---

### Step 6: Create the Page File

Create file at `src/inspiration/<game-name-kebab-case>.md` using exact template from `references/template.md`.

**While writing:**
- Fill each section with extracted content
- Format direct quotes as blockquotes (riddles/game text) or inline commentary (author observations)
- Use citation keys consistently: `[Author]`, `[SourceAuthor]`, etc.
- Include exactly 3 featured puzzles, plus Other Puzzles table
- Add screenshot placeholders with descriptive alt text for each major puzzle

**Word count target:** ~1,000 words total (don't exceed significantly)

---

### Step 7: Verify Pattern Type Links

List existing pattern files to verify all links work:

```bash
ls src/puzzles/*.md
```

Cross-reference every Pattern Type link in your page against this list. **Correct any broken paths before proceeding.**

Common corrections:
- `metaphor-to-literal.md` → `metaphor-literal.md` (actual filename)
- Ensure relative path is `../puzzles/` (not `./puzzles/`)

Build book to confirm no link errors:

```bash
mdbook build 2>&1 | grep -i "<game-name>"
```

If warnings or errors appear about missing links, fix them.

---

### Step 8: Update SUMMARY.md

Add entry under `# Inspiration` section in `src/SUMMARY.md`:

```markdown
## Games Analyzed

- [<Game Name> (<Year>)](inspiration/<game-name-kebab-case>.md)
```

If "Inspiration" section doesn't exist yet, add it after "Core Principles":

```markdown
# Core Principles

- [Core Principles](core-principles.md)

# Inspiration

## Games Analyzed

- [<Game Name> (<Year>)](inspiration/<game-name-kebab-case>.md)
```

---

### Step 9: Update TODOS and Commit

Mark the game task as complete in `todos/TODOS.md`:

**Before:**
```markdown
- [ ] <Game Name>: analyze walkthrough and create game section
    - [ ] Examine walkthrough files in src/walkthroughs/<game-dir>/
    - [ ] Identify the 3 best puzzles using analysis-checklist.md criteria
    - [ ] Write Problem/Why It Works/Solution/Steps for each puzzle
    - [ ] Link each puzzle to its pattern type from the Playbook
```

**After:**
```markdown
- [x] <Game Name>: analyze walkthrough and create game section
    - [x] Examine walkthrough files in src/walkthroughs/<game-dir>/
    - [x] Identify the 3 best puzzles using analysis-checklist.md criteria
    - [x] Write Problem/Why It Works/Solution/Steps for each puzzle
    - [x] Link each puzzle to its pattern type from the Playbook
```

**Stage and commit:**

```bash
git add src/inspiration/<game>.md todos/TODOS.md src/SUMMARY.md
git commit -m "Complete: <Game Name> inspiration page with 3 featured puzzles and pattern type links"
```

---

## Critical Validation Checklist

Before committing, verify:

- [ ] File created at correct path: `src/inspiration/<kebab-case-game-name>.md`
- [ ] Exactly 3 featured puzzles with full Problem/Rewarding/Solution/Steps sections
- [ ] One screenshot placeholder per featured puzzle with specific alt text hint
- [ ] At least one direct quote in each "What Makes It Rewarding" section (formatted correctly)
- [ ] Minimum two quotes in "What players found enjoyable" field of At a Glance table
- [ ] Other Puzzles table has 6-10 entries with pattern links and descriptions
- [ ] References section includes full URLs for every cited walkthrough source
- [ ] All Pattern Type links verified against existing `src/puzzles/*.md` files
- [ ] Citation keys are consistent (key in text matches entry in References)
- [ ] Word count near 1,000 words (acceptable range: 800-1,200)
- [ ] SUMMARY.md updated with new game entry
- [ ] TODOS.md marked complete for this game task
- [ ] No unintended files staged (check `git status` before commit)

---

## Autonomy Rules

**Do not ask user for input on:**
- Which puzzle to describe next (proceed through all 3 selected puzzles)
- Word count adjustments (trust the ~1,000 word target)
- Whether to include a specific detail (if it fits guidelines, include it)
- Commit message format (use standard template: "Complete: <Game>...")

**Do ask user for input on:**
- Only if walkthrough files are missing or incomplete in expected directory
- If Pattern Type classification is genuinely ambiguous (after checking existing playbook types)
- If game design decision is unclear from available walkthroughs

---

## Common Pitfalls to Avoid

### ❌ Wrong: Narrative-over-mechanics focus
```markdown
"The tragic story of Bobbin Threadbare and his quest to save the world..."
```

### ✅ Correct: Mechanical description
```markdown
"Player learns magical drafts by observing enchanted objects; each draft can then be reused elsewhere."
```

---

### ❌ Wrong: Vague reward analysis
```markdown
"This puzzle is clever and creative."
```

### ✅ Correct: Mechanical satisfaction
```markdown
"The player realizes the dragon only eats *white* sheep (established in dialogue), so DYE learned on wool becomes camouflage—applying rules consistently across contexts rather than trial-and-error spam."
```

---

### ❌ Wrong: Missing quote attribution
```markdown
"One walkthrough notes this was memorable."
```

### ✅ Correct: Proper citation placement
```markdown
"One walkthrough notes: 'the magical land was unlike any I'd ever seen' [AuthorKey]."
```

---

## File Path References

- **Output location:** `src/inspiration/<game-name>.md`
- **Walkthrough sources:** `src/walkthroughs/<game-dir>/`
- **Task tracking:** `todos/TODOS.md`
- **Navigation links:** `src/SUMMARY.md`
- **Pattern type files:** `src/puzzles/*.md`
- **Skill references:** This skill's directory contains template and formatting guide

---

## Execution Command Flow

```bash
# Step 1: Identify target game
cat todos/TODOS.md | grep -A 5 "^\- \[ \]" | head -20

# Step 2: List walkthrough files  
ls src/walkthroughs/<game-dir>/

# Step 7: Verify pattern links exist
ls src/puzzles/*.md

# Step 8: Build check after page creation
mdbook build 2>&1 | grep -i "<game-name>"

# Step 9: Commit changes
git add src/inspiration/<game>.md todos/TODOS.md src/SUMMARY.md
git commit -m "Complete: <Game Name> inspiration page with 3 featured puzzles and pattern type links"
```

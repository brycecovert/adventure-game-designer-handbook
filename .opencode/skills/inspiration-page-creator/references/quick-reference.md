# Inspiration Page Creation — Quick Reference Card

## 5-Step Autonomous Workflow

```
1. Read todos/TODOS.md → Find first unchecked game task
2. Read walkthroughs in src/walkthroughs/<game>/ → Extract puzzle data + quotes
3. Create src/inspiration/<game>.md → Use template.md structure
4. Verify pattern links work → ls src/puzzles/*.md
5. Update SUMMARY.md + TODOS.md → git commit
```

---

## Puzzle Selection Criteria (Top 3 Only)

**Priority Order:**
1. **Mechanical clarity** — Pattern type identifiable, solution reproducible  
2. **"Aha moment" presence** — Walkthrough mentions discovery/satisfaction  
3. **Pattern diversity** — Don't pick 3 identical pattern types  

*Additional puzzles go in "Other Puzzles" table (6-10 entries)*

---

## Required Quotes (Minimum)

| Section | Quote Requirement | Format |
|---------|------------------|--------|
| At a Glance | 2+ player enjoyment quotes | Inline: `"quote" [Key]` |
| Each of 3 puzzles | 1+ walkthrough author quote | Blockquote or inline with attribution |
| Other Puzzles (optional) | Memorable moments only | Inline where relevant |

---

## Screenshot Alt Text Format

**Must describe what to capture, not generic "gameplay":**

```markdown
✅ ![Gravestone showing riddle and tree symbol that matches mountaintop tree](./loom-puzzle1.png)
❌ ![Game screenshot](./loom-puzzle1.png)
```

---

## Pattern Type Link Verification

**Common corrections:**
- `metaphor-to-literal.md` → `metaphor-literal.md` ❌→✅  
- Always use `../puzzles/` relative path from inspiration folder
- Verify file exists: `ls src/puzzles/ | grep <keyword>`

---

## Citation Format Rules

**Keys:** PascalCase, no spaces, 3 words max

```markdown
[THayes] → Tom Hayes, GameFAQs Walkthrough (2008). URL
[GameCat] → Game Cat, The Spoiler Centre Solution. URL
```

---

## Word Count Target

- **Total:** ~1,000 words  
- Acceptable range: 800-1,200 words
- If over 1,300 words → trim "What Makes It Rewarding" sections first

---

## Pre-Commit Checklist (Copy-Paste)

```
[ ] File path: src/inspiration/<kebab-name>.md ✓
[ ] Exactly 3 featured puzzles with Problem/Rewarding/Solution/Steps ✓
[ ] One screenshot placeholder per puzzle with descriptive alt text ✓
[ ] Direct quote in each "What Makes It Rewarding" section ✓
[ ] Two+ quotes in At a Glance table ✓
[ ] Other Puzzles table has 6-10 entries ✓
[ ] References section has full URLs ✓
[ ] All pattern links verified against src/puzzles/*.md ✓
[ ] Citation keys consistent throughout ✓
[ ] Word count near 1,000 ✓
[ ] SUMMARY.md updated ✓
[ ] TODOS.md marked complete ✓
```

---

## Commit Message Template

```
Complete: <Game Name> inspiration page with 3 featured puzzles and pattern type links
```

**Files to stage:**
- `src/inspiration/<game>.md`
- `todos/TODOS.md`  
- `src/SUMMARY.md`

---

## mdbook Build Check

After creating page, verify no link errors:

```bash
mdbook build 2>&1 | grep -i "<game-name>"
```

No output = all links valid ✓

# Agent Instructions

## Repository Purpose

This is a **documentation-only knowledge base** built with [mdbook](https://rust-lang.github.io/mdBook/) that captures mechanical puzzle design patterns from classic point-and-click adventure games. The handbook documents **how information is conveyed and what player actions solve puzzles**—pattern-based, not narrative-based.

### Directory Structure

| Path | Contents |
|------|----------|
| `/src/puzzles/` | Markdown documents defining puzzle type patterns with mechanical analysis and game examples |
| `/src/docs/` | Style guides and validation checklists for contributing pattern documentation |
| `/src/SUMMARY.md` | Navigation structure for mdbook |
| `/src/walkthroughs/` | Source walkthrough documents used as reference material for pattern extraction |
| `/book/` | Generated HTML documentation (after `mdbook build`) |
| `/src/mdbook.template` | Template file that converts patterns into puzzle design questions usable by LLMs |

### Handbook Structure Compliance

All content must align with the target handbook structure. When creating or updating pages, follow these conventions:

**Introduction**: Hook material showcasing masterful puzzles and their mechanical appeal.

**Inspiration**: Puzzle analyses from 30+ games using Problem/Why It Works/Solution/Steps format. Link every example to its puzzle type in the Playbook.

**Playbook Pages** (in `/src/puzzles/`): Each page must include:
- `## Core Mechanic`: Three sentences max explaining what this pattern achieves
- `## Solution Chain`: Numbered list of specific player actions
- `## Examples`: Exactly 3 game examples with "Why It's This Type" analysis
- `## Related Types`: Table differentiating from at least 2 similar types

**FAQ Pages** (in `/src/docs/`): Actionable solutions to common design problems. Reference playbook patterns where applicable.

## Primary Goals

1. **Establish a puzzle design playbook**: Help designers understand puzzle type structures independent of plot and setting
2. **Enable LLM-assisted design**: Provide concrete critique criteria grounded in proven patterns so LLMs can avoid generating generic "find key, open door" slop
3. **Document reference implementations**: Catalog specific puzzle applications from games like Monkey Island (MI1/MI2) and King's Quest VI (KQVI)

## Target Audience & Goals Alignment

When creating content, keep in mind:
- Readers want reproducible mechanical patterns, not narrative analysis
- Examples should illustrate the pattern, not obscure it with story details
- Every puzzle type must be setting-independent to match the playbook goal
- Game source code abbreviations (MI1, MI2, KQVI) signal we're documenting reference implementations

## What Agents Should Do

### When Creating Puzzle Type Documentation

1. Extract patterns that are **mechanic-oriented**, not story-oriented. The pattern should apply across settings regardless of narrative context
2. Use game source code abbreviations (MI1, MI2, KQVI)—not full game names
3. Include exactly 3 illustrative examples per puzzle type
4. Create a `## Related Types` section that differentiates from at least 2 similar types using the table format below
5. Write a **Core Mechanic** section of no more than three sentences
6. Use numbered lists for **Solution Chain** with specific actions (never "solve puzzle")
7. Target no more than 1,000 words per page
8. Use kebab-case filenames matching the document title

### When Analyzing Walkthroughs

Load the `adventure-puzzle-analyzer` skill before:
- Converting walkthrough text into structured puzzle documentation
- Extracting patterns from game walkthrough files in `/src/walkthroughs/`

## Task Management with TODOS.md

### Creating and Managing Todos

All tasks must be tracked in `todos/TODOS.md` using a hierarchical structure where tasks can have subtasks. Use this format:

```markdown
# TODO List

- [ ] **Top-level task**
  - [ ] Subtask one
  - [ ] Subtask two with more detail about what needs to be done
  - [ ] Subtask three
- [ ] Another top-level task
  - [ ] Nested subtask
```

### Task Completion Workflow

1. **Before starting any multi-step work**: Create or update `todos/TODOS.md` with a hierarchical task list
2. **After completing each subtask**: Update its status to `[x]` in TODOS.md
3. **After marking ANY task or subtask complete**: Commit the changes immediately with a message describing what was completed
4. **When user requests a top-level task**: Do not stop until ALL subtasks are complete. Use subagents for parallel work where appropriate

### Top-Level Task Execution Protocol

When a user asks to complete a top-level task:
1. Break it down into subtasks and record them in TODOS.md
2. Execute subtasks sequentially or use subagents for independent work streams
3. After each subtask completes, mark it `[x]` and commit
4. Only report completion when ALL subtasks under that top-level item are done
5. If a task requires multiple specialized skills, delegate to appropriate subagents

### Commit Rules for Task Completion

- Every time a task or subtask is marked complete in TODOS.md, create a git commit
- Commit message should reference the completed task: `"Complete: <task description>"`
- Do not batch multiple task completions into a single commit

## Style & Formatting Requirements

**Frontmatter**: None required (no YAML headers)

**Link format**: Relative links using `puzzles/file.md` in SUMMARY.md and docs

**Tables**: Use for comparisons, requirement summaries, quick-reference matrices, and Related Types sections

**Lists**: 
- Numbered lists for sequential steps or solution chains
- Bullet lists for enumerations without order

**Emphasis**: Bold (`**text**`) for field labels like **Setup**, **Solution Chain**, key terms

**Code blocks**: Use triple-backticks with `markdown` for example structures showing game flows

**Tone**: Mechanical and precise. Avoid vague terms ("clever," "creative"). Describe *how* not just *that*.

### Related Types Format

Every new puzzle type must include:
```markdown
## Related Types

| Type | Similarity | Distinction |
|------|------------|-------------|
| Multi-Faceted Plan | Both gather across sources | MFP = different categories, not unified system |
```

## Common Pitfalls to Avoid

Agents should explicitly distinguish between:

**Pattern Learning vs Observation Replay**: Pattern learning teaches a *system* with reusable rules. Observation replay memorizes a *sequence* to reproduce verbatim.

**Multi-Faceted Plan vs Meta-Construction**:
- MFP: Multiple requirements gathered in any order, synthesized at the end
- Meta-Construction: Sequential chain where step N's output enables step N+1

**Brokerage vs Sensory Exploitation**: Brokerage = trade network (item for item). Sensory = exploit NPC perception weakness directly.

## Validation Checklist

Before considering documentation complete, verify:

- [ ] Core Mechanic is no more than three sentences
- [ ] Solution Chain uses numbered list with specific actions (not "solve puzzle")
- [ ] "Why It's This Type" explicitly connects example to core mechanic
- [ ] Related Types section differentiates from at least 2 similar types
- [ ] Game source code used (MI1, MI2, KQVI) — not full game name
- [ ] Filename matches kebab-case of document title
- [ ] Page targets no more than 1,000 words

## Build & Validation Commands

```bash
# Build static HTML documentation
mdbook build

# Serve with auto-reload during editing
mdbook serve --open

# Validate markdown syntax
npx -y remark-cli src/*.md src/puzzles/*.md src/docs/*.md
```

## Skill Integration

The `.opencode/skills/adventure-puzzle-analyzer/` directory contains:
- `SKILL.md` — Full agent workflow for analyzing walkthroughs
- `examples.md` — Concrete formatting examples

**Agents must load the `adventure-puzzle-analyzer` skill when:**
- Analyzing game walkthroughs to extract puzzle patterns
- Converting walkthrough text into structured puzzle documentation

## Task Execution

When possible, use subagents to complete work. For complex multi-step tasks (analyzing walkthroughs, creating new puzzle type documentation from scratch), delegate appropriately rather than attempting all steps in a single agent session.

**For any user request**: Check TODOS.md first, then update cross-references after each task completion before committing.

Always refer to @README.md, as it has the overall structure of this project.

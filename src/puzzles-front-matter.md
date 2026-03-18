# Puzzle Design Knowledge Base

A handbook documenting puzzle design patterns from classic point-and-click adventure games (King's Quest VI, Monkey Island series, and beyond). This repository captures mechanical patterns—how information is conveyed and what player actions solve puzzles.

## Repository Purpose

This is a **documentation-only knowledge base**. No code, no tests, no build process.

- `/puzzles/` — Markdown documents defining puzzle type patterns
- `/walkthroughs/` — Source walkthrough text for game analysis (empty placeholder)
- `/README.md` — Master index with table of contents linking all puzzle types

## Navigation

Use the sidebar to browse:

- **Core Principles** — Fundamental characteristics of adventure game puzzles
- **Puzzle Types by Category** — Organized by mechanical similarity (Multi-Source Discovery, Sequential Construction, etc.)
- **Documentation Guidelines** — Style guide and validation checklists for contributors

## Game Source Codes

- MI1 = Monkey Island 1
- MI2 = Monkey Island 2
- KQVI = King's Quest VI
- KQVII = King's Quest VII
- KQVIII = King's Quest VIII
- QFG3 = Quest for Glory III
- QFG4 = Quest for Glory IV
- GF = Grim Fandango
- SIMON = Simon the Sorcerer
- BS1 = Broken Sword I
- BS2 = Broken Sword II
- TLJ = The Longest Journey
- SYB = Syberia
- GK1 = Gabriel Knight 1

## Adding New Content

When analyzing a new game walkthrough:

1. Extract each puzzle's solution from walkthrough text
2. For each, identify: what info was needed, how it was conveyed, what action solved it
3. Match against existing types OR create new type document
4. Add example to relevant puzzle type file under `## Game Examples`
5. If creating new type: update `SUMMARY.md` table of contents

Load the `adventure-puzzle-analyzer` skill when working with this repository.

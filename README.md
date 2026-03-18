# Adventure Game Designer's Handbook

A knowledge base documenting puzzle design patterns from classic point-and-click adventure games. This repository distills mechanical patterns—how information is conveyed and what player actions solve puzzles—from games like King's Quest VI and the Monkey Island series into a reusable reference for designers.

## Why This Exists

At six years old, watching my grandfather play King's Quest made me realize software development was my path. That curiosity fueled 35 years of building.

Time has not been kind to adventure games. They're mocked—often justly—for moon logic, artificial barriers, and limited replayability. The Sierra classics I loved sinned most egregiously.

But when executed well, adventure games elevate above other genres. Their limitations breed creativity: finite interaction options force designers to maximize lateral thinking and novelty. The result is emergent, quality puzzle design that no amount of mechanical complexity can replicate.

## What Makes Adventure Game Design Special

Consider the "Knowledge Transfer" puzzle from Monkey Island. When learning to swordfight, the player memorizes responses to insults—each insult has a specific comeback. Later, fighting the swordmaster presents new insults where those same comebacks apply. The game never telegraphs this connection. It's not difficult, but it's masterful: you have yourself to credit for recognizing the pattern and applying it to a new domain.

That's the design quality this handbook documents and empowers others to replicate.

Unfortunately, very little material exists on how to design adventure games well. Even revered designers often discuss why the genre struggles. This project aims to change that.

## Goals

- **Establish a puzzle design playbook**: Help designers understand puzzle type structures independent of plot and setting
- **Enable LLM-assisted design**: Current SOTA models produce generic puzzle slop when asked about adventure games. This playbook provides concrete critique criteria grounded in proven patterns
- **Demonstrate local model capability**: The handbook was co-authored with Qwen3.5-27B—a model that punches above its weight class. If this model can grok these ideas, larger models certainly can
- **Document reference implementations**: Catalog specific puzzle applications from popular adventure games for study and pattern recognition
- **Support structural visualization** (future): Generate detailed Mermaid diagrams showing puzzle structure from design documents or walkthroughs

## Non-Goals

- Automating adventure game design. This is a reference, not a generator.

## Handbook Structure

The handbook follows this structure:

### Introduction

A hook showcasing a masterful puzzle and why it works, followed by why this handbook exists and what readers can expect.

### Inspiration

A sampling of 30+ popular adventure games, with the best three puzzles from each analyzed using a structured format: Problem, Why It Works, Solution, Steps. Each sample puzzle links to its corresponding puzzle type in the Playbook section. This serves as concrete reference material for pattern recognition.

### Playbook: Puzzle Types

A page for each puzzle type, following a consistent mechanical format:
- Understandable title describing the core mechanic
- What this puzzle type achieves and when to use it
- Mechanic-oriented analysis (setting-independent patterns)
- Three illustrative examples from reference games
- Cross-links to cited puzzles in Inspiration section
- Index table of other game implementations

### FAQ: Common Design Problems

Practical answers to recurring design challenges:
- My game is too linear—how do I create parallel paths?
- Players get stuck at the same spot—how do I avoid moon logic?
- How do I create variation in how a puzzle might be solved?
- And so on...

## Repository Structure

| Path | Contents |
|------|----------|
| `/src/puzzles/` | Markdown documents defining puzzle type patterns with mechanical analysis and game examples |
| `/src/docs/` | Style guides and validation checklists for contributing pattern documentation |
| `/src/SUMMARY.md` | Navigation structure for mdbook |
| `/walkthroughs/` | Source walkthrough documents used as reference material for pattern extraction |
| `/book/` | Generated HTML documentation (run `mdbook build` to create) |
| `/src/mdbook.template` | Template file that converts patterns into puzzle design questions usable by LLMs |

## Building the Documentation

```bash
# Build static HTML
mdbook build

# Serve with auto-reload during editing
mdbook serve --open
```

## Why This Matters

There's no canonical reference on adventure game puzzle mechanics. Designers reinvent patterns or miss them entirely. LLMs generate generic "find key, open door" slop without understanding what made Monkey Island or King's Quest memorable.

This handbook captures the mechanical DNA of great adventure game puzzles—pattern-based, not narrative-based—so designers can build on proven foundations rather than starting from scratch.

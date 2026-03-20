# Puzzle Dependency Charts

## The Method LucasArts Used to Design Puzzle Networks

This chapter documents the puzzle dependency charting technique developed by Noah Falstein and used by Ron Gilbert and the LucasArts team to design *Monkey Island* and *Maniac Mansion*.

---

## What Is a Puzzle Dependency Chart?

A puzzle dependency chart is a visual map showing how puzzles relate to each other—which puzzles must be completed before others, which can be done in parallel, and where bottlenecks exist.

**Why it matters:** Without charting, designers create "linear chains" that trap players who get stuck. Charts reveal where to add branching.

---

## Chart Components

### Nodes

Each puzzle or sub-puzzle becomes a node in the chart.

**Example:** In *Monkey Island 2*, "get map piece from Largo" is a node.

### Dependencies

Arrows show which puzzles require completion of others first.

**Example:** "Fight LeChuck" requires "assemble voodoo doll" requires "get voodoo ingredients."

### Parallel Tracks

When puzzles don't depend on each other, they can be done simultaneously.

**Example:** In MI2 Part 2, four map piece chains run in parallel.

---

## How to Create a Chart

1. **List all puzzles** in your game
2. **Identify dependencies** — what requires what
3. **Draw nodes and arrows**
4. **Look for bottlenecks** — single points that gate multiple paths
5. **Add branches** to reduce bottleneck frustration
6. **Balance difficulty** — ensure parallel paths have similar length

---

## Bushy vs. Linear Charts

| Type | Structure | Player Experience |
|------|-----------|------------------|
| **Linear** | Single chain, one puzzle after another | Frustrating when stuck; no alternatives |
| **Bushy** | Parallel branches; multiple paths | Players always have something to try |

**Key insight:** "Make your branches 'bushy' by allowing players to work on simultaneous tasks." This is the #1 technique for preventing player stuck-ness.

---

## Quantitative Targets

Based on analysis of *Monkey Island 2*:

| Metric | Target |
|--------|--------|
| Items per puzzle chain | 9-10 |
| Parallel chains | 3-5 |
| Rooms per chain | Variable |
| Characters per chain | 3-5 |

These aren't rules—they're reference points from a well-balanced game.

---

## Tools for Charting

- Pen and paper (fast, low-friction)
- Diagramming tools (Lucidchart, draw.io)
- Spreadsheets (for tracking item locations)

The tool matters less than actually doing it.

---

## Common Patterns

### The Hub and Spoke

One central puzzle (hub) with multiple prerequisite puzzles (spokes).

**When to use:** Major story beats that require preparation.

### The Diamond

Multiple puzzles feed into one, which feeds into multiple.

**When to use:** climactic moments that summarize earlier progress.

### The Grid

Multiple parallel chains of equal length.

**When to use:** Mid-game when you want players to choose their own path.

---

## Source Material

This technique is documented in:
- [The Technique LucasArts Used](resources/puzzle-design/lucasarts-puzzle-dependency-charts.md)
- [Monkey Island 2 Puzzle Design](resources/puzzle-design/monkey-island-2-puzzle-design.md)

---

## Placeholder: Detailed Tutorial

**To be written:** A step-by-step tutorial with a worked example, showing how to chart a small game's puzzles from start to finish.

**Resources to draw from:**
- LucasArts puzzle dependency chart images
- Unpoint/Unclick methodology (Christopher Sacchi)

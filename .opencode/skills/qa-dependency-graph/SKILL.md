---
name: qa-dependency-graph
description: Analyzes walkthroughs and dependency graph mermaid diagrams, and fixes them
---
# QA Dependency Graph Skill

Systematic validation and repair of puzzle dependency graphs for point-and-click adventure games.

## Purpose

Audit an existing dependency graph to identify and fix structural errors, orphaned nodes, and layout issues. Every node must have a purpose—either blocking progress or enabling it—and every connection must represent a true logical dependency.

## What This Graph Represents

### Locks and Keys

Adventure games are fundamentally about **locks** (obstacles) and **keys** (solutions). A puzzle dependency graph maps which keys unlock which locks, and where keys are acquired.

```
PROBLEM: Gnome won't talk
    ↑
    │ (enabled by)
    │
ACTION: Give nightingale to gnome
    ↑
    │ (requires)
    │
OUTCOME: Have nightingale
    ↑
    │ (enabled by)
    │
ACTION: Trade with pawn broker
```

### Node Types

| Prefix | Type | Definition |
|--------|------|------------|
| `A_` | Action | Player takes action: `A_PICK_UP_FLOWER`, `A_TALK_TO_FERRYMAN` |
| `O_` | Outcome | Result of action: `O_RECEIVE_RABBIT_FOOT`, `O_LEARN_SPELL` |
| `P_` | Problem | Obstacle to overcome: `P_DOOR_LOCKED`, `P_GNOME_WON'T_LISTEN` |
| `C_` | Consequence | Gateway/convergence: `C_ALL_GNOME_ITEMS`, `C_GATE_OPENED` |
| `UNLOCK_` | Unlock | Major unlock gateway: `UNLOCK_ISLAND_TRAVEL`, `UNLOCK_GNOME_ACCESS` |
| `START` | Start | Game beginning node |
| `END` | End | Game completion node |

### What This Graph is NOT

- **Walkthrough order**: The sequence you play through the game
- **Scene-by-scene narrative**: What happens in each room
- **Locked choice mechanics**: Player-selectable options that don't block progress

## Validation Checklist

### Node Rules

- [ ] Every node has at least one INPUT edge (except `START`)
- [ ] Every node has at least one OUTPUT edge (except `END`)
- [ ] Every `A_` action connects to its resulting `O_` outcome
- [ ] No orphaned nodes (nodes floating without connections)

### Lock/Unlock Rules

- [ ] Locked choices (pick 1-of-N rewards) show items as **UNLOCKED**, not as sequential trades
- [ ] Major unlocks (Magic Map, etc.) have dedicated gateway nodes when 5+ lines would cross
- [ ] Gateway nodes are concrete and singular (`UNLOCK_TRAVEL` not `UNLOCK_EVERYTHING`)

### Dependency Rules

- [ ] No batched transitive dependencies: if `A→B→C` and `C` specifically requires `A`, then `A→C` must exist
- [ ] Sequential walkthrough order ≠ logical dependency
- [ ] "Going to location" ≠ "Unlocking location"

### Layout Rules

- [ ] Top-down flow: `START` at top (centered), `END` at bottom (centered)
- [ ] Fan-out model: parallel paths spread apart, then converge
- [ ] Only `START` and `END` outside subgraph groupings
- [ ] Area titles are prominent and readable (fontsize=18)
- [ ] Areas use index-based color palette
- [ ] **FLAT STRUCTURE**: No nested subgraphs - all subgraphs at same level
- [ ] **Same Area = Same Color**: If area appears twice (start AND end), use SAME color

## Dangling Node Detection

Run the detection script to identify orphans, dead-ends, and undefined references:

```bash
cd /path/to/repo
./.opencode/skills/qa-dependency-graph/scripts/check-dangling-nodes.sh /path/to/chart.mmd
```

### Interpreting Results

**Orphan nodes** (no input edge):
- Usually means the node is disconnected from its prerequisite
- Fix: Add edge from the node's logical prerequisite
- If truly optional, add note explaining it

**Dead-end nodes** (no output edge):
- May be acceptable for terminal outcomes or truly optional content
- Check: Does this item ever get used? If yes, fix the connection

**Undefined references**:
- Node is referenced in an edge but never defined
- Fix: Add the node or correct the edge target

## Research Protocol for Orphaned Nodes

For EACH orphan node, follow this escalation path:

### Step 1: Search Walkthroughs

Use `@general` agent to search local walkthrough files:

```
Search query: "what is [orphan node name] used for" or "where is [item] used"
Example: "what is the rare book used for in king's quest vi"
```

Look in:
- `src/walkthroughs/[game-name]/*.html`
- `src/walkthroughs/[game-name]/*.md`

### Step 2: Web Search

If not found in walkthroughs, search the web:

```
Search query: "[game name] [orphan node] what is it for" or "[game name] [item] puzzle solution"
Example: "king's quest vi rare book what is it for"
```

Use `@general` agent with `websearch` tool.

### Step 3: Determine Fix

| Finding | Action |
|---------|--------|
| Found in walkthrough/web | Add the missing connection |
| Found as truly optional | Add `:: note` or mark as acceptable orphan |
| Not found anywhere | Investigate further or mark as ERROR |

### Example: Rare Book in KQVI

**Problem**: `O_RECEIVE_RARE_BOOK` is orphan. "What is the rare book for?"

**Walkthrough search**: "rare book" → Found reference: "trade rare book to Ali for spell book"

**Fix**: Add edge `O_RECEIVE_RARE_BOOK → A_TRADE_RARE_BOOK_FOR_SPELL`

## Common Errors and Fixes

### Error: Action Without Outcome

```mermaid
%% WRONG
A_PICK_UP_FLOWER

%% RIGHT
A_PICK_UP_FLOWER --> O_RECEIVE_FLOWER_OF_STENCH
```

**Fix**: Connect every action to its outcome.

### Error: Batched Transitive Dependency

```mermaid
%% WRONG - If C specifically requires A
A --> B --> C

%% RIGHT - A also connects directly to C
A --> B
A --> C
B --> C
```

**Fix**: If step N+1 specifically requires something from step N, add direct edge.

### Error: Sequential Order as Dependency

```mermaid
%% WRONG - "I went to beach first, then village" ≠ logical dependency
S1_BEACH --> S2_VILLAGE

%% RIGHT - Logical dependency: shell from beach is needed for gnome
O_RECEIVE_SHELL --> A_GIVE_SHELL_TO_GNOME
```

**Fix**: Track locks and keys, not player movement.

### Error: Locked Choice as Sequential Trades

```mermaid
%% WRONG - Don't model the choosing mechanic
A_TRADE_FOR_PAINTBRUSH --> A_TRADE_FOR_NIGHTINGALE --> ...

%% RIGHT - All items unlocked at once after paying price
A_PAY_PAWN_BROKER_COIN --> O_PAINTBRUSH_UNLOCKED
A_PAY_PAWN_BROKER_COIN --> O_NIGHTINGALE_UNLOCKED
A_PAY_PAWN_BROKER_COIN --> O_TINDERBOX_UNLOCKED
A_PAY_PAWN_BROKER_COIN --> O_FLUTE_UNLOCKED
```

**Fix**: Once price is paid, all locked-choice items show as UNLOCKED.

## Color Palette (Index-Based)

Use this fixed palette for area/subgraph coloring. Same area can appear multiple times at different logical points. Use the SAME color for repeated areas (e.g., Isle of Crown appears at start AND end with same color).

| Index | Hex | Stroke | Area |
|-------|-----|--------|------|
| 1 | `#E3F2FD` | `#1976D2` | Isle of Crown |
| 2 | `#FFF3E0` | `#F57C00` | Isle of Wonder |
| 3 | `#F3E5F5` | `#7B1FA2` | Isle of Beast |
| 4 | `#E8F5E9` | `#388E3C` | Isle of Mists |
| 5 | `#FFF8E1` | `#F9A825` | Sacred Mountain |
| 6 | `#FCE4EC` | `#C2185B` | Druid Island |
| 7 | `#E0F7FA` | `#00838F` | Realm of Dead |
| 8 | `#F5F5F5` | `#616161` | Village |

### Applying Colors in Mermaid

```mermaid
subgraph "Isle of Wonder"["**Isle of Wonder**"]
    classDef area2 fill:#FFF3E0,stroke:#F57C00,stroke-width:2px
    class O_RECEIVE_NIGHTINGALE area2
    class O_RECEIVE_MINT area2
end
```

## Fan-Out/Fan-In Flow Structure

Adventure game puzzles naturally follow a **fan-out/fan-in** pattern where:
1. START → Initial area (single path)
2. Initial area → Multiple parallel islands/branches (fan out)
3. Parallel branches converge at a meeting point
4. Meeting point → Final area (single path) → END

### Layout Template

```
START
  ↓
[ISLE OF CROWN - Beach & Village - Phase 1]
  ↓ (fan out to 4 parallel islands)
[ISLE OF WONDER] | [ISLE OF BEAST] | [ISLE OF MISTS] | [SACRED MOUNTAIN]
  ↓ (fan in)
[DRUID ISLE / REALM OF DEAD]
  ↓
[ISLE OF CROWN - Final] (REPEAT AREA with same color)
  ↓
END
```

### Validation

- [ ] START at top, END at bottom
- [ ] Fan-out from single path to parallel branches
- [ ] Fan-in from parallel branches to convergence point
- [ ] Repeated areas use SAME color throughout

## Known Acceptable False Positives

The following are NOT errors:

1. **Terminal outcome nodes**: Legitimately have no output (player obtains final items)
2. **Optional side-quest items**: Player may never collect them
3. **Consequence nodes**: Some may have no input if they're self-evident state changes

Verify by checking if the item/action is ever referenced later in the graph.

## Output

After running QA:

1. **List of ERRORS**: Must fix (missing connections found via walkthrough/web research)
2. **List of WARNINGS**: Acceptable compromises or minor issues
3. **List of OPTIONAL**: Truly optional content that doesn't connect

## Usage

```bash
# Run QA on a chart
./.opencode/skills/qa-dependency-graph/scripts/check-dangling-nodes.sh src/inspiration/kings-quest-vi-chart.mmd

# After fixes, rebuild and verify
./build.sh
mdbook serve --open
```

## Integration

This skill is automatically invoked by the `create-dependency-graph` skill after initial graph creation. It can also be used standalone to audit existing graphs.

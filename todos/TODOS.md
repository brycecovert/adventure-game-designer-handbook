# TODO List for KQVI Puzzle Dependencies Rework

## 8 Critical Feedback Points - ALL COMPLETE

### 1. mdbook Mermaid Configuration ✅
- [x] Add mermaid support to book.toml
- [x] Verify diagram renders with `mdbook build`

### 2. Actions vs Outcomes as Separate Nodes ✅
- [x] "Talk to ferryman" and "get rabbit's foot" are SEPARATE nodes
- [x] Every action and outcome are distinct nodes
- [x] Node naming: A_ prefix for actions, O_ prefix for outcomes

### 3. Individual Item Acquisition Nodes ✅
- [x] "Receive coin" and "receive ring" are separate nodes
- [x] Every individual item/event has its own outcome node

### 4. Organize by Lands/Areas ✅
- [x] Group nodes by geographical area
- [x] 12 geographical subgraphs: Beach, Village, Castle Entry, Gnomes, Garden, Chessboard, Isle of Beast, Minotaur's Maze, Sacred Mountain, Isle of Mists, Realm of Dead, Castle
- [x] Proper cross-area dependency hierarchy

### 5. Problem-Solution Flow (FIXED) ✅
- [x] Structure now correct: START --> Prerequisites --> Problem --> Solution Steps --> Problem Resolved
- [x] Flow direction properly oriented

### 6. Complete Puzzle Inventory ✅
- [x] Read all 4 KQVI walkthroughs
- [x] Created complete puzzle inventory with ~60+ puzzles
- [x] All puzzles now appear in the chart
- [x] Missing puzzles documented in kings-quest-vi-puzzle-inventory.md

### 7. Mechanic Note on 4 Items (Locked Choice) ✅
- [x] Documented: paint brush, nightingale, tinderbox, flute are LOCKED CHOICE
- [x] Each unlocked by trading one for another
- [x] For dependency graph: treat each as UNLOCKED when acquired
- [x] Focus on locks and keys, not mini-game trading

### 8. Modern, Legible Styling ✅
- [x] WCAG-compliant colors with 4.5:1+ contrast
- [x] Clean color palette for node types:
  - START/END: Gold/Yellow (#FFD700)
  - Problems: Red/Pink (#FFB3B3)
  - Solution Actions: Green (#B3FFB3)
  - Outcomes (Items): Blue (#B3D9FF)
  - Areas: Light purple (#E6E6FA)
- [x] Modern aesthetics

---

## Final Verification ✅

- [x] `mdbook build` succeeds
- [x] Mermaid diagram renders (17 SVG elements)
- [x] All 8 feedback points addressed
- [x] Chart properly structured with problem-solution flow

---

## Commit History

- Complete: Configure mdbook mermaid support and create KQVI puzzle inventory
- Complete: Rework KQVI puzzle dependency chart with all 8 feedback points

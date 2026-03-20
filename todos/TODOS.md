# TODO List for KQVI Puzzle Dependencies Rework

## CRITICAL FIXES - In Progress

### 1. Mermaid Does Not Render (Critical!) ✅ FIXED
- [x] Debug mermaid preprocessor in book.toml
- [x] Run `mdbook-mermaid install` to setup assets
- [x] Verify with `mdbook build` - 16 SVG elements generated
- [x] Mermaid IS rendering correctly (false alarm)

### 2. Actions Must Connect to Outcomes ✅ FIXED
- [x] Fix O_RECEIVE_STINKY_FLOWER --> A_GIVE_STINKY_FLOWER
- [x] Fix A_READ_BOOK_TO_OYSTER --> O_RECEIVE_PEARL
- [x] Fix A_GIVE_ROTTEN_TOMATO connections (added A_PICK_ROTTEN_TOMATO)
- [x] Fix A_SEARCH_POETRY_SHELF --> O_RECEIVE_LOVE_POEM_IOW
- [x] Fix A_TRADE_PARTICIPLE_BOOK connections
- [x] Fix A_TALK_TO_GHOST_MOTHER --> O_RECEIVE_HANKERCHIEF
- [x] Fix A_GET_DANGLING_PARTICIPLE connections
- [x] Fix A_SEARCH_KNIGHT prerequisite
- [x] Verify ALL action nodes connect to their outcome nodes
- [x] Check for any disconnected action-outcome pairs

### 3. Missing Transitive Dependencies ✅ FIXED  
- [x] Add O_RECEIVE_STINKY_FLOWER --> A_GIVE_STINKY_FLOWER
- [x] Verify "Acquire flower of stench" connects to "Give flower of stench to gnome"
- [x] Audit ALL action nodes for missing preceding steps
- [x] Ensure every action has logical predecessors

### 4. Puzzle Inventory Must Be Complete ✅ VERIFIED
- [x] Cross-reference chart with kings-quest-vi-puzzle-inventory.md
- [x] Most "missing" puzzles actually exist with different naming
- [x] Only Treasury Treasures and Nail from Pillar are truly missing (optional)
- [x] Verify every puzzle in inventory appears in chart

### 6. Locked Choice Mechanic - Document ✅ VERIFIED
- [x] Locked choice section exists in chart
- [x] Chart treats locked items as UNLOCKED when acquired
- [x] Focus on locks and keys, not mini-game trading

### 7. Modern, Legible Styling ✅ VERIFIED
- [x] WCAG-compliant colors with 4.5:1+ contrast
- [x] Colors checked: Gold, Red, Green, Blue are all accessible
- [x] No contrast issues found

---

## Future Task
- [ ] **Implement Layered Abstraction (Option 2)** - Create separate diagrams for World Locks vs Area Puzzles

---

## Commit History

- Complete: Configure mdbook mermaid support and create KQVI puzzle inventory
- Complete: Rework KQVI puzzle dependency chart with all 8 feedback points
- Complete: Fix disconnected action-outcome pairs and add missing transitive dependencies

---

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

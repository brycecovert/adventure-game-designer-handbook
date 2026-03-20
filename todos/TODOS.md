# TODO List for KQVI Puzzle Dependencies Rework

## 8 Critical Feedback Points to Address

### 1. mdbook Mermaid Configuration
- [ ] Add mermaid support to book.toml
- [ ] Verify diagram renders with `mdbook build`

### 2. Actions vs Outcomes as Separate Nodes
- [ ] "Talk to ferryman" and "get rabbit's foot" must be SEPARATE nodes
- [ ] Every action and outcome must be distinct nodes

### 3. Individual Item Acquisition Nodes
- [ ] "Receive coin" and "receive ring" must be separate nodes
- [ ] Every individual item/event has its own outcome node

### 4. Organize by Lands/Areas
- [ ] Group nodes by geographical area
- [ ] Isle of Sacred Mountain, Isle of Wonder, etc.
- [ ] Show proper cross-area dependency hierarchy

### 5. Problem-Solution Flow (FIX BACKWARDS STRUCTURE)
- [ ] Current: Problem is prevented first (WRONG)
- [ ] Should be: Solution steps lead TO problem resolution
- [ ] Structure: START --> Prereqs --> Recognize Problem --> Solution Steps --> Problem Resolved

### 6. Complete Puzzle Inventory from Walkthroughs
- [ ] Read all 4 KQVI walkthroughs
- [ ] Create checklist of ALL puzzles in the game
- [ ] Verify each puzzle appears in the chart
- [ ] Document any missing puzzles

### 7. Mechanic Note on 4 Items (Locked Choice)
- [ ] Document: paint brush, nightingale, tinderbox, flute are LOCKED CHOICE
- [ ] Each unlocked by trading one for another
- [ ] For dependency graph: treat each as UNLOCKED
- [ ] Focus on locks and keys, not mini-game trading

### 8. Modern, Legible Styling
- [ ] Fix contrast and colors
- [ ] WCAG accessibility minimums
- [ ] Clean color palette for node types
- [ ] Modern aesthetics

---

## Subtasks

### Phase 1: Configuration & Research
- [ ] Task 1.1: Add mermaid preprocessor to book.toml
- [ ] Task 1.2: Verify mdbook build works with mermaid
- [ ] Task 2.1: Read all 4 KQVI walkthroughs
- [ ] Task 2.2: Create complete puzzle inventory checklist

### Phase 2: Chart Rework
- [ ] Task 3.1: Restructure nodes - separate actions from outcomes
- [ ] Task 3.2: Create individual item acquisition nodes
- [ ] Task 3.3: Organize by geographical areas
- [ ] Task 3.4: Fix problem-solution flow direction
- [ ] Task 3.5: Apply modern styling with proper contrast

### Phase 3: Verification
- [ ] Task 4.1: Cross-reference puzzle inventory against chart
- [ ] Task 4.2: Add locked choice mechanic note
- [ ] Task 4.3: Final mdbook build verification

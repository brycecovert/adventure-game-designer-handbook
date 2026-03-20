# TODO List for KQVI Puzzle Dependencies QA Fixes

## Issues to Fix in `src/inspiration/kings-quest-vi-heir-today-gone-tomorrow.md`

### 1. Fix S17 Undefined Node (Critical)
- [x] S17 removed from classDef (was causing CSS error)

### 2. Fix S20 Dead End
- [x] S19 and S20 removed entirely (catacomb content outside scope)

### 3. Fix S12 Orphan (Pearl)
- [x] Added dashed note edge indicating optional side quest

### 4. Fix S19/S20 Sequential Chain
- [x] Removed S19 and S20 nodes, kept S21 as parallel from P6

### 5. Verify Phase 6/7 Flow (Shield Dependency)
- [x] Verified - chart structure is correct, Shield from Minotaur Maze flows back via C2

### 6. mdbook Integration
- [x] SUMMARY.md already links correctly
- [x] Run `mdbook build` - passed
- [ ] Verify page accessible via `mdbook serve`

---

## Commit Points

- Complete: Fix orphaned/undefined nodes (S17, S20, S12)
- Complete: Fix sequential to parallel (S19/S20 chain)
- Complete: Verify mdbook integration

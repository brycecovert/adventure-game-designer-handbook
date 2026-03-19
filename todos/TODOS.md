# TODO List for Puzzle Design Handbook Restructure

## Strategic Overview

Transform the handbook from a simple taxonomy + examples structure into a comprehensive design methodology guide following Option 5 + Part VI FAQ pattern.

**Current:** 4 sections (Introduction, Core Principles, Inspiration, Puzzle Taxonomy, Documentation Guidelines)
**Target:** 6 Parts (Foundations, Design Process, Puzzle Taxonomy, Inspiration, Reference, FAQ)

---

## Part I: Foundations

### 1. Rewrite Introduction

- [ ] **Rewrite introduction.md** (MODIFY: src/introduction.md)
  - Move personal anecdote material to "Why Adventure Games" chapter
  - Restructure as professional handbook introduction
  - Add roadmap of entire handbook structure
  - Rewrite LLM note to reflect new purpose
  - Maintain the voodoo doll vs. cat-on-ledge tension as opening hook
  - **Source material:** Current introduction.md, adventure-puzzle-design-stanislav-costiuc.md (Inception Principle)
  - **Delegation suggestion:** Can be handled by general agent with writing skill

### 2. Create "Why Adventure Games" Chapter (NEW)

- [ ] **Create why-adventure-games.md** (CREATE: src/why-adventure-games.md)
  - Synthesize Gilbert's 12 rules into founding principles
  - Connect to modern design thinking
  - Establish why adventure game puzzle design is a distinct discipline
  - **Source material:** why-adventure-games-suck-ron-gilbert.md (Gilbert's 12 rules)
  - **Delegation suggestion:** Can be handled by general agent with writing skill

### 3. Expand Core Principles

- [ ] **Rewrite core-principles.md** (MODIFY: src/core-principles.md)
  - Expand from 4 principles to 8+ principles
  - Add new principles:
    - **Fairness** (from 14 Deadly Sins, Gilbert's rules)
    - **Player Psychology** (from Costiuc's Inception Principle)
    - **Internal Logic** (from Costiuc)
    - **Progressive Disclosure**
    - **Synthesis Over Collection**
    - **Failure as Feedback**
    - **Limited Actions, Unlimited Combinations**
    - **Information as Puzzle Element**
  - **Source material:** core-principles.md, 14-deadly-sins-graphic-adventure-design-filfre.md, adventure-puzzle-design-stanislav-costiuc.md, puzzle-game-design-principles-template.md
  - **Delegation suggestion:** Can be handled by general agent with writing skill

---

## Part II: Design Process (NEW - Entirely New Content)

### 4. Create Puzzle Dependency Charts Chapter

- [ ] **Create design-process/puzzle-dependency-charts.md** (CREATE: src/design-process/puzzle-dependency-charts.md)
  - Explain Keys & Locks method
  - Bushy branching vs. linear design
  - Working backwards from solution
  - Balancing difficulty (break keys into pieces, branch for alternatives)
  - **Source material:** lucasarts-puzzle-dependency-charts.md
  - **Delegation suggestion:** New chapter creation, general agent

### 5. Create Working Backwards Chapter

- [ ] **Create design-process/working-backwards.md** (CREATE: src/design-process/working-backwards.md)
  - Design from solution to setup
  - Backwards puzzle anti-pattern (Gilbert's rule)
  - Ensuring logical flow
  - **Source material:** why-adventure-games-suck-ron-gilbert.md (Backwards Puzzles section)
  - **Delegation suggestion:** New chapter creation, general agent

### 6. Create Bushy Branching & Parallel Puzzles Chapter

- [ ] **Create design-process/bushy-branching.md** (CREATE: src/design-process/bushy-branching.md)
  - Multiple simultaneous puzzles
  - Player agency through choice
  - Avoiding the cage syndrome
  - **Source material:** why-adventure-games-suck-ron-gilbert.md (Give the player options section), lucasarts-puzzle-dependency-charts.md (Make it bushy)
  - **Delegation suggestion:** New chapter creation, general agent

### 7. Create Internal Logic & Fairness Chapter

- [ ] **Create design-process/internal-logic-fairness.md** (CREATE: src/design-process/internal-logic-fairness.md)
  - Internal consistency
  - External vs. internal logic
  - Fairness as design principle
  - **Source material:** adventure-puzzle-design-stanislav-costiuc.md (Importance of Internal Logic), 14-deadly-sins-graphic-adventure-design-filfre.md (Sin #1: illogic), why-adventure-games-suck-ron-gilbert.md (Arbitrary puzzles)
  - **Delegation suggestion:** New chapter creation, general agent

### 8. Create Player Psychology: Inception vs. Extraction Chapter

- [ ] **Create design-process/player-psychology.md** (CREATE: src/design-process/player-psychology.md)
  - Costiuc's Inception Principle
  - Extraction anti-pattern (guessing what designer thinks)
  - Player trust and suspension of disbelief
  - **Source material:** adventure-puzzle-design-stanislav-costiuc.md (Inception Principle section)
  - **Delegation suggestion:** New chapter creation, general agent

### 9. Create Playtesting Methodology Chapter

- [ ] **Create design-process/playtesting-methodology.md** (CREATE: src/design-process/playtesting-methodology.md)
  - Why playtesting is critical for adventure games
  - Types of testing (internal, external, focus groups)
  - Common issues found through testing
  - Iterating based on feedback
  - **Source material:** 14-deadly-sins-graphic-adventure-design-filfre.md (Sin #14: Not soliciting player feedback), adventure-puzzle-design-stanislav-costiuc.md (What I Miss section - alternative solutions)
  - **Delegation suggestion:** New chapter creation, general agent

### 10. Create Failure Modes (14 Sins) Chapter

- [ ] **Create design-process/failure-modes.md** (CREATE: src/design-process/failure-modes.md)
  - Convert 14 Deadly Sins into anti-patterns/chapter
  - Each sin with explanation and examples
  - How to recognize and avoid each
  - **Source material:** 14-deadly-sins-graphic-adventure-design-filfre.md (all 14 sins)
  - **Delegation suggestion:** New chapter creation, general agent

### 11. Create Hint System Design Chapter

- [ ] **Create design-process/hint-system-design.md** (CREATE: src/design-process/hint-system-design.md)
  - When to use hints
  - Types of hint systems
  - Progressive hinting
  - In-game vs. external hints
  - **Source material:** 14-deadly-sins-graphic-adventure-design-filfre.md (Sin #14), general adventure game design knowledge
  - **Delegation suggestion:** New chapter creation, general agent

---

## Part III: Puzzle Taxonomy (Add Design Notes)

### 12. Add Design Notes to Category Overviews

- [x] **Modify information-discovery-overview.md** (MODIFY: src/puzzles/information-discovery-overview.md)
  - Add process notes explaining how to use these puzzle types in design
  - Link to design-process/puzzle-dependency-charts.md for dependency patterns
  - **Source material:** Self-synthesized from puzzle taxonomy knowledge

- [x] **Modify cognitive-transfer-overview.md** (MODIFY: src/puzzles/cognitive-transfer-overview.md)
  - Add process notes on teaching patterns to players
  - Link to design-process/player-psychology.md for inception vs. extraction

- [x] **Modify spatial-temporal-coordination-overview.md** (MODIFY: src/puzzles/spatial-temporal-coordination-overview.md)
  - Add process notes on timing and coordination design
  - Link to design-process/working-backwards.md

- [x] **Modify npc-interaction-overview.md** (MODIFY: src/puzzles/npc-interaction-overview.md)
  - Add process notes on NPC as systems
  - Link to design-process/internal-logic-fairness.md

- [x] **Modify systems-and-logic-overview.md** (MODIFY: src/puzzles/systems-and-logic-overview.md)
  - Add process notes on logical consistency

- [x] **Modify non-standard-domains-overview.md** (MODIFY: src/puzzles/non-standard-domains-overview.md)
  - Add process notes on surreal logic boundaries

### 13. Cross-Reference Taxonomy to Design Process

- [ ] **Update all puzzle type files** (MODIFY: src/puzzles/*.md - 27 files)
  - Add "Related Design Process" section linking to relevant Part II chapters
  - Ensure consistent cross-referencing format
  - **Delegation suggestion:** Batch process by category, parallelizable

---

## Part IV: Inspiration (Add Cross-References)

### 14. Add Cross-References to Part II Principles

- [ ] **Modify all inspiration/*.md files** (MODIFY: src/inspiration/*.md - 26 files)
  - Add "Design Principles Illustrated" section
  - Link to relevant Part II chapters (e.g., puzzle-dependency-charts.md, failure-modes.md)
  - Add back-reference to relevant puzzle types in Part III
  - **Delegation suggestion:** Batch process, parallelizable by game era/developer

### 15. Create Cross-Reference Index

- [x] **Create inspiration/cross-reference-index.md** (CREATE: src/inspiration/cross-reference-index.md)
  - Matrix of games to design principles
  - Quick lookup table
  - **Delegation suggestion:** General agent, depends on task 14

---

## Part V: Reference (Expand Existing Docs)

### 16. Expand Common Pitfalls

- [ ] **Rewrite common-pitfalls.md** (MODIFY: src/docs/common-pitfalls.md)
  - Expand with all 14 Deadly Sins as anti-patterns
  - Add detailed explanations and examples
  - Include "How to Fix" guidance for each
  - **Source material:** 14-deadly-sins-graphic-adventure-design-filfre.md, existing common-pitfalls.md
  - **Delegation suggestion:** General agent with writing skill

### 17. Expand Validation Checklist

- [ ] **Rewrite validation-checklist.md** (MODIFY: src/docs/validation-checklist.md)
  - Expand to cover all new sections
  - Add Part II Design Process checklist items
  - Add FAQ section structure validation
  - **Delegation suggestion:** General agent

### 18. Create Quick-Start Design Worksheet (NEW)

- [x] **Create docs/quick-start-worksheet.md** (CREATE: src/docs/quick-start-worksheet.md)
  - One-page design worksheet template
  - Key questions for each design phase
  - Puzzle dependency chart template
  - Checklist format
  - **Source material:** lucasarts-puzzle-dependency-charts.md, puzzle-game-design-principles-template.md
  - **Delegation suggestion:** General agent

---

## Part VI: FAQ (NEW)

### 19. Create FAQ Structure and Core Entries

- [x] **Create docs/faq.md** (CREATE: src/docs/faq.md)
  - Create actionable Q&A format
  - Minimum 10 common design problems with solutions
  - Link to playbook patterns where applicable
  - **FAQ Topics to include:**
    - "My puzzle feels like a fetch quest" → Add synthesis requirements
    - "Players are stuck with no feedback" → Use failure-as-information
    - "Puzzle seems too easy" → Break into parallel sub-puzzles
    - "Players miss critical item" → Add incremental reward/hints
    - "Multiple solutions conflicting" → Design alternative paths
    - "Moon logic accusations" → Add logical consistency
    - "Player feels caged" → Implement bushy branching
    - "Timing puzzles frustrating" → Use Hollywood time
    - "NPC puzzles too similar" → Add class-specific variations
    - "Endgame feels anticlimactic" → Ensure puzzles advance story
  - **Source material:** Self-synthesized from all resources
  - **Delegation suggestion:** General agent with writing skill

---

## Implementation Order & Dependencies

### Phase 1: Foundation (Must come first)
1. Rewrite Introduction (task 1)
2. Create "Why Adventure Games" (task 2) - depends on 1
3. Expand Core Principles (task 3) - depends on 1, 2

### Phase 2: Design Process (Can parallelize after Phase 1)
4. Create puzzle-dependency-charts.md (task 4)
5. Create working-backwards.md (task 5)
6. Create bushy-branching.md (task 6)
7. Create internal-logic-fairness.md (task 7)
8. Create player-psychology.md (task 8)
9. Create playtesting-methodology.md (task 9)
10. Create failure-modes.md (task 10)
11. Create hint-system-design.md (task 11)

**Note:** Tasks 4-11 can be parallelized (different agents) since they don't depend on each other

### Phase 3: Taxonomy Enhancement (Depends on Phase 2)
12. Add design notes to overviews (task 12) - depends on Phase 2
13. Cross-reference puzzle types (task 13) - depends on 12

### Phase 4: Inspiration Cross-References (Depends on Phase 2)
14. Add cross-references to games (task 14) - depends on Phase 2
15. Create cross-reference index (task 15) - depends on 14

### Phase 5: Reference Expansion (Can parallelize with Phase 3-4)
16. Expand Common Pitfalls (task 16)
17. Expand Validation Checklist (task 17)
18. Create Quick-Start Worksheet (task 18)

**Note:** Tasks 16-18 can parallelize with Phase 3-4

### Phase 6: FAQ Creation (Final)
19. Create FAQ structure (task 19) - depends on all previous

---

## File Operations Summary

### CREATE Operations (13 new files)
| File | Task |
|------|------|
| src/why-adventure-games.md | 2 |
| src/design-process/puzzle-dependency-charts.md | 4 |
| src/design-process/working-backwards.md | 5 |
| src/design-process/bushy-branching.md | 6 |
| src/design-process/internal-logic-fairness.md | 7 |
| src/design-process/player-psychology.md | 8 |
| src/design-process/playtesting-methodology.md | 9 |
| src/design-process/failure-modes.md | 10 |
| src/design-process/hint-system-design.md | 11 |
| src/inspiration/cross-reference-index.md | 15 |
| src/docs/quick-start-worksheet.md | 18 |
| src/docs/faq.md | 19 |

### MODIFY Operations (40+ files)
| File | Task |
|------|------|
| src/introduction.md | 1 |
| src/core-principles.md | 3 |
| src/puzzles/information-discovery-overview.md | 12 |
| src/puzzles/cognitive-transfer-overview.md | 12 |
| src/puzzles/spatial-temporal-coordination-overview.md | 12 |
| src/puzzles/npc-interaction-overview.md | 12 |
| src/puzzles/systems-and-logic-overview.md | 12 |
| src/puzzles/non-standard-domains-overview.md | 12 |
| src/puzzles/*.md (27 files) | 13 |
| src/inspiration/*.md (26 files) | 14 |
| src/docs/common-pitfalls.md | 16 |
| src/docs/validation-checklist.md | 17 |

### Directory Structure to Create
```
src/design-process/
  puzzle-dependency-charts.md
  working-backwards.md
  bushy-branching.md
  internal-logic-fairness.md
  player-psychology.md
  playtesting-methodology.md
  failure-modes.md
  hint-system-design.md
```

---

## Delegation Strategy

### Agent 1 (Writing Intensive)
- Tasks 1, 2, 3 (Foundations)
- Can run sequentially after understanding the project

### Agent 2 (Design Process - Parallel Set 1)
- Tasks 4, 5, 6 (3 new chapters)
- Independent parallel work

### Agent 3 (Design Process - Parallel Set 2)
- Tasks 7, 8, 9 (3 new chapters)
- Independent parallel work

### Agent 4 (Design Process - Parallel Set 3)
- Tasks 10, 11 (2 new chapters)
- Independent parallel work

### Agent 5 (Taxonomy & Inspiration)
- Tasks 12, 13, 14, 15 (cross-referencing)
- Should start after Design Process chapters exist

### Agent 6 (Reference & FAQ)
- Tasks 16, 17, 18, 19 (Reference docs + FAQ)
- Final phase, can run after seeing full structure

---

## Commit Points

After each major phase completion:
1. **Phase 1 complete:** "Complete: Part I Foundations (Introduction, Why Adventure Games, Core Principles)"
2. **Phase 2 complete:** "Complete: Part II Design Process (8 new chapters)"
3. **Phase 3 complete:** "Complete: Part III Taxonomy design notes"
4. **Phase 4 complete:** "Complete: Part IV Inspiration cross-references"
5. **Phase 5 complete:** "Complete: Part V Reference expansion"
6. **Phase 6 complete:** "Complete: Part VI FAQ creation"

---

## Validation Before Completion

- [ ] All 13 new files created and populated
- [ ] All 40+ existing files modified appropriately
- [ ] SUMMARY.md updated to reflect new 6-part structure
- [ ] Cross-references are functional (links work)
- [ ] Word counts reasonable per section (target: <1000 words per page)
- [ ] No broken links or missing references
- [ ] Build passes (`mdbook build`)

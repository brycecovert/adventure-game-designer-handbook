# Dependency Graph & QA Files for All Games - MASSIVE TASK LIST

## Overview
Create dependency graph (.mmd), generate SVG, and write QA dependency graph file for every game in the inspiration directory. Process games systematically, commit after each completion.

---

## Game Status Summary

| Game | Page Exists | MMD Chart | SVG | QA File | Walkthrough |
|------|-------------|-----------|-----|---------|-------------|
| **beneath-a-steel-sky** | ✅ | ❌ | ❌ | ❌ | ✅ |
| **broken-sword-1-shadow-of-the-templars** | ✅ | ❌ | ❌ | ❌ | ✅ |
| **broken-sword-ii-the-smoking-mirror** | ✅ | ❌ | ❌ | ❌ | ✅ |
| **day-of-the-tentacle** | ✅ | ❌ | ❌ | ❌ | ✅ |
| **full-throttle** | ✅ | ❌ | ❌ | ❌ | ✅ |
| **gabriel-knight-1-sins-of-the-fathers** | ✅ | ❌ | ❌ | ❌ | ✅ |
| **grim-fandango** | ✅ | ❌ | ❌ | ❌ | ✅ |
| **indiana-jones-and-the-fate-of-atlantis** | ✅ | ❌ | ❌ | ❌ | ✅ |
| **indiana-jones-and-the-last-crusade** | ✅ | ❌ | ❌ | ❌ | ✅ |
| **kings-quest-iii-to-heir-is-human** | ✅ | ✅ | ❌ | ❌ | ✅ |
| **kings-quest-vi-heir-today-gone-tomorrow** | ✅ | ✅ | ✅ | ✅ | ✅ |
| **kings-quest-vii-the-princeless-bride** | ✅ | ❌ | ❌ | ❌ | ✅ |
| **kings-quest-viii-mask-of-eternity** | ✅ | ❌ | ❌ | ❌ | ✅ |
| **loom** | ✅ | ❌ | ❌ | ❌ | ✅ |
| **maniac-mansion** | ✅ | ❌ | ❌ | ❌ | ✅ |
| **monkey-island-1-the-secret-of-monkey-island** | ✅ | ✅ | ✅ | ❌ | ✅ |
| **quest-for-glory-1-shadows-of-darkness** | ✅ | ❌ | ❌ | ❌ | ✅ |
| **quest-for-glory-ii-trial-by-fire** | ✅ | ❌ | ❌ | ❌ | ✅ |
| **quest-for-glory-iii-wages-of-war** | ✅ | ❌ | ❌ | ❌ | ✅ |
| **quest-for-glory-iv-shadows-of-darkness** | ✅ | ❌ | ❌ | ❌ | ✅ |
| **sam-and-max-hit-the-road** | ✅ | ❌ | ❌ | ❌ | ✅ |
| **simon-the-sorcerer** | ✅ | ❌ | ❌ | ❌ | ✅ |
| **spacequest-1-the-sarien-encounter** | ✅ | ❌ | ❌ | ❌ | ✅ |
| **spacequest-2-the-vohaul-assault** | ✅ | ❌ | ❌ | ❌ | ✅ |
| **spacequest-iii-the-pirates-of-pestulon** | ✅ | ❌ | ❌ | ❌ | ✅ |
| **spacequest-iv-the-rogerwars** | ✅ | ❌ | ❌ | ❌ | ✅ |
| **syberia** | ✅ | ❌ | ❌ | ❌ | ✅ |
| **the-dig** | ✅ | ❌ | ❌ | ❌ | ✅ |
| **the-legend-of-kyrandia-book-one** | ✅ | ❌ | ❌ | ❌ | ✅ |
| **the-longest-journey** | ✅ | ❌ | ❌ | ❌ | ✅ |
| **zak-mckracken-and-the-alien-mindbenders** | ✅ | ❌ | ❌ | ❌ | ✅ |

**Legend:** ✅ = exists, ❌ = needs creation

---

## Task Format
For each game:
1. Read walkthrough file from `src/walkthroughs/<game-name>/`
2. Create dependency graph `.mmd` in `src/inspiration/`
3. Generate `.svg` using `/home/noti/.nvm/versions/node/v22.17.1/bin/mmdc`
4. Create QA dependency graph file `<game>-puzzle-dependencies-qa.md`
5. Update game page to reference chart if needed
6. Commit and push

---

## Priority 1: Games with Existing Pages but No Charts

### 1. Beneath a Steel Sky (1994) ⏳
- [ ] **1.1:** Read walkthrough from `src/walkthroughs/beneath-a-steel-sky/`
- [ ] **1.2:** Analyze puzzle structure and identify main dependency chains
- [ ] **1.3:** Create `beneath-a-steel-sky-chart.mmd` with:
  - Node fontsize=18
  - Color-coded areas/subgraphs
  - START → puzzle phases → END flow
  - GATEWAY nodes for major unlocks
- [ ] **1.4:** Generate SVG: `mmdc -i src/inspiration/beneath-a-steel-sky-chart.mmd -o src/inspiration/beneath-a-steel-sky-chart.svg -w 1600`
- [ ] **1.5:** Create `beneath-a-steel-sky-puzzle-dependencies-qa.md`:
  - Orphan node detection results
  - Dead-end analysis
  - Item flow verification
  - Known issues section
- [ ] **1.6:** Update game page if needed
- [ ] **1.7:** Commit with message: "Create dependency chart and QA for Beneath a Steel Sky"
- [ ] **1.8:** Push to origin

### 2. Broken Sword 1: Shadow of the Templars (1996) ⏳
- [ ] **2.1:** Read walkthrough from `src/walkthroughs/broken-sword-1/`
- [ ] **2.2:** Analyze puzzle structure
- [ ] **2.3:** Create `broken-sword-1-chart.mmd`
- [ ] **2.4:** Generate SVG
- [ ] **2.5:** Create QA file `broken-sword-1-puzzle-dependencies-qa.md`
- [ ] **2.6:** Commit and push

### 3. Broken Sword II: The Smoking Mirror (1997) ⏳
- [ ] **3.1:** Read walkthrough from `src/walkthroughs/broken-sword-ii/`
- [ ] **3.2:** Analyze puzzle structure
- [ ] **3.3:** Create `broken-sword-ii-chart.mmd`
- [ ] **3.4:** Generate SVG
- [ ] **3.5:** Create QA file `broken-sword-ii-puzzle-dependencies-qa.md`
- [ ] **3.6:** Commit and push

### 4. Day of the Tentacle (1993) ⏳
- [ ] **4.1:** Read walkthrough from `src/walkthroughs/day-of-the-tentacle/`
- [ ] **4.2:** Analyze multi-character temporal puzzle chains
- [ ] **4.3:** Create `day-of-the-tentacle-chart.mmd` (complex - 3 time periods)
- [ ] **4.4:** Generate SVG
- [ ] **4.5:** Create QA file `day-of-the-tentacle-puzzle-dependencies-qa.md`
- [ ] **4.6:** Commit and push

### 5. Full Throttle (1995) ⏳
- [ ] **5.1:** Read walkthrough from `src/walkthroughs/full-throttle/`
- [ ] **5.2:** Analyze puzzle structure
- [ ] **5.3:** Create `full-throttle-chart.mmd`
- [ ] **5.4:** Generate SVG
- [ ] **5.5:** Create QA file `full-throttle-puzzle-dependencies-qa.md`
- [ ] **5.6:** Commit and push

### 6. Gabriel Knight 1: Sins of the Fathers (1993) ⏳
- [ ] **6.1:** Read walkthrough from `src/walkthroughs/gabriel-knight-1/`
- [ ] **6.2:** Analyze puzzle structure (investigation + translation puzzles)
- [ ] **6.3:** Create `gabriel-knight-1-chart.mmd`
- [ ] **6.4:** Generate SVG
- [ ] **6.5:** Create QA file `gabriel-knight-1-puzzle-dependencies-qa.md`
- [ ] **6.6:** Commit and push

### 7. Grim Fandango (1998) ⏳
- [ ] **7.1:** Read walkthrough from `src/walkthroughs/grim-fandango/`
- [ ] **7.2:** Analyze complex puzzle chains across 4 years/zones
- [ ] **7.3:** Create `grim-fandango-chart.mmd` (large - multiple acts)
- [ ] **7.4:** Generate SVG
- [ ] **7.5:** Create QA file `grim-fandango-puzzle-dependencies-qa.md`
- [ ] **7.6:** Commit and push

### 8. Indiana Jones and the Fate of Atlantis (1992) ⏳
- [ ] **8.1:** Read walkthrough from `src/walkthroughs/indiana-jones-fate-atlantis/`
- [ ] **8.2:** Analyze parallel character gameplay paths
- [ ] **8.3:** Create `indiana-jones-fate-of-atlantis-chart.mmd`
- [ ] **8.4:** Generate SVG
- [ ] **8.5:** Create QA file `indiana-jones-fate-of-atlantis-puzzle-dependencies-qa.md`
- [ ] **8.6:** Commit and push

### 9. Indiana Jones and the Last Crusade (1989) ⏳
- [ ] **9.1:** Read walkthrough from `src/walkthroughs/indiana-jones-last-crusade/`
- [ ] **9.2:** Analyze puzzle structure
- [ ] **9.3:** Create `indiana-jones-last-crusade-chart.mmd`
- [ ] **9.4:** Generate SVG
- [ ] **9.5:** Create QA file `indiana-jones-last-crusade-puzzle-dependencies-qa.md`
- [ ] **9.6:** Commit and push

### 10. King's Quest III: To Heir Is Human (1986) ⏳
- [ ] **10.1:** MMD chart EXISTING - need to generate SVG
- [ ] **10.2:** Generate `kings-quest-iii-chart.svg` from existing `.mmd`
- [ ] **10.3:** Create QA file for existing chart
- [ ] **10.4:** Commit and push

### 11. King's Quest VII: The Princeless Bride (1994) ⏳
- [ ] **11.1:** Read walkthrough from `src/walkthroughs/kings-quest-vii/`
- [ ] **11.2:** Analyze puzzle structure
- [ ] **11.3:** Create `kings-quest-vii-chart.mmd`
- [ ] **11.4:** Generate SVG
- [ ] **11.5:** Create QA file `kings-quest-vii-puzzle-dependencies-qa.md`
- [ ] **11.6:** Commit and push

### 12. King's Quest VIII: Mask of Eternity (1998) ⏳
- [ ] **12.1:** Read walkthrough from `src/walkthroughs/kings-quest-viii/`
- [ ] **12.2:** Analyze puzzle structure (real-time elements)
- [ ] **12.3:** Create `kings-quest-viii-chart.mmd`
- [ ] **12.4:** Generate SVG
- [ ] **12.5:** Create QA file `kings-quest-viii-puzzle-dependencies-qa.md`
- [ ] **12.6:** Commit and push

### 13. Loom (1990) ⏳
- [ ] **13.1:** Read walkthrough from `src/walkthroughs/loom/`
- [ ] **13.2:** Analyze spell-weaving puzzle chains
- [ ] **13.3:** Create `loom-chart.mmd`
- [ ] **13.4:** Generate SVG
- [ ] **13.5:** Create QA file `loom-puzzle-dependencies-qa.md`
- [ ] **13.6:** Commit and push

### 14. Maniac Mansion (1987) ⏳
- [ ] **14.1:** Read walkthrough from `src/walkthroughs/maniac-mansion/`
- [ ] **14.2:** Analyze multi-character coordination puzzles
- [ ] **14.3:** Create `maniac-mansion-chart.mmd`
- [ ] **14.4:** Generate SVG
- [ ] **14.5:** Create QA file `maniac-mansion-puzzle-dependencies-qa.md`
- [ ] **14.6:** Commit and push

### 15. Monkey Island 1 - Already Has Chart ⏳
- [ ] **15.1:** MMD chart EXISTS (fixed typos)
- [ ] **15.2:** Need to regenerate SVG with fixed version
- [ ] **15.3:** Create QA file for MI1 chart
- [ ] **15.4:** Commit and push

### 16. Quest for Glory 1: Shadows of Darkness (1989) ⏳
- [ ] **16.1:** Read walkthrough from `src/walkthroughs/quest-for-glory-1/`
- [ ] **16.2:** Analyze dual career path puzzles (knight/mage)
- [ ] **16.3:** Create `quest-for-glory-1-chart.mmd`
- [ ] **16.4:** Generate SVG
- [ ] **16.5:** Create QA file `quest-for-glory-1-puzzle-dependencies-qa.md`
- [ ] **16.6:** Commit and push

### 17. Quest for Glory II: Trial by Fire (1989) ⏳
- [ ] **17.1:** Read walkthrough from `src/walkthroughs/quest-for-glory-ii/`
- [ ] **17.2:** Analyze puzzle structure
- [ ] **17.3:** Create `quest-for-glory-2-chart.mmd`
- [ ] **17.4:** Generate SVG
- [ ] **17.5:** Create QA file `quest-for-glory-2-puzzle-dependencies-qa.md`
- [ ] **17.6:** Commit and push

### 18. Quest for Glory III: Wages of War (1992) ⏳
- [ ] **18.1:** Read walkthrough from `src/walkthroughs/quest-for-glory-iii/`
- [ ] **18.2:** Analyze puzzle structure (city + desert dual settings)
- [ ] **18.3:** Create `quest-for-glory-3-chart.mmd`
- [ ] **18.4:** Generate SVG
- [ ] **18.5:** Create QA file `quest-for-glory-3-puzzle-dependencies-qa.md`
- [ ] **18.6:** Commit and push

### 19. Quest for Glory IV: Shadows of Darkness (1994) ⏳
- [ ] **19.1:** Read walkthrough from `src/walkthroughs/quest-for-glory-iv/`
- [ ] **19.2:** Analyze puzzle structure
- [ ] **19.3:** Create `quest-for-glory-4-chart.mmd`
- [ ] **19.4:** Generate SVG
- [ ] **19.5:** Create QA file `quest-for-glory-4-puzzle-dependencies-qa.md`
- [ ] **19.6:** Commit and push

### 20. Sam & Max Hit the Road (1993) ⏳
- [ ] **20.1:** Read walkthrough from `src/walkthroughs/sam-max-hit-the-road/`
- [ ] **20.2:** Analyze cross-country puzzle chains
- [ ] **20.3:** Create `sam-and-max-chart.mmd`
- [ ] **20.4:** Generate SVG
- [ ] **20.5:** Create QA file `sam-and-max-puzzle-dependencies-qa.md`
- [ ] **20.6:** Commit and push

### 21. Simon the Sorcerer (1993) ⏳
- [ ] **21.1:** Read walkthrough from `src/walkthroughs/simon1/`
- [ ] **21.2:** Analyze puzzle structure (meta-humor, item interactions)
- [ ] **21.3:** Create `simon-the-sorcerer-chart.mmd`
- [ ] **21.4:** Generate SVG
- [ ] **21.5:** Create QA file `simon-the-sorcerer-puzzle-dependencies-qa.md`
- [ ] **21.6:** Commit and push

### 22. Space Quest 1: The Sarien Encounter (1986) ⏳
- [ ] **22.1:** Read walkthrough from `src/walkthroughs/spacequest-1/`
- [ ] **22.2:** Analyze puzzle structure (text-based, inventory-heavy)
- [ ] **22.3:** Create `spacequest-1-chart.mmd`
- [ ] **22.4:** Generate SVG
- [ ] **22.5:** Create QA file `spacequest-1-puzzle-dependencies-qa.md`
- [ ] **22.6:** Commit and push

### 23. Space Quest II: The Vohaul Assault (1987) ⏳
- [ ] **23.1:** Read walkthrough from `src/walkthroughs/spacequest-ii/`
- [ ] **23.2:** Analyze puzzle structure
- [ ] **23.3:** Create `spacequest-2-chart.mmd`
- [ ] **23.4:** Generate SVG
- [ ] **23.5:** Create QA file `spacequest-2-puzzle-dependencies-qa.md`
- [ ] **23.6:** Commit and push

### 24. Space Quest III: The Pirates of Pestulon (1989) ⏳
- [ ] **24.1:** Read walkthrough from `src/walkthroughs/spacequest-iii/`
- [ ] **24.2:** Analyze puzzle structure (dual timeline)
- [ ] **24.3:** Create `spacequest-3-chart.mmd`
- [ ] **24.4:** Generate SVG
- [ ] **24.5:** Create QA file `spacequest-3-puzzle-dependencies-qa.md`
- [ ] **24.6:** Commit and push

### 25. Space Quest IV: The Rogerwars (1991) ⏳
- [ ] **25.1:** Read walkthrough from `src/walkthroughs/spacequest-iv/`
- [ ] **25.2:** Analyze puzzle structure (interactive movie style)
- [ ] **25.3:** Create `spacequest-4-chart.mmd`
- [ ] **25.4:** Generate SVG
- [ ] **25.5:** Create QA file `spacequest-4-puzzle-dependencies-qa.md`
- [ ] **25.6:** Commit and push

### 26. Syberia (2002) ⏳
- [ ] **26.1:** Read walkthrough from `src/walkthroughs/syberia/`
- [ ] **26.2:** Analyze puzzle structure (large mechanical puzzles)
- [ ] **26.3:** Create `syberia-chart.mmd`
- [ ] **26.4:** Generate SVG
- [ ] **26.5:** Create QA file `syberia-puzzle-dependencies-qa.md`
- [ ] **26.6:** Commit and push

### 27. The Dig (1995) ⏳
- [ ] **27.1:** Read walkthrough from `src/walkthroughs/the-dig/`
- [ ] **27.2:** Analyze complex alien exploration puzzle chains
- [ ] **27.3:** Create `the-dig-chart.mmd` (complex - multiple locations/time travel)
- [ ] **27.4:** Generate SVG
- [ ] **27.5:** Create QA file `the-dig-puzzle-dependencies-qa.md`
- [ ] **27.6:** Commit and push

### 28. The Legend of Kyrandia Book One (1992) ⏳
- [ ] **28.1:** Read walkthrough from `src/walkthroughs/kyrandia_1/`
- [ ] **28.2:** Analyze puzzle structure
- [ ] **28.3:** Create `the-legend-of-kyrandia-1-chart.mmd`
- [ ] **28.4:** Generate SVG
- [ ] **28.5:** Create QA file `the-legend-of-kyrandia-1-puzzle-dependencies-qa.md`
- [ ] **28.6:** Commit and push

### 29. The Longest Journey (1999) ⏳
- [ ] **29.1:** Read walkthrough from `src/walkthroughs/the-longest-journey/`
- [ ] **29.2:** Analyze dual world puzzle chains (Stardust/Cryogenia)
- [ ] **29.3:** Create `the-longest-journey-chart.mmd` (large - multiple chapters)
- [ ] **29.4:** Generate SVG
- [ ] **29.5:** Create QA file `the-longest-journey-puzzle-dependencies-qa.md`
- [ ] **29.6:** Commit and push

### 30. Zak McKracken and the Alien Mindbenders (1988) ⏳
- [ ] **30.1:** Read walkthrough from `src/walkthroughs/zak-mckracken/`
- [ ] **30.2:** Analyze world-traveling puzzle chains
- [ ] **30.3:** Create `zak-mckracken-chart.mmd` (large - 1988 megadventure)
- [ ] **30.4:** Generate SVG
- [ ] **30.5:** Create QA file `zak-mckracken-puzzle-dependencies-qa.md`
- [ ] **30.6:** Commit and push

---

## Progress Tracking

### Completed Games (with MMD + SVG + QA)
1. ✅ King's Quest VI (all three files exist)
2. ⏳ Monkey Island 1 (MMD+SVG done, QA needed)

### In Progress
- [None]

### Remaining: 30 games

---

## Notes for Execution

**MMD Chart Guidelines:**
- Node fontsize=18 throughout
- Color-coded subgraphs using the standard palette:
  - #E3F2FD (light blue)
  - #FFF3E0 (light orange)
  - #F3E5F5 (light purple)
  - #E8F5E9 (light green)
  - #FFF8E1 (light amber)
  - #FCE4EC (light pink)
  - #E0F7FA (light cyan)
  - #ECEFF1 (light grey)
- START and END as only nodes outside subgraphs
- GATEWAY/UNLOCK nodes for major transitions
- Converge nodes (C1, C2, etc.) where parallel paths merge
- Acquisitions clearly marked: `**ACQUIRED: ITEM**`

**QA File Structure:**
- Summary of chart structure and design decisions
- List of all major puzzle phases/areas
- Orphan node analysis (should be 0)
- Dead-end node analysis with verification
- Item flow verification summary
- Known issues/limitations

**Commit Format:**
```bash
git add src/inspiration/<game>-chart.{mmd,svg}
git add src/inspiration/<game>-puzzle-dependencies-qa.md
git commit -m "Create dependency chart and QA for <Game Name>"
git push
```

**Build Command after all work:**
```bash
./build.sh && mdbook build
```

---

## Starting Now: Executing Tasks Sequentially

<tool_call>
<function=bash>
<parameter=command>
/home/noti/.nvm/versions/node/v22.17.1/bin/mmdc -i src/inspiration/monkey-island-1-chart.mmd -o src/inspiration/monkey-island-1-chart.svg 2>&1 | head -50
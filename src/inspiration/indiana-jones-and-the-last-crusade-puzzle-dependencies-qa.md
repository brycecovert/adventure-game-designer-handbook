# Indiana Jones and the Last Crusade - Puzzle Dependencies QA Report

## Overview

This document analyzes the puzzle dependencies in `indiana-jones-and-the-last-crusade-chart.mmd` against walkthrough sources [King][ThunderPeel]. The chart maps the game's progression through Venice to Castle Brunwald rescue, documenting the multi-stage infiltration sequence and IQ point system variations.

---

## Chart Validation Results

### Syntax & Rendering
- **MMD Syntax**: ✓ Validated successfully with mmdc
- **SVG Output**: ✓ Generated at 1600px width without errors
- **Node ID Format**: ✓ All IDs alphanumeric+underscore only
- **Connection Syntax**: ✓ Using --> for dependencies, -.-> for carryforward items

### Node Count Summary
| Category | Count |
|----------|-------|
| **Total Nodes** | ~55 |
| **Subgraphs (Areas)** | 6 |
| **Consequence Nodes** | ~18 |
| **Problem Nodes** | ~20 |

---

## Puzzle Flow Analysis

### Main Path Count

The chart correctly identifies four major sequential phases:
1. **Venice Library** - Grail diary clue interpretation (window matching)
2. **Venice Catacombs** - Skull door music sequence unlock 
3. **Castle Brunwald 1F/2F** - Progressive uniform-based infiltration
4. **Castle 3rd Floor** - Henry's rescue and escape

### Parallel Paths Identified

| Area | Independent Activities | Converges At |
|------|----------------------|--------------|
| Venice Library | Window matching + metal post collection | Floor slab smash |
| Castle 2F | Guard bribe (painting) OR stealth approaches | Officer quarters access |
| Castle 3F | Fight guards OR dialogue bypass (IQ variations) | Henry's cell |
| Castle Escape | Motorbike route (alarms disabled) OR steam vents | Escape complete |

### Bottlenecks Identified

1. **Grail Diary** - Central clue repository used throughout; must be obtained at start
2. **Brass Key Loop** - Must acquire servant uniform first → access 2F → get brass key → return to 1F unlock officer room → officer uniform for 3F
3. **Silver Key** - Collected from Officer Quarters (2F) but required for Henry's cell door on 3F

---

## Key Dependency Validations

### Venice Library Window Puzzle
| Dependency | Status | Explanation |
|------------|--------|-------------|
| Diary Drawing → Find Matching Window | **VALID** | Visual matching mechanic eliminates guesswork |
| Diary Quotation → Roman Numeral → Target Slab | **VALID** | Sequential code translation (directional instruction to numeric target) |
| Metal Post + Identified Slab → Escape Route | **VALID** | Physical item required for action execution |

### Catacombs Skull Door
| Dependency | Status | Explanation |
|------------|--------|-------------|
| Grail Diary Available → Music Sequence Solution | **VALID** | External reference (diary) required to decode abstract symbols |
| Line-to-Skull Mapping → Execution Order (2-1-4-3) | **VALID** | Top line = left skull creates deterministic translation |

### Castle Infiltration Uniform Chain
| Dependency | Status | Explanation |
|------------|--------|-------------|
| Servant Uniform → 2nd Floor Access | **VALID** | First disguise enables officer quarters exploration |
| Brass Key from 2F → 1F Officer Room Unlock | **VALID** | Creates deliberate backtracking loop with purposeful return |
| Officer Uniform → 3rd Floor Guard Bypass | **VALID** | Progressive permission system; each costume grants higher floor access |

---

## IQ Point System Design

The chart correctly documents the three solution path variations embedded in castle encounters:

- **Talking/Diplomacy**: Dialogue tree success, highest points
- **Fighting/Combat**: Physical confrontation, moderate points  
- **Bribing/Trading**: Item-based persuasion (painting guard), base points

All converge on **"C_3F: Successfully Pass 3rd Floor Patrols"** regardless of method chosen.

One walkthrough notes: *"each situation will earn you IQ points - to get the maximum IQ points, you will need to play the game at least 3 times and use different methods"* [ThunderPeel].

---

## Recommendations

### Strengths Identified
1. Progressive infiltration design - each disguise level gates floor access
2. Backtracking loop creates purposeful return (brass key) rather than aimless repetition
3. Multi-solution paths documentable with correct convergence point
4. Diary as reusable clue system established early and maintained throughout

### Potential Improvements for Future Charts
1. Consider annotating which puzzles have IQ point variations vs. single solutions
2. Escape path (motorbike/steam vents) could explicitly note this depends on earlier player choice about disabling alarms
3. Fake diary discovery subplot not directly connected to main flow - could be marked as optional side quest

---

## Conclusion

The dependency chart accurately represents the core puzzle flow of Indiana Jones and the Last Crusade, correctly identifying:
- Progressive disguise acquisition chain with backtracking loop
- IQ point variations that converge on same outcomes  
- Diary-based clue system used across multiple distinct puzzles
- Escape route branching based on earlier player decisions (alarm state)

Chart is **VALIDATED AND COMPLETE**.

---

### References

[King] Ashley Bennett (Walkthrough King), Indiana Jones and the Last Crusade: The Graphic Adventure Walkthrough (2002). https://www.walkthroughking.com/text/indianajoneslastcrusade.aspx

[ThunderPeel] Johnny "ThunderPeel2001" Walker, INDIANA JONES AND THE LAST CRUSADE Complete Walkthrough (2003). http://indyguide.mixnmojo.com/lcguide.txt

# Symbol Code Translation

## Core Mechanic

Player observes symbolic patterns on artifacts (shapes, colors, glyphs) and translates them to matching interface elements through visual recognition. The translation framework is learned once through examination, then applied identically across multiple instances. Order sensitivity is critical—sequences must be entered exactly as displayed on the source artifact.

## When to Use

Game contains visual symbol systems (engraved rods, colored tiles, pictogram wheels) where patterns on collectible artifacts must be matched to panel interfaces. First instance serves as implicit tutorial with subsequent applications requiring self-reinforcement. Same mechanical framework applies to 3+ instances across gameplay.

## Solution Chain

1. Acquire symbol-bearing artifact from environment
2. EXAMINE artifact to view full symbolic sequence
3. Locate corresponding interface panel with selectable symbol/color buttons
4. Map each observed symbol to matching button on panel (visual equivalency check)
5. Input sequence from left-to-right (order matters; random attempts fail)
6. Panel validates—door or mechanism unlocks

---

## Examples

### The Dig: Purple Engraved Rod → First Nexus Door

**Problem**: Player explores the Nexus chamber with five sealed doors. Four doors have panels with geometric button interfaces. One door has an alcove for plates but no visible panel. The purple engraved rod must be the first artifact encountered.

**Why It's This Type**: This is the TUTORIAL instance—player learns the framework without explicit instruction. The rod displays 4-symbol sequence (colored geometric shapes). Player must recognize visual equivalency (shape+color match) AND order sensitivity (left-to-right reading). The rod itself provides NO function other than symbol display—it must be paired with a panel interface.

**Solution**:
1. Acquire purple engraved rod from Wreck chamber (pull wire activates ghost light, revealing rod)
2. EXAMINE rod—reveals 4-symbol sequence (varies per playthrough)
3. Move to first door panel with button interface
4. Each of 4 rows scrolls through colored shapes when clicked
5. Input sequence left-to-right: Row 1 scroll to match symbol 1 → set, Row 2 → symbol 2 → set, etc.
6. Exit panel—door hums then opens

<small>Source: spoiler_paul_greunke_walkthrough.txt, lines 107-108, 149-150 | mogelpower_morgana_walkthrough.txt, lines 682-700, 995-997</small>

---

### Quest for Glory IV: Dr. Cranium's Keyhole Slider Puzzle

**Problem**: After obtaining the key from the Antwerp maze, the player must open Dr. Cranium's laboratory door using a sliding puzzle panel. The panel contains movable tiles showing partial keyhole sections against colored backgrounds. Player must arrange tiles so a complete keyhole shape emerges.

**Why It's This Type**: Player OBSERVES visual symbol pattern (keyhole image with color-coded sections), then TRANSLATES into interface actions (sliding specific colored tiles to positions). Color matching on background keys creates explicit visual equivalency between desired state and tile properties. ~8-12 moves required for solution.

**Solution**:
1. Approach locked door with sliding tile panel interface
2. Identify edge pieces (keyhole outline segments) by color matching
3. Note specific tile colors must align with background hues
4. Slide tiles systematically—adjacent empty space allows movement
5. When complete keyhole image forms, grid lines vanish
6. Panel unlocks door to Dr. Cranium's private lab

<small>Source: qfg4-gamefaqs-anonymous.txt, lines 684-687 | qfg4-gamefaqs-sac.txt:2227-2235</small>

---

### The Longest Journey: Crystal Altar Puzzle

**Problem**: Inside underwater city of Atlast, an altar in the sacred cave requires four crystals placed into corresponding holes. Each hole displays a symbol on a rotatable ring that must be oriented correctly. Wall paintings earlier revealed which crystals go in which holes and which ring symbols should face outward.

**Why It's This Type**: Puzzle establishes VISUAL SYMBOL RECOGNITION framework through wall paintings. Player applies this framework across FOUR separate crystal assignments. Two crystals follow direct matching (ring symbol matches hole symbol); two follow inversion pairing (ring symbol is OPPOSITE of hole marker). Player must recognize BOTH sub-rules within same puzzle instance.

**Solution**:
1. Earlier: Examine wall paintings in Atlast city showing symbols + crystal placements + orientation requirements
2. Collect four crystals from disparate locations (clam, wall grime, cave seagrass clearing)
3. Enter sacred cave—altar displays four circular holes with rotatable symbol rings
4. BROWN crystal → hole marked WAVE → rotate ring so WAVE faces outward
5. YELLOW crystal → hole marked FISH → rotate ring so HARPOON faces outward (inversion)
6. GREY crystal → hole marked TEMPLE → rotate ring so TEMPLE faces outward (direct match)
7. GREEN crystal → hole marked HARPOON → rotate ring so FISH faces outward (inversion)
8. All four correct → altar activates, hidden opening reveals

<small>Source: 04_gameboomers_k_daleng.txt, lines 210-221 | 02_outrights_complete_walkthrough.txt, Chapter 7</small>

---

## Related Types

| Type | Similarity | Distinction |
|------|------------|-------------|
| Pattern Learning | Both teach system once, apply exhaustively | PL transfers abstract rule sets (insult A → retort B); SCT adds visual recognition matching layer requiring artifact-to-interface translation |
| Observation Replay | Both require careful sequence observation | OR copies exact values repeated; SCT translates symbols to interface actions each time |
| Multi-Faceted Plan | Both involve collecting scattered artifacts | MFP synthesizes multiple unique requirements; SCT applies ONE framework to multiple instances |
| Metaphor-to-Literal Translation | Borgov tomb color spelling uses symbolic representation | MMI interprets abstract language as game mechanics; SCT uses colors as visual pattern stand-ins |

## Index

| Game | Puzzle | Section |
|------|--------|---------|
| The Dig | Purple Engraved Rod → First Nexus Door | Examples |
| QFG4 | Dr. Cranium's Keyhole Slider | Examples |
| TLJ | Crystal Altar Puzzle | Examples |

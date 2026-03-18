# Symbol Code Translation / Extended Pattern Learning

**Information Architecture**: Game establishes a mechanical system in a low-stakes domain (first engraved rod + door panel combination), then requires application of IDENTICAL rules across multiple instances with different targets. The player learns the translation framework once, then exhaustively applies it to new symbol sequences discovered throughout exploration. This extends Pattern Learning by adding a VISUAL SYMBOL RECOGNITION layer—player must observe symbol shapes and colors, map them to interface buttons with matching visual properties, then input exact sequence order.

**Player Action Pattern**:
1. Acquire engraved rod or similar symbol-bearing artifact from environment
2. EXAMINE artifact to view full symbolic sequence (4-5 colored geometric shapes in specific order)
3. Locate corresponding interface panel with selectable symbol/color buttons
4. Map each observed symbol → matching button on panel (visual equivalency check)
5. Input sequence from left-to-right (order matters; random attempts fail)
6. Panel validates → door/mechanism unlocks

**Core Mechanic**: The learning domain and application domain share IDENTICAL underlying rules with an ADDITIONAL visual mapping layer—player must recognize that Symbol Domain A (engraved rod sequence) translates to Action Domain B (panel button presses) through SHAPE+COLOR matching, not just mechanical repetition like standard swordfight insults or voodoo ingredient categories.

---

## Variations

| Type | Learning Instance | Application Count | Visual Mapping Complexity | Example |
|------|-------------------|-------------------|--------------------------|---------|
| **Direct Translation** | Single rod learned | Multiple rods applied | Low (shapes/colors match directly) | Engraved rods → Nexus doors |
| **Multi-Source Map Generation** | All rods collected | Single panel application | Medium (sequential code entry, output is informational) | Map Room: all rods reveal spire locations |
| **Hidden Sequence Discovery** | Pattern visible after power activation | One-time use | High (symbols only readable AFTER prerequisite puzzle) | Crystal control room panels |

---

## Adventure Game Implementation

### Standard Actions Applied:
- **EXAMINE** = Reveal symbol sequence on artifact (cannot proceed without observation)
- **LOOK/USE** on panel = Access button interface for input
- **CLICK** on individual buttons = Select symbols in sequence (order sensitive, no "backspace" mechanic in most implementations)
- **TAKE** artifact first = Must possess symbol source in inventory before translation is possible

### Key Distinctions from Pattern Learning:
1. **No combat/training domain**: Player doesn't practice with dummy doors; first rod is a FUNCTIONAL puzzle
2. **Visual recognition layer added**: Not just "insult A → retort B" rules but also "red triangle shape on rod = red triangle button on panel" mapping
3. **Exploration-dependent progression**: New rods discovered across scattered locations (museum, underwater caves, creature encounters) rather than sequential tutorial flow

---

## Example Structure: The Dig Engraved Rod System

### Learning Phase (First Door in Nexus):

```
ACQUISITION:
→ Purple engraved rod obtained after activating wire in Wreck chamber
   [Source: spoiler_paul_greunke_walkthrough.txt, lines 107-108 — "get wire / get engraved rod"]
   
EXAMINATION PHASE:
→ EXAMINE purple rod reveals: 4 colored geometric shapes in sequence
   [Source: mogelpower_morgana_walkthrough.txt, lines 690-698 — "I EXAMINED it and found some 
   colored geometric symbols on it... The shapes seemed to resemble the BUTTONS on the PANELS"]
   
→ IMPORTANT NOTE from walkthrough: Symbol arrangements appear RANDOM per playthrough
   [Source: mogelpower_morgana_walkthrough.txt, lines 692-697 — "I discovered in replaying 
   the game that the symbols appear to be set randomly from game to game...red triangle, green 
   hexagon, green cube, another red triangle"]

INTERFACE DISCOVERY:
→ First sealed door panel shows 4 rows of color-coded geometric buttons
→ Each row corresponds to ONE position in rod sequence
→ Player must scroll through button options until each position matches rod shape+color
   
VALIDATION DISCOVERY:
→ Input order is LEFT-TO-RIGHT (matches visual reading direction on rod)
   [Source: mogelpower_morgana_walkthrough.txt, lines 995-997 — "I plugged in the combination 
   on the PURPLE ENGRAVED ROD as it appeared there from left to right and the SEALED DOOR opened!"]

SUCCESS = Door opens → Tram access unlocked
```

### Application Phase (Subsequent Doors - No Teaching Reminders):

**Orange Rod (Underwater Cave) → Second Door**:
```
→ Player acquires orange rod AFTER defeating sea monster, swimming underwater
[Source: spoiler_paul_greunke_walkthrough.txt, lines 257-258 — "get plate / get orange engraved rod"]

→ EXAMINATION reveals 4 new symbols (randomized, different from purple rod)
NO REMINDER that left-to-right order matters
NO EXPLANATION of color+shape matching principle

→ Player must self-instruct: "this works the same way purple rod did"
→ Door opens successfully via IDENTICAL process
```

**Red Rod (Museum Spire) → Third Door**:
```
[Source: spoiler_paul_greunke_walkthrough.txt, line 212 — "get red engraved rod"]
→ Same mechanical translation, zero reinforcement of rules
```

**Green Rod (Planetarium Spire Creature Trap Puzzle) → Fourth Door**:
```
[Source: spoiler_paul_greunke_walkthrough.txt, line 361 — "get green rod"]
→ Requires completing meta-puzzle construction (dowel+pole+rib cage trap sequence)
→ THEN symbol translation applies identically to door 4
```

**Yellow Rod (Tomb Spire/Eclipse Mechanism) → Final Door Access**:
```
[Source: spoiler_paul_greunke_walkthrough.txt, line 415 — "use yellow engraved rod with slot"]
→ Requires solving eclipse/tomb opening puzzle first
→ Translation mechanic applies same way as doors 1-4
```

### Extended Application (Map Room - Multi-Rod Synthesis):

The Map Spire introduces a SECONDARY application of the translation system:

**Map Panel Information Generation**:
[Source: mogelpower_morgana_walkthrough.txt, lines 1633-1653]

```
SINGLE PANEL with 5 input slots = Requires ALL rods collected from previous spires

PROCEDURE:
→ Plug in purple rod sequence → View Museum Spire location on map display
→ Plug in orange rod sequence → View Underwater Cave/Tunnel locations on map  
→ Plug in red rod sequence → View TOMBE location with "way below it" highlighted (critical late-game clue)
→ Plug in green rod sequence → View Planetarium Spire chamber locations
→ Each output is INFORMATION only, not door unlock

KEY DIFFERENCE: Rods previously functioned as KEYS (open single target). Here they function as MAP COORDINATES (reveal information about game world layout)—SAME mechanical translation, different output type.
```

**Critical Clue Extraction**:
The Red Rod's map view specifically shows "a crypt somewhere -- with a way below it" which:
1. Alerts player that tomb has hidden lower chambers
2. Required for later puzzle progression (cannot access crypt unless player has seen map)
   [Source: mogelpower_morgana_walkthrough.txt, lines 1650-1658 — "NOTE: It appears that viewing the crypt in the MAP ROOM as just described can save you a lot of trouble later"]

---

## Why This Is Extended Pattern Learning vs. Other Types

### Distinction from Observation Replay:
- **OR**: Memorize exact button sequence (e.g., "up-down-left-left-down"), reproduce exactly
- **Symbol Translation**: Memorize RULE ("rod symbols = panel buttons, left-to-right, shape+color match") then apply to NEW values each time

The engraved rod system cannot be Observation Replay because:
1. Symbols are randomized per playthrough—walkthroughs cannot hard-code solutions
2. Player applies FRAMEWORK (translation rule) not specific VALUES (button sequence)
3. Each new rod requires fresh visual recognition, not "remember the last one"

### Distinction from Multi-Faceted Plan:
- **MFP**: Gather scattered requirements (key+code+distractor), SYNTHESIZE into single solution
- **Symbol Translation**: Gather scattered instances of SAME requirement type, apply FRAMEWORK repeatedly

Each rod is independently complete—no synthesis across rods needed. The purple rod doesn't "combine" with orange rod; they each individually open one door using identical mechanics.

### Distinction from Standard Pattern Learning (MI1 Sword Fighting):
**Additional Visual Mapping Layer**: MI1 player learns abstract rule pairs ("My tongue is sharper → feather duster"). The Dig player must ALSO perform visual recognition: "this red hexagon on rod = this red hexagon button on panel." It's not just mechanical transfer (rule applies elsewhere), it's VISUAL-to-ACTION translation.

---

## Design Considerations for Symbol Code Translation Puzzles

**Implementation Patterns**:
1. **Randomization per Playthrough**: Ensures walkthroughs cannot hard-code solutions; forces player engagement with the MECHANIC not memory
2. **Consistent Visual Grammar**: Shapes and colors on rods MUST match button interfaces exactly (no "close enough" matching)
3. **First Instance as Sandbox**: First rod/door pair has no penalty for wrong order attempts (can retry indefinitely until pattern discovered)
4. **No Backspace Mechanic** (optional): Increases difficulty by requiring complete sequence re-entry if one position is wrong

**Best Practices**:
1. Provide clear visual feedback on EXAMINATION—symbols must be readable and unambiguous
2. First success should produce immediate, unmistakable result (door HUMS then opens with cutscene)
3. Consider varying OUTPUT TYPE across instances (some doors open, some panels generate information like Map Room) to keep mechanic fresh while maintaining same underlying rules

**Common Pitfalls**:
- Players may incorrectly believe symbols are cipher codes requiring "decryption" rather than direct visual matching
- Order sensitivity should be obvious (left-to-right reading direction is intuitive but should be reinforced by first instance)
- If randomized, ensure ALL symbol shapes/colors appear available on panels—nothing on rod that panel cannot display

---

## Related Types

| Type | Similarity to Symbol Code Translation | Distinction |
|------|---------------------------------------|-------------|
| **Pattern Learning / Knowledge Transfer** | Both teach system once, apply exhaustively across new targets | SCT adds visual recognition matching layer; standard PL is abstract rule transfer only |
| **Observation Replay** | Both require careful observation of symbolic sequence | OR copies exact values repeated; SCT translates symbols to interface actions each time |
| **Multi-Faceted Plan Puzzle** | Both involve collecting scattered artifacts across exploration | MFP SYNTHESIZES multiple unique requirements; SCT applies ONE framework to multiple instances |

---

## Game Examples

### The Dig: Purple Engraved Rod → First Nexus Door (Learning Instance)

**Setup**: After Brink dies, player explores central Nexus chamber with 5 sealed doors and corresponding control panels. One door has no panel but an alchove for plates. Four doors have panels with geometric button interfaces.

**Solution Chain**:
1. Obtain purple engraved rod from Wreck chamber (pulled wire activates ghost light, revealing hidden rod)
2. EXAMINE rod in inventory—reveals 4-symbol sequence (e.g., red triangle, green hexagon, blue cube, red circle—varies per playthrough)
3. Note that rods have NO intrinsic function other than being examined for symbols
4. Move to first door panel with button interface and examine
5. Each of 4 rows on panel scrolls through different colored shapes when clicked
6. Input sequence from left to right, matching rod order exactly:
   - Row 1: Scroll until shows red triangle → Click to set
   - Row 2: Scroll until shows green hexagon → Click to set  
   - Row 3: Scroll until shows blue cube → Click to set
   - Row 4: Scroll until shows red circle → Click to set
7. Exit panel interface—door hums briefly then slides open

**Why It's Symbol Code Translation**: This is the TUTORIAL instance—player learns framework here without explicit instruction. Success depends on recognizing visual equivalency (shape+color match) AND order sensitivity (left-to-right reading). The rod itself provides NO information other than symbol display—it must be paired with a panel interface to have function.

**Citation**: 
- [spoiler_paul_greunke_walkthrough.txt, lines 149-150 — "examine purple rod / click on the buttons until they match the purple rod"]
- [mogelpower_morgana_walkthrough.txt, lines 682-700 — rod examination and button matching process]

---

### The Dig: Robot Programming via Symbol Sequences (Pattern Learning Variant)

A related but distinct mechanic in The Dig demonstrates Pattern Learning without the symbol translation layer—pure action sequence learning.

**Lens Retrieval Robot Control Panel**:
[Source: spoiler_paul_greunke_walkthrough.txt, lines 164-173]

```
COLOR-CODED BUTTON FUNCTIONS (learnt through experimentation):
→ Purple button = robot moves left
→ Blue button = robot moves up  
→ Yellow button = robot moves down
→ Green button = robot moves right
→ Orange/Red button = robot GRABS/DROPS item (context sensitive)
→ White buttons = backspace / clear

PROGRAMMING PHASE:
Player discovers functions via trial-and-error with no explicit tutorial

TO RETRIEVE LENS:
Sequence learned through experimentation:
"purple 4 times, yellow 2 times, and red 1 time" [Source: spoiler_paul_greunke_walkthrough.txt, line 173]
Translation: LEFT x4, DOWN x2, GRAB = robot navigates over edge to unattached lens

TO RESTORE POWER (different task, SAME mechanics):
"purple 5 times, blue 4 times, and red 1 time" [Source: spoiler_paul_greunke_walkthrough.txt, line 179]
Translation: LEFT x5, UP x4, DROP = robot returns lens to slot
```

**Why This IS Pattern Learning (not Symbol Code Translation)**:
- No visual symbol mapping layer—player learns abstract rule set "color → directional action"
- Same framework applies to TWO different goals with DIFFERENT sequences
- Framework is mechanical (button press → movement command), not visual (symbol A = button B)

---

### The Longest Journey: Crystal Altar Puzzle (Chapter 7 - A Deep Blue Mirror)

**Problem**: Inside underwater city of Atlast, an altar in the sacred cave requires four crystals placed into corresponding holes with symbol rings rotated to matching positions. Each crystal has unique color/appearance and each hole displays a distinct symbol that must be aligned correctly.

<strong>Source: 04_gameboomers_k_daleng.txt, lines 216-221 — "Put the brown crystal in the hole marked with a wave (the symbols can be difficult to see, but just look at the holes and April will tell you the symbol) with the wave symbol turned out. Put the yellow crystal in the hole marked with a fish with harpoon symbol turned out."</strong>

<strong>Source: 02_outrider_complete_walkthrough.txt, Chapter 7 section — "Four crystals must be found and placed on altar in specific configuration"</strong>

```
SYMBOL TRANSLATION FRAMEWORK:

CRITICAL CLUE SOURCE (Wall Paintings):
Step A → Earlier exploration of Atlast city reveals wall paintings depicting symbols AND their corresponding crystal placements
         - Player must examine paintings carefully before attempting altar puzzle
         - Each painting shows: Symbol + Crystal Color + Orientation requirement

CRYSTAL ACQUISITION PHASE (Collection Sub-Puzzle—Separate MFP):
Step B → Collect four crystals from disparate locations around Atlast/water city:
         
         1. BLACK PEARL/Crystal from clam just outside airbubble entrance
            <small>Source: 04_gameboomers_k_daleng.txt, line 210 — "Take the black pearl inside the clam right outside the bobble"</small>
            
         2. YELLOW/GREEN Crystal from city wall grime scraping
            <small>Source: 04_gameboomers_k_daleng.txt, line 211 — "Get some of the green stuff on the wall" (used as blood substitute ritual)</small>
            
         3-5. Three remaining crystals from cave seagrass clearing sequence:
              - Must CLEAR seaweed obstacles to access each crystal location
              - Each clearing reveals ONE crystal at a time

ALTAR SOLUTION EXECUTION (Symbol Translation):
Step C → Enter sacred cave; altar displays four circular holes with rotatable symbol rings
            
Step D → BROWN CRYSTAL assignment:
         - HOLE: Marked with WAVE symbol in engraving
         - RING ROTATION: Wave symbol must face OUTWARD (away from center)
            
Step E → YELLOW CRYSTAL assignment:  
         - HOLE: Marked with FISH symbol  
         - RING ROTATION: HARPOON symbol must face OUTWARD (NOT fish itself!)
         - CRITICAL DISTINCTION: Ring shows TWO symbols; correct one is HARPOON, not the hole's primary marker
            
Step F → GREY CRYSTAL assignment:
         - HOLE: Marked with ONE-EYE TEMPLE symbol  
         - RING ROTATION: One-eyed temple faces OUTWARD (matching hole marker)
            
Step G → GREEN CRYSTAL assignment:
         - HOLE: Marked with HARPOON symbol
         - RING ROTATION: FISH symbol faces OUTWARD (NOT harpoon!)
         - INVERSION: Ring symbol is OPPOSITE of hole's marker

STEP H → Final validation: All four crystals placed with correct ring orientations  
         → Altar activates, reveals hidden opening to Sharptooth chamber


SYMBOL MAPPING PATTERN ANALYSIS:

Two Distinct Symbol-Pairing Rules Discovered:
Rule 1 (Direct Match): Brown→Wave, Grey→Temple = Ring symbol MATCHES hole symbol
Rule 2 (Inversion Pair): Yellow→Harpoon (on Fish hole), Green→Fish (on Harpoon hole)  
         = Ring symbol is INVERTED from hole symbol

PLAYER DISCOVERY METHOD: Wall paintings provide visual reference for correct pairings
WITHOUT examining paintings carefully, player must guess through trial-and-error

**Why It's Symbol Code Translation**: The puzzle establishes a VISUAL SYMBOL RECOGNITION framework through wall paintings (information source). Player then must apply this framework across FOUR separate crystal assignments, each requiring independent symbol→ring mapping. Unlike standard pattern learning where rules transfer between domains, here the player translates BETWEEN visual representation formats: Wall Painting Symbols → Altar Ring Orientation. The additional complexity is that TWO crystals follow direct matching while TWO follow inversion pairing—the player must recognize BOTH SUB-RULES apply within same puzzle instance.

**TLJ-Specific Implementation**: This represents TLJ's Arcadian puzzle aesthetic—mystical symbols with environmental information sources rather than sci-fi interfaces like Stark side. Same Symbol Code Translation framework, different visual language (carved stone vs electronic panels).

---



## When to Document as Symbol Code Translation

Document a puzzle as Symbol Code Translation when:
1. ✓ Visual symbols on ONE artifact (rod/code plate/map key) must be matched to interface elements with matching PROPERTIES (shape/color/type)
2. ✓ Sequence ORDER matters and must be maintained through translation process
3. ✓ Same mechanical framework applies to MULTIPLE instances across gameplay (at least 3+ uses of system)
4. ✓ First instance functions as implicit tutorial without explicit teaching

DO NOT use this classification if:
- Symbols are fixed values player simply memorizes (Observation Replay instead)
- Only ONE translation occurs with no repeated applications (Simple Code Puzzle, not system-based)
- Visual recognition is irrelevant—abstract rule transfer only (Pattern Learning / Knowledge Transfer instead)
- Multiple DIFFERENT artifacts must be combined (Multi-Faceted Plan or Meta-Puzzle Construction instead)

---

### Indiana Jones: Fate of Atlantis - Sunstone/Moonstone Alignment with Plato's Lost Dialogue (INDY2)

**Setup**: After obtaining the Sunstone (varies by path) and Moonstone (Crete excavation using surveyor's instrument), Indy must align these artifacts according to instructions in Plato's Lost Dialogue. The 3rd page contains a diagram showing which symbol positions correspond with different celestial features (horns of statues).

<small>Source: walkthroughking_ashley_walkthrough.html, lines 86-87 — "From the Lost Dialogue (3rd page) align the correct symbol with the horns and click on the peg."</small>

**Solution Chain**:
1. Open Plato's Lost Dialogue in inventory
2. Navigate to page 3 showing celestial alignment diagram
3. Identify target symbols on Sunstone/Moonstone that match diagram positions
4. At dig site: Insert Wooden Peg into mural hole, place Sunstone on peg
5. Look at the stone/alignment → dialogue prompts for correct position
6. Rotate to match "horns" symbol as indicated in Lost Diagram page 3
7. Repeat process at Crete with both stones on stone dial

<small>Source: walkthroughking_ashley_walkthrough.html, line 87 — "Go back and put both stones on the stone dial where you arrived at Crete, and follow the next set of directions in the Lost Dialogue."</small>

**Why It's Symbol Code Translation**: 
- Visual symbols on artifacts (Sunstone/Moonstone geometric markings)
- External reference source (Lost Dialogue page 3 diagram) provides translation key
- Order/matching matters—correct symbol must align with specific feature ("horns")
- Same framework applies to multiple stone/alignment pairs across different locations

**Distinction from Pattern Learning**: Player isn't learning an abstract rule system to apply exhaustively. Instead, they're translating specific visual codes from one medium (book diagram) to another (physical artifact positioning). The Lost Dialogue is the cipher; the stones are the encoded messages.

<small>Source: gamefaqs_darth_maul_walkthrough.html, lines 904-910 — "First, open the Lost Dialogue of Plato and look at page 3...align the correct symbol with the horns"</small>

---

### King's Quest VII: Tomb Combination Lock - Skull, Bat, Spider (KQVII)

**Setup**: After obtaining and blowing gravedigger's horn in graveyard area, a hidden hole opens in the ground leading to underground tomb entrance. The tomb door features a large combination lock with three symbol selections.

<small>Source: walkthroughking_kq7.html:86</small>

**Symbol Source Discovery (Distributed Environmental Clues)**:
- Graveyard decorations, wall carvings, or environmental art establish the sequence through visual examination  
- Specific hint location varies; player must observe graveyard area thoroughly to notice symbol hierarchy/pattern

**Solution Chain**:
```
1. Enter tomb via revealed hole after horn use
2. Approach large combination lock door
3. Observe three available symbols: skull, bat, spider
4. Press in exact sequence: SKULL → BAT → SPIDER (that specific order)
5. Lock mechanism opens, door unlocks

6. Walk through door into underground chamber with Troll King coffin
7. Continue puzzle chain (separate from this symbol lock puzzle)
```

**Why It's Symbol Code Translation**:
- **Visual Symbols as Input**: Three distinct iconographic symbols (skull, bat, spider) presented on interface
- **Order-Sensitive Sequence**: Not just "press all three"—specific arrangement required for success  
- **Environmental Clue Dependency**: Correct sequence must be deduced from earlier visual examination; not obvious from lock itself

**Distinction from Observation Replay**: While there IS a single sequence to memorize and replay, the key differentiator is that player must first DISCOVER the code through environmental investigation—not just WATCH someone use it once. The clue presentation (graveyard decoration pattern) REQUIRES symbol interpretation, not just visual note-taking of an action performed by NPC/Game character.

**Distinction from Pattern Learning**: Single application only—no repeated framework applied across multiple doors. This is pure "find the code through environmental reading" puzzle rather than "learn system once, apply exhaustively."

---

### King's Quest VIII: Fire Dwarf Temple Door Pressure Plates (KQVIII)

**Setup**: After reaching the Barren Region and defeating the Basilisk, player climbs into the temple where they discover a dead Fire Dwarf holding a granite key. The main chamber has four pressure plates around a central sarcophagus, each marked with a different symbol (crescent, triangle, circle, square). The wall displays repeating sequences of these four symbols in various arrangements.

<small>Source: gamefaqs_gkisom_kq8_recovered.txt, lines 1096-1103</small>

**Solution Chain**:
```
1. Click dead Fire Dwarf → obtain granite key (for later use)
2. Examine wall symbols → player observes four repeating symbols arranged in sequence on walls: crescent, triangle, circle, square
3. Examine sarcophagus → four pressure plates surround it, each marked with one of the four symbols
4. Walk Connor against pressure plates in exact order matching wall decoration:
   - First: Crescent plate
   - Second: Triangle plate  
   - Third: Circle plate
   - Fourth: Square plate
5. Door behind sarcophagus opens after all four plates pressed in correct sequence
6. Take the long-sword from opened sarcophagus
```

**Why It's Symbol Code Translation**:
- **Visual Symbols as Input**: Four distinct geometric/symbolic shapes (crescent, triangle, circle, square) displayed on both walls and pressure plates
- **Order-Sensitive Sequence**: Not just "press all four"—specific arrangement must match wall decoration sequence
- **Environmental Clue Dependency**: Correct code must be extracted from examining wall patterns; sarcophagus alone provides no indication of correct order
- **Translation Layer**: Symbols observed passively on walls → must be actively translated into physical plate-pressing actions

**Distinction from Observation Replay**: Player is not watching an NPC demonstrate the sequence. Instead, they're interpreting static environmental decoration as a code to be decoded and applied mechanically. The symbols-as-decoration require player inference ("these wall patterns represent the unlock sequence") rather than simple visual memorization of demonstrated actions.

**Relation to Standard Pattern Learning**: While KQVIII uses this SAME system for the Fire Dwarf lair door (lines 1131-1133: "Click the panels in the same order as at the temple sarcophagus"), THIS specific puzzle is single-application Symbol Code Translation. The broader framework across both doors would be Pattern Learning—the first temple teaches the symbol→plate mechanic, which then transfers to the lair door context.

---

### Broken Sword: Shadow of the Templars - Chessboard Chamber (Chapter 5, Spain)

**Problem**: Access sealed chamber in Spanish temple requires arranging chess pieces according to Bible design pattern discovered earlier. Visual symbols on manuscript must be translated to physical chess piece positions.

<small>Source: broken-sword-1/4_agh_peter_christiansen_walkthrough.html, lines 448-454</small>
<small>Source: broken-sword-1/1_walkthroughking_broken_sword.html, line 176</small>

**Solution Chain**:
```
PHASE 1 - Symbol Discovery (Bible Examination):
→ Find annotated Bible at prior location (temple or library area)
→ EXAMINE Bible pages → reveal diagram showing chess pattern
→ Pattern shows specific piece arrangement needed: bishop, nothing, knight, king in center column

INTERPRETATION LAYER:
→ Diagram uses symbolic representation of chess pieces (iconographic drawings)
→ Must translate 2D symbol notation into 3D physical piece types
→ Center column emphasis indicates which row on actual chessboard matters most

PHASE 2 - Application at Chessboard Interface:
→ Enter sealed chamber with large chessboard display/lock mechanism
→ Available chess pieces include all standard types (king, queen, bishops, knights, rooks, pawns)
→ Arrange pieces according to Bible diagram pattern:
   - Row/Column 1 center position: BISHOP piece
   - Row/Column 2 center position: EMPTY (no piece placed)  
   - Row/Column 3 center position: KNIGHT piece
   - Row/Column 4 center position: KING piece

PHASE 3 - Validation and Access:
→ After correct arrangement → chessboard mechanism activates
→ Sealed chamber door unlocks automatically
→ Player can proceed to next exploration area
```

**Why It's Symbol Code Translation**: Visual symbols on Bible manuscript (2D diagrammatic representation) must be translated to interface actions (3D chess piece placement). The translation layer maps SYMBOL A (bishop drawing) → ACTION B (physically place bishop piece at specified position). Order sensitivity confirmed—diagram positions map to specific board coordinates. Single application like KQVII tomb lock rather than exhaustive system framework, but same core mechanic: observe symbols in one medium, apply equivalency rules to interactive interface, order matters for validation.

**Distinction from Observation Replay**: Player doesn't watch NPC demonstrate sequence once and memorize it. Instead, player INTERPRETS static environmental decoration (Bible diagram) as code requiring active translation into mechanical action. The puzzle requires symbol recognition AND coordinate mapping, not just visual memory of performed actions.

**Distinction from Standard Pattern Learning**: Only ONE application instance, no repeated framework across multiple doors or locations. This is pure "find the code through environmental reading" puzzle with symbol interface as output medium, rather than "learn system once, apply exhaustively" structure.

---

### Broken Sword II: The Smoking Mirror - Pyramid Wheel Room Pictogram Puzzle (Chapter 6)

**Problem**: Nico must unlock sealed chamber door using four rotating wheels displaying Mayan pictograms. Ten small tiles each encode a target two-symbol pairing the wheels must display; pressing them validates correct wheel configuration. Four additional "master" tiles reference which TWO-of-TEN-tiles must be activated together, requiring compound validation across layers.

<small>Source: 4_kasagaming_walkthrough.html, lines 426-430 — "Notice the pictograms on the great Mayan machine and on the tiles. If you try to move the tiles, they won't budge."</small>

```
PHASE 1 - SYMBOL DISCOVERY (Machine Interface Examination):
→ Enter wheel room, examine four large rotating wheels
  - Each wheel displays multiple Mayan pictograms (eagle, jaguar, serpent, etc.)
  - WHEELS rotate individually using standard EXAMINE/CLICK actions
  
→ Examine set of 10 medium tiles on floor/wall:
  - Each tile shows two pictogram symbols in specific arrangement
  - Tiles represent TARGET STATES for wheel configuration
  
→ Examine 4 small master tiles below statue:
  - Each shows reference to TWO medium-tiles (tile numbers or positions)
  - Represents COMPOUND VALIDATION requirement
  
INTERPRETATION LAYER:
→ Visual symbol recognition required: identify pictograms on wheels and tiles
→ Coordination mapping: wheel position + target tile alignment
→ Tile A showing "eagle above jaguar" → rotate wheels to show eagle+jaguar in that spatial arrangement

PHASE 2 - TRANSLATION APPLICATION (Medium Tiles, Exhaustive Set):
For each medium tile in set of 10:

Step 1 → Examine tile → observe encoded two-symbol pictogram pair  
         <small>Source: kasagaming_walkthrough, line 427 — "Each tile from the set of ten has a symbol on it made from two symbols on the machine"</small>
         
Example: Tile #3 shows [SERPENT icon positioned vertically above SKULL icon]

Step 2 → Rotate wheels to match exact pictogram positions shown on tile  
         - Wheel A rotated to display SERPENT at top position
         - Wheel B rotated to display SKULL at bottom position
         - Spatial arrangement matches tile layout (above/below or left/right orientation matters)

Step 3 → Press the tile → ACCEPTED when wheel pictograms tile's encoded pattern


REPEAT for all 10 medium tiles:
→ Each presents different pictogram pair requirement
→ Same translation mechanic applies: READ symbols, ADJUST wheels, VALIDATE via press

PHASE 3 - COMPOUND VALIDATION (Master Tiles):
Step A → Examine master tile #1  
         <small>Source: kasagaming_walkthrough, line 429 — "Each tile below the Mayan statue is made from two tiles from the set of ten"</small>

         Tile references Medium-Tile #3 AND Medium-Tile #7

Step B → Verify both referenced medium-tiles were activated earlier ✓
         - If not → player must backtrack and complete prerequisite tiles first

Step C → Press master tile #1 → ACCEPTED when both dependencies satisfied

REPEAT for all 4 master tiles using same compound dependency rule.


PHASE 4 - FINAL ACCESS:
→ All 4 master tiles pressed inward sequentially  
→ Secret chamber door unlocks automatically
→ Player proceeds to pyramid exit sequence
```

**Why It's Symbol Code Translation**: Visual pictograms on static medium tiles encode target wheel configurations. Player translates symbolic representation (tile shows "serpent above skull") → mechanical action (rotate wheels to match that exact pictogram pairing). Order/space matters: tile layout encodes position relationship, not just symbol presence. Multi-layer dependency system where master-tiles reference medium-tile indices, requiring player to track which tiles were already activated.

**Distinction from Pattern Learning**: While similar in "learn framework once, apply exhaustively," the core distinction is SYMBOL RECOGNITION OVERHEAD. Pattern Learning uses abstract rules (insult type A → retort type B). This puzzle adds explicit VISUAL MAPPING: identify that iconographic shape on tile = same pictogram on wheel surface. Translation layer exists because symbols must be recognized across TWO DOMAINS (tile art → wheel display) before action is possible.

**Distinction from Observation Replay**: No NPC demonstration sequence to memorize. Symbols are static environmental decoration requiring active interpretation and translation, not passive observation for timing windows.

---

## Related Types Summary

| Type | Similarity | Critical Distinction |
|------|------------|---------------------|
| Pattern Learning / Knowledge Transfer | Both use "learn once, apply exhaustively" framework | PL shares identical mechanic rules across domains; SCT adds symbol recognition layer requiring visual translation between artifact and interface |
| Observation Replay | Both require careful sequence execution | OR memorizes NPC action pattern through passive watching; SCT interprets static environmental symbols through active examination |
| Multi-Faceted Plan | Both can involve multiple items/requirements collected across exploration | MFP synthesizes independent components (item A + item B + item C → final solution); SCT exhaustively applies ONE SYSTEM across multiple instances where each instance is a variation of same rule set |


| The Dig Engraved Rods | Same extended framework structure, multiple application instances | TD uses colored shapes; BS2 uses pictograms. Both map artifact symbols→panel buttons through color/shape recognition + order sensitivity. Core mechanic identical despite different visual language. |

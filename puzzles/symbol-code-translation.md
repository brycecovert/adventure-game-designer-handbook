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

**Distinction from Engraved Rod System**:
The robot uses Pattern Learning's abstract rule transfer while the rods use Symbol Code Translation's visual matching. Both teach system once and apply multiple times, but through different cognitive layers (abstract vs visual).

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

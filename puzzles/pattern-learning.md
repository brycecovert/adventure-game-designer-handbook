# Pattern Learning / Knowledge Transfer

**Information Architecture**: Game teaches a complete mechanical system in a low-stakes domain, then requires application of exact same rules in higher-stakes domain against different target. The tutorial IS the training—no explicit instruction, only pattern discovery through interaction.

**Player Action Pattern**: Engage with training instances exhaustively to discover full rule set. Internalize cause/effect mappings (insult A → retort B). Face final application where mechanics are identical but consequences escalate (more rounds, permanent failure state, critical plot progression).

**Core Mechanic**: The learning domain and application domain share IDENTICAL underlying rules. Player success depends on recognizing that Domain A was never a different puzzle—it WAS the solution manual for Domain B. This is NOT "practice makes perfect" through repetition; it's "this system you just learned operates elsewhere."

**Variations**:
- Combat dialogue systems (insult/retort pairs)
- Construction/crafting frameworks (ingredient categories → application recipe)
- Code/password mechanics where training example uses same algorithm as lock

**Adventure Game Implementation**:
- Tutorial or "optional" early-game puzzles that teach full system
- Standard TALK/USE actions reveal mechanical rules through trial/error
- Later puzzles invoke same mechanic with different flavor/text/skins
- Player must recognize: the framework hasn't changed, only the context

---

## Example Structure

### Swordfight Combat System (MI1)

```
Learning Phase:
→ Encounter 4 types of roaming pirate NPCs with combat mini-game
→ Each duel reveals subset of insult/retort rule mappings
→ Exhaust all 16 combinations: learn every insult → correct retort pair
→ Rule: If opponent uses wrong retort, you win point; if they use right one, they win

Application Phase:
→ Sword Master fight introduces NEW insult text (20+ different lines)
→ BUT: Same 16 retort rules apply to mapped insults
→ Pattern recognition critical: "My tongue is sharper" → maps to feather-duster rule
→ First to 5 points wins (vs training's first-to-3)
```

### Voodoo Doll Construction Framework (MI2)

```
Learning Phase (Act I - Largo):
→ Voodoo Lady explains 4 ingredient categories for curse doll:
  1. Something of the Thread (clothing)
  2. Something of the Head (hair/hairpiece)  
  3. Something of the Body (bodily fluids)
  4. Something of the Dead (ancestor bone/remains)
→ Player gathers these 4 types for Largo doll successfully
→ Complete doll construction = working framework learned

Application Phase (Part IV - LeChuck):
→ After explosion, discover same Juju Bag mechanic
→ Framework from Act I applies: need Thread/Head/Body/Dead components
→ New instances of each category: Skull (Head), Beard Bits (Body), 
   Underwear (Thread), Used Hanky (fluid)
→ Apply same construction recipe → empowered doll works on LeChuck
```

### Beneath a Steel Sky: LINC-SPACE Tile Password System (BAS)

**Problem**: Navigating through virtual reality spaces requires understanding the tile-based password system. The game teaches this in an early safe zone, then requires exact application in restricted security areas with timed constraints.

<small>Source: 5_steamah_walkthrough.html, lines 454-460 — "Pick up the BALL (Compressed Data – Red & Green YinYang symbol)... Open the CARPET BAG and obtain the MAGNIFYING GLASS (Decrypt) and BIRTHDAY SURPRISE (Decompress)... Keep alternating between the green and red passwords on the tiles"</small>

```
Learning Phase (First LINC-Space Visit - Tutorial Area):
→ Enter interface room at Security HQ with ID CARD
→ Access INTERFACE terminal, "jack in" to LINC-Space VR environment
→ Room 1: Pick up BALL (Compressed Data) containing Red+Green password symbols
→ Room 2: Open CARPET BAG → get MAGNIFYING GLASS (Decrypt command) and SURPRISE GIFT (Decompress)
→ Discovered mechanic: DECRYPT removes "?" from documents, DECOMPRESS expands ball into passwords
→ Room 3: TILE PASSWORD SYSTEM demonstrated on floor panels with green/red symbols

Rule Discovery:
1. Floor tiles show GREEN or RED symbols
2. Player stands on a tile → places matching COLOR PASSWORD on current tile
3. This reveals a BRIDGE to adjacent tile (previously invisible/impassable)
4. Pattern: Alternate red/green passwords as you progress across tile sequence
5. Goal: Reach thick plasma beam exit using correct alternating sequence

Application Phase (Later LINC-Space Visits - Timed Security Zones):
→ First return with ANITA's CARD: Same tile rules apply, but now EYEBALL guardians present
→ SECONDARY RULE discovered: Use BLIND command on eyeballs to freeze them temporarily (~15-20 sec)
→ Pattern learned applies under pressure: Must navigate tiles WHILE managing reactivation timer
→ Player must remember/execute the exact same password alternation pattern learned earlier, 
   but now with added time constraint (eyeball reactivates after 15-20 seconds)

Third Visit - FINAL APPLICATION:
→ Enter with medical android's RED CARD → need access to CRYSTAL room guarded by CRUSADER
→ Same tile password mechanics apply (unchanged)
→ New challenge: CRUSADER blocks path until destroyed
→ Player must have acquired DIVINE WRATH program (from earlier eyeball blinding) to remove guardian
→ Once CRUSADER defeated, same red/green tile alternation allows access to CRYSTAL room
→ OSCILLATOR program (TUNING FORK from second visit) shatters crystal → VIRUS obtained
```

<small>Source: 1_preterhuman_mitch_shaw_walkthrough.html, lines 232-247 — "Use the DECRYPT program on the two DOCUMENTS with '?' on them... Use the PASSWORDS (green and red swirls) to get to the DOOR..."</small>

<small>Source: 5_steamah_walkthrough.html, lines 517-571 — Timed eyeball blind/CRUSADER sequence combining multiple learned systems</small>

**Why It's Pattern Learning**: The tile password system is taught exhaustively in the first safe visit (Room 3). Every subsequent LINC-Space visit uses IDENTICAL mechanics—no new tutorial, no changed rules. The challenge escalation comes from added constraints (timed eyeballs, guardian enemy) but the underlying navigation framework never changes. Player must recognize "the red/green alternation I learned in Room 3 still works here."

**Distinct Cyberpunk/Hack Element**: Unlike classic adventure puzzles, this leverages LINC-Space's virtual reality setting—inventory becomes COMMANDS not OBJECTS (Decrypt, Decompress, Blind, Oscillator as verbs). Pattern applies across "virtual rooms" with consistent rules regardless of visual theme changes.

---

## Key Identifiers

1. **Same mechanic, different skin**: Not "I learned to make Largo's curse" but "I learned the voodoo doll system"
2. **Exhaustible rule space**: Finite complete system can be discovered (16 insults, 4 categories)
3. **Domain transfer**: Learning happens in Domain A, application in Domain B, mechanics identical
4. **No new teaching**: Application phase provides zero tutorials; assumes player recognized the system

---

## Related Types

- **Multi-Faceted Plan**: Both gather across multiple steps, but MFP has different *categories* of requirement (key+code+distracter), not one unifying *system*
- **Observation Replay**: OR reproduces exact sequence verbatim; KT applies rules to new targets
- **Environmental Storytelling**: KT often includes world text, but puzzle is the mechanic transfer, not narrative connection

---

## Common Misidentifications (NOT Knowledge Transfer)

| Apparent Similarity | Why It's Different | Actual Type |
|--------------------|---------------------|-------------|
| Password game: learn finger-counting logic → apply to 3 doors | Single-domain application, no mechanical transfer | Pattern Recognition / Logic Puzzle |
| Parrot directions: feed crackers → get navigation clues | Information collection, not system learning | Multi-Faceted Plan (direction synthesis) |
| Spitting contest: watch wind timing → spit in window | Observation + execution of single puzzle | Environmental Timing Puzzle |
| Bone maze dream: song lyrics → corridor mapping | Cryptic message decoding | Metaphor-to-Literal Translation |

**Critical Test**: Could you describe the solution as "I learned [SYSTEM] that applies to both [CONTEXT A] and [CONTEXT B]"? If not, it's not Knowledge Transfer.

---

### Broken Sword: Shadow of the Templars - Plaster Casting System (Chapter 2)

**Problem**: Create key cast from statue impression, but plaster won't set correctly without understanding material science principles that must be learned in one domain and applied in another.

<small>Source: broken-sword-1/4_agh_peter_christiansen_walkthrough.html, lines 289-307</small>
<small>Source: broken-sword-1/1_walkthroughking_broken_sword.html, lines 113-119</small>

```
Learning Phase (Domain A - Chemistry Lab):
→ Visit chemistry laboratory environment early in chapter
→ Examine plaster demonstration station or read related documentation
→ Discovery through environment: Plaster requires moisture to cure properly
→ Scientific principle learned: Water acts as catalyst—dry plaster = useless, wet plaster = functional

Application Phase (Domain B - Pub Cellar Imprisonment):
→ Later imprisoned in pub cellar with statue impression and dry plaster
→ Standard approach fails: can't cast without water source nearby
→ Framework recognition moment: "Plaster needs moisture"—lab principle applies here
→ Environmental scan for liquid → towel accessible near water source (pub cellar sink)
→ Apply learned system: Wet the towel, mix controlled moisture with plaster
→ Successful key cast produced using transferred knowledge from Domain A

WHY IT'S PATTERN LEARNING / KNOWLEDGE TRANSFER:
The UNDERLYING RULE ("plaster requires moisture ratio to cure") is IDENTICAL across both domains. Laboratory teaches complete mechanical framework—not "do steps a,b,c here" but "this chemical principle exists." Cellar imprisonment requires recognizing that framework applies despite different context/setting. Distinction from Observation Replay: no sequence memorization, only abstract cause-effect relationship transfers. NOT Multi-Faceted Plan because single unifying system governs both instances, not separate requirements needing synthesis.
```

---

### Grim Fandango: Coat Check System + Photo Finish Ticket (GF - Year Two)

**Problem**: In the Calavera Cafe bar, Lupe runs a coat check system using color-coded tickets. The photo finish counter at the Cat Track requires a specific racing ticket with week number, day of week, and race number. Both systems encode information symbolically—players must learn the encoding rules from environmental clues, then apply them to generate correct outputs.

<small>Source: the-spoiler_walkthrough.html, lines 683-691 — "Pull out your ticket printer and print up a ticket for Week 2, Tuesday, Race 6... Week 2 can be found by reading the plaque on the statue of the cat, Race 6 can be found by looking at the photo, and the day of the week is Tuesday when the kitty hats are handed out according to the guy at the ticket counter"</small>

```
LEARNING PHASE (Domain A - Coat Check System Tutorial):
→ Calavera Cafe: Lupe manages coat check using color-coded tickets
→ Player observes ticket system in action (other patrons receiving/checking coats)
→ Examination of coat rack reveals colored tags organized systematically

Rule Discovery Through Environmental Clues:
RULE 1: Each coat/item has specific COLOR ASSOCIATION from its owner
RULE 2: Tickets encode information through VISUAL CATEGORIES (color = person's identifier)  
RULE 3: Coat check is SYMBOL-CODING system, not simple key-locked retrieval

APPLICATION PHASE - Ticket Printer Puzzle (Domain B - Cat Track Photo Finish):
→ After SeaBee lawyer sequence, obtain ticket printer as item
→ Visit photo finish counter at Cat Track
→ Receive generic blank ticket (must print correct values)


DECODING THE REQUIRED TICKET PARAMETERS:

PARAMETER 1 - Week Number (Week 2):
Clue Source: Statue plaque outside Cat Track
Discovery: Plaque mentions "Second Annual Feline Classic" or similar text
Decoding: "Second annual" = WEEK 2 of cat racing season


PARAMETER 2 - Race Number (Race 6):  
Clue Source: Previously-obtained photo showing race finish line
Discovery: Photo shows cats crossing finish, count reveals which race depicted
Decoding: EXAMINE PHOTO → Identify it's the SIXTH race in sequence


PARAMETER 3 - Day of Week (Tuesday):
Clue Source: Ticket counter NPC dialogue when asked about events/schedule
Disovery: Counter person mentions "we give out free kitty hats on Tuesdays" or equivalent
Decoding: "Kitty hat day" = TUESDAY


APPLICATION - Print Correct Ticket:
→ Use ticket printer in inventory → Generate ticket with parameters:
   Week: 2 | Day: Tuesday | Race: 6
→ Submit completed ticket at Photo Finish window
→ Receive incriminating photo (Nick kissing Olivia) as output


WHY IT'S PATTERN LEARNING / KNOWLEDGE TRANSFER:

SYSTEM TEACHING THROUGH COAT CHECK DOMAIN:
The coat check system establishes that THIS WORLD ENCODES INFORMATION SYMBOLICALLY. Lupe's color-coded tickets aren't just "keys"—they're a SYSTEM of encoding categories (color = person identity). This trains player to look for VISUAL/EVIDENTIAL CLUES rather than direct dialogue statements.

FRAMEWORK TRANSFER TO PHOTO FINISH:
Once coat check establishes "this game uses symbolic information encoding," the photo finish puzzle applies IDENTICAL LOGIC:
- Coat check: Color → Person mapping (learn system)
- Photo ticket: Visual clues → Encoded parameters (apply same "decode symbols" skill)

The learning happens by recognizing patterns in how THIS GAME CONVEYS INFORMATION. Both systems require finding HIDDEN MEANINGS in environmental objects/plaque text/NPC hints and translating those into usable game states.

No single NPC states the complete solution: "Print Week 2, Tuesday, Race 6." Player must synthesize from THREE separate information sources using the pattern-learning principle that clues exist as SYMBOLS requiring interpretation, not explicit statements.


NOIR THREAT THEME INTEGRATION:
The coat check system is pure noir—a seedy bar, mysterious code system, information never given freely. The photo finish puzzle extends this with film noir investigation tropes: examining evidence photos, reading environmental text (plaques), questioning witnesses for fragmentary clues. Both require "detective work" mindset established in tutorial domain.
```

---

### Broken Sword II: The Smoking Mirror - Pyramid Wheel Room (Chapter 6)

**Problem**: Nico must unlock a sealed chamber door using Mayan pictogram interface. A complex machine displays four large rotating wheels with symbols; ten smaller tiles each show two-symbol combinations that must be formed on the machine first, then pressed. Four even smaller final tiles require matching TWO tiles-from-ten simultaneously. The puzzle teaches its own rule set through initial examination, then requires application exhaustively across multiple tile types.

<small>Source: 4_kasagaming_walkthrough.html, lines 426-430 — "Notice the pictograms on the great Mayan machine and on the tiles... Each tile from the set of ten has a symbol on it made from two symbols on the machine."</small>

```
LEARNING PHASE - RULE DISCOVERY THROUGH EXAMINATION:
→ Enter pyramid wheel room, examine interface components:
  - Large rotating wheels with multiple pictogram options each
  - Set of 10 medium tiles (each showing 2-symbol combination)
  - Set of 4 small final tiles (each showing reference to 2-of-10-tiles)

→ First attempt at any tile → locked, won't move
→ Observation: Tiles encode REQUIRED STATES for wheels
→ Pattern discovered from examination:
  
  RULE A: Each wheel has multiple symbol positions (rotateable)
  RULE B: Medium tiles show target 2-symbol pairings needed on machine
  RULE C: Small tiles reference TWO medium-tiles that must be activated first

APPLICATION CHAIN - EXHAUSTIVE FRAMEWORK EXECUTION:

Step 1 → Examine medium tile #1 → shows "crescent + skull" pairing
         <small>Source: kasagaming_walkthrough, line 427 — "Each tile from the set of ten has a symbol on it made from two symbols on the machine"</small>
         
Step 2 → Rotate wheels to show crescent AND skull simultaneously on display

Step 3 → Press medium tile #1 → ACCEPTED (wheels match its encoded pair)

REPEAT for all other medium tiles in set of 10:
→ Each requires finding correct WHEEL CONFIGURATION first
→ Pattern holds consistently: examine tile = read requirement, adjust wheels = fulfill requirement, press tile = validate match
→ By ~5-8 tiles, player internalizes full system rule: "Tile shows goal state → configure machine to that → press when matched"

FINAL PHASE - COMPOUND TILE CHAIN (Rule B applied recursively):
Step A → Examine small tile #1 → shows reference to medium-tiles 3+7
         <small>Source: kasagaming_walkthrough, line 429 — "Each tile below the Mayan statue is made from two tiles from the set of ten"</small>

Step B → Medium tile #3 already pressed (from earlier phase) ✓
Step C → Medium tile #7 already pressed (from earlier phase) ✓
         - If not yet done, player learns: SMALL-TILES require MEDIUM-TILE PREREQUISITES

Step D → Press small tile #1 → ACCEPTED (both referenced tiles activated)

REPEAT for all 4 small tiles using same compound rule.
→ Complete set of 4 small-tiles pressed inward → secret door opens automatically
```

**Why It's This Type**: The puzzle TEACHES its mechanical rules through initial interaction: examining tiles reveals required wheel configurations; first few tile presses confirm the "match wheels to tile, then press" framework. This SAME RULE SET exhaustively applied to all remaining tiles—including compound small-tiles that reference already-completed medium-tiles. Player doesn't discover scattered clues; they learn a COMPREHENSIVE SYSTEM whose consistent application is the solution. The teaching happens IN THE PUZZLE ITSELF through graduated difficulty (medium-tiles straightforward, small-tiles introduce layer-2 dependency).

**Core Mechanic Distinction**: Unlike Symbol Code Translation where static symbols translate to actions (Bible diagram → chess moves), here player LEARNS AN INTERACTIVE SYSTEM: "Machine wheels are adjustable; tiles validate configurations; some tiles depend on others." This framework applies EXHAUSTIVELY across ALL instances—no external training domain needed because the puzzle scaffolds learning through progressive revelation of its own rules.

**Distinction from Symbol Code Translation**: Player isn't translating static visual codes to separate interface actions (Bible → chessboard). Instead, they're operating a UNIFIED MECHANICAL SYSTEM where examining components reveals the system's operational logic. The wheels ARE the solution space; the tiles ARE validation gates for wheel states discovered through iterative experimentation.

---

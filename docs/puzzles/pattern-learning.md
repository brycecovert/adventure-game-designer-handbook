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

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

### Zak McKracken: Symbol Drawing Chain (NOT Pattern Learning)

The game features a cross-location symbol drawing puzzle where Zak observes a pattern in Location A, travels to Location B, then recreates the observed pattern using his crayon on strange markings there. For example:
1. Leslie reads "Egyptian markings" in Mars Map Room  
2. Zak travels to Sphinx leg, uses crayon on strange markings, draws exact pattern observed on Mars
3. This opens secret sphinx entrance

**Why It's NOT Pattern Learning**: No system or rule set is taught. The puzzle doesn't establish a general principle like "symbols from chamber X unlock locations in sector Y." Instead, it's specific value transfer: observe THIS symbol shape → draw THAT exact same shape elsewhere. This is **Observation Replay at geographic scale**—memorize specific visual pattern under one context, reproduce it exactly in another.

The underlying mechanic differs from Pattern Learning because:
- **No reusable system**: The drawing action teaches no transferable rule about "how to unlock doors with symbols"
- **One-to-one mapping**: Mars symbol → Sphinx door only; no other applications of the same principle exist
- **Pure value memorization**: Player must recall specific visual arrangement, not understand a mechanic

Compare this to actual Pattern Learning like sword fighting:
- Sword fighting establishes 16 insult/retort *rules* applicable to ANY pirate encounter
- Zak's drawing uses ONE symbol to unlock ONE door—no generalizable principle extracted

**Correct Classification**: Extended-distance **Observation Replay** (visual pattern instead of numeric sequence; hours later instead of minutes; different continent instead of adjacent room). The core mechanic remains identical: watch once, memorize, reproduce exactly when opportunity arises.

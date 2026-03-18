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

---

### Loom: Draft Reversal System / Musical Grammar

**Problem**: Loom teaches a complete mechanical system for "drafts" (spells) that must be applied across 20+ different puzzle contexts throughout the game. The player discovers early-game rules through safe experimentation, then applies those identical rules to critical mid/late-game situations where failure means permanent consequences.

<small>
Source: gamefaqs_tricrokra_archived.html, lines 269-281 — "This works differently than other games in the genre though. You only have ONE inventory item. The Weaver's Distaff, and you need it for almost everything. You need to learn drafts by examining stuff and find out where to use which draft."

Source: the-spoiler_gamecat.html, lines 67-69 — "Remember that some spells can be played backwards to create the opposite effect; the straw-to-gold spell played backwards will change gold into straw. Try undoing some of the spells that you've cast, or trying out spells in likely places."
</small>

**Learning Phase (Loom Island - Low Stakes Training Ground)**:

The first island provides a sandbox to discover THREE foundational rules:

**Rule 1: EXAMINE = Learn, CAST = Apply**
1. Player examines egg → learns OPEN draft melody automatically
2. Player clicks egg + casts OPEN sequence → egg opens
3. Pattern established: Objects with problems play "solution melodies" when examined

<small>
Source: strategywiki_loom_walkthrough.html, lines 652-655 — "Click on the DISTAFF and examine the EGG. It has trouble OPENING, so help it... Hetchel is reborn as a swanling and briefs you about your 'mission'."

Source: walkthrough-king_bennett.html, lines 65-68 — "click on the egg to learn the Open draft (you need to write down the music sequence)... Now click on the egg and cast Open by repeating the music sequence you just wrote down."
</small>

**Rule 2: CHORD REVERSAL = Opposite Effect**
1. Player learns DYE draft (greening) from dye pot examination
2. Player practices forward DYE on white cloth → turns green
3. Player experiments with REVERSE order of same 4 notes → BLEACH (greens back to white)
4. Pattern established: Playing any draft in reverse reverses its effect

<small>
Source: gamefaqs_tricrokra_archived.html, lines 276-280 — "The drafts also work backwards. If A-B-C-D would turn day into night, then D-C-B-A would turn night into day."

Source: strategywiki_loom_walkthrough.html, lines 655 — "Examine the CAULDRON and learn the DYEING draft. Try it on the white CLOTHs. You can also try the reverse (BLEACHING) on the green cloths."
</small>

**Rule 3: PRACTICE = Note Unlocking**
1. Game starts player with only notes C, D, E
2. Each successfully cast practice draft adds new available notes to distaff
3. Player cannot leave first island until they've learned enough drafts to unlock F-note
4. Pattern established: System forces mastery before progression

<small>
Source: gamefaqs_tricrokra_archived.html, lines 825-837 — "c → Start game, d → Start game, e → Start game, f → When you completed all tasks on the weaver's island. The 'Twist/Untwist' draft will always contain this note, so you cannot leave the island until this is done."
</small>

**Application Phase (Critical Consequences - Rules Apply Without Tutorial)**:

The system learned on Loom Island applies IDENTICALLY to every puzzle that follows—zero reminders, zero reinforcement tutorials. The rules work exactly the same way across these escalating-stakes domains:

**Domain B1: Dragon's Cave (Sleep/Wake Reversal)**
1. Learned early: SLEEP draft from sleeping sheep observation
2. Never taught explicitly that reverse exists for this draft
3. Application: Cast REVERSE of SLEEP on dragon → AWAKEN effect fails, dragon stays awake
4. Correct application: Cast forward SLEEP → dragon sleeps, cave exit revealed through fire

<small>
Source: gamefaqs_t_hayes_archived.html, lines 358-361 — "Cast the reverse Straw to Gold draft on the gold, then cast the reverse Wake spell to make the dragon fall asleep. The dragon starts to breathe fire on the straw as she sleeps, which reveals a hidden tunnel at the back of the cave."
</small>

**Why Rule Transfer is Critical**: Player wasn't told "reverse SLEEP = WAKE" anywhere—only discovered this through system understanding from early experiments with DYE/BLEACH.

**Domain B2: Final Confrontation (SILENCE → UNSILENCE)**
1. Chaos casts SILENCE on Hetchel → player hears melody for first time under life-or-death pressure
2. NO tutorial says "reverse this to undo it"
3. Player must APPLY Rule 2 learned hours earlier: "any draft reversed = opposite effect"
4. Execution: Input same 4-note sequence in REVERSE ORDER
5. Result: UNSILENCE activates, Hetchel can speak again

<small>
Source: walkthrough-king_bennett.html, lines 85 — "Click on the loom and Hetchel will appear and be silenced. Click on the loom again to learn the Silence/Speak draft. Cast Speak on Hetchel, then Chaos will roast her instead."

Source: strategywiki_loom_walkthrough.html, lines 713-716 — "Watch the dialogue until Chaos casts SILENCE on Hetchel. Cast the reverse on Hetchel. (note that if you didn't manage to memorize the spell, you can hear it again by examining the Loom."
</small>

**Why This Is Pattern Learning/Knowledge Transfer**:
1. **Same System, Different Contexts**: Not "I learned to unsilence Hetchel" but "I learned the reversal MECHANIC that applies to SILENCE, DYE, TWIST, STRAW/GOLD, SLEEP/WAKE (15+ drafts total)"
2. **Complete Rule Space Discoverable**: Three core rules (EXAMINE=learn, REVERSE=opposite, PRACTICE=progression) exhaust the entire musical grammar
3. **Domain Transfer Without Reteaching**: Loom Island teaches → Dragon's Cave applies → Final Battle applies with ZERO reminders or hints
4. **Critical Recognition Required**: Player must identify "Oh, this SILENCE thing works the same way DYE worked earlier"

**Distinction from Observation Replay (the draft WATCHING itself)**:
- **Observation Replay component**: Each specific sequence must be memorized when heard (e.g., "SILENCE = E-F-D-C")
- **Pattern Learning component**: The system that governs HOW those sequences work applies everywhere (reversal, practice, examine)

The draft *mechanics* are Pattern Learning. The draft *sequences themselves* are Observation Replay. Both exist in Loom simultaneously, but address different gameplay dimensions.

<small>
Source: the-spoiler_gamecat.html, lines 67-69 — "Remember that some spells can be played backwards to create the opposite effect; the straw-to-gold spell played backwards will change gold into straw."
</small>

**Why It's NOT Just Observation Replay**:
Player didn't just memorize "SILENCE melody = E-F-D-C" and replay it. Player must actively APPLY a learned principle: "If SILENCE is E-F-D-C, then UNSILENCE is C-D-F-E because I learned earlier that reversing any draft reverses its effect." That general rule is the pattern/ knowledge being transferred.

---

### Indiana Jones: Fate of Atlantis - Plato's Lost Dialogue Navigation System (IJOA)

**Problem**: The entire mid-game through end-game navigation relies on a mechanical system taught early via Plato's Lost Dialogue text pages. Indy must understand a directional translation system that converts cryptic textual instructions into specific compass-direction actions with modifier rules for accuracy adjustment.

<small>Source: walkthroughking_ashley_walkthrough.html — "Use all three disks with the spindle according to the Lost Dialogue" (Team path). Also "follow the next set of directions in the Lost Dialogue" (multiple references across paths).</small>

**Learning Phase - System Discovery**:

The Lost Dialogue provides a complete navigation framework with three core rules:

<small>Source: walkthroughking_ashley_walkthrough.html — "Use the surveyor's instrument (as indicated on the mural) on the head statue and look at the left horn, then on the tail statue and look at the right horn. This will give you at site to dig..."</small>

```
RULE 1: Directional Translation System
- "Face east" → Stand facing cardinal direction, observe target landmark  
- "Look at left/right horn/feature" → Identify specific visual marker on object
- The alignment of observed features provides coordinate data for digging/excavation

RULE 2: Ten-fold Error Correction (Critical late-game rule)
<small>Source: walkthroughking_ashley_walkthrough.html — "Guide [the boat] using Plato's Lost Dialogue, remembering the ten-fold error." (Fists Path)</small>
- When following directions underwater/at certain distance scales
- Navigation accuracy degrades exponentially  
- Player must ADJUST course direction by factor of 10 to compensate

RULE 3: Reverse/Contrary Principles (Final room solution)
<small>Source: walkthroughking_ashley_walkthrough.html — "Use the disks again, but reverse everything ('contrary minds')." (Atlantis finale)</small>  
- When mechanical system presents as mirror image or opposite
- All directional/rotational inputs must be INVERTED
- "Contrary minds" textual clue indicates reversal requirement
```

**Application Phase - Domain Transfer Examples**:

Domain A1 → Crete Stone Dial Navigation:
1. Lost Dialogue page provides cryptic instruction set  
2. Player places sunstone/moonstone on dial in specified positions
3. Follows "align symbol with horns" instructions from text
4. Excavation site revealed where directions converge

Domain A2 → Balloon Flight Navigation (Wits Path):
1. After constructing balloon at Thera, must navigate to submarine location  
2. Lost Dialogue provides directional bearings ("fly north until X appears")
3. Player follows text coordinates during flight sequence
4. Correct interpretation lands near target; wrong directions = crash/reset

Domain B → Fists Path Submarine Approach (Underwater Navigation):
<small>Source: walkthroughking_ashley_walkthrough.html — "Head back to the port and talk to the guy on the boat. Guide him using Plato's Lost Dialogue, remembering the ten-fold error."</small>
1. Player now underwater with SCUBA suit
2. Same directional commands from text APPLY at different scale
3. Ten-fold error rule becomes CRITICAL: surface-level navigation fails  
4. "Go north" on page = actual 10x offset underwater → player must compensate by going only 1/10th the indicated distance

Domain C → Final Atlantis Disk Chamber (Contrary Rule Application):
<small>Source: walkthroughking_ashley_walkthrough.html — "Use the disks again, but reverse everything ('contrary minds')."</small>
1. Three rotating disks on spindle mechanism must be aligned to specific symbol positions
2. Earlier solutions used direct interpretation of Lost Dialogue markings  
3. Final chamber explicitly states "contrary minds" = all inputs reversed
4. Player applies reversal rule taught in early text: opposite directions, flipped rotations

**Why It's Pattern Learning/Knowledge Transfer**:
1. **Same Mechanical Framework Across Domains**: The directional translation system learned on page 1 of Lost Dialogue operates identically at Crete stone dial, balloon navigation, underwater coordinates, and final disk mechanism—only context (domain) changes
2. **Exhaustible Rule Set Discoverable**: Three core principles (translation, ten-fold error, contrary/reversal) constitute COMPLETE mechanic. Mastery requires discovering all three for full game completion  
3. **Critical Recognition Required**: Underwater "ten-fold error" section only solvable by recognizing: "This IS the same navigation system, but with scale compensation needed." Player isn't learning new skills—applying SAME learned framework to NEW environment
4. **Escalating Consequences Without New Teaching**: Balloon flight failure = simple reset. Submarine navigation failure = potentially lose items/progress. Final disk misalignment = cannot open gate, game ends without correct pattern application

**Distinction from Observation Replay**: Player doesn't just watch "disk aligns at noon position" later reproduce the sequence. Instead: learn general principle ("symbol markings translate to compass-aligned physical movements"), apply that PRINCIPLE to entirely new targets. The framework transfers; specific values don't memorize-and-repeat.

**Distinction from Simple Code-Cracking**: Many adventure games use "cipher learned early, applied late." This differs because Lost Dialogue isn't a one-time decryption—it's an ongoing MECHANICAL SYSTEM for spatial manipulation that reappears in 5+ different physical locations with same underlying rules. Player learns to NAVIGATE via text coordinates once; applies navigation framework repeatedly.

---

## Common Misidentifications (NOT Knowledge Transfer)

# Observation Replay

**Information Architecture**: Game presents a procedural sequence once, under observation-only conditions (guard present, locked door, NPC interference). Player cannot interact during the demonstration.

**Player Action Pattern**: Watch and memorize the exact sequence of actions or values. Return when guard/interference is absent. Replay sequence precisely to unlock new access.

**Core Mechanic**: Single viewing + exact reproduction = reward. Information is presented in correct order once; puzzle difficulty emerges from memory load plus opportunity management.

**Variations**:
- Numeric sequences (safe combinations, door codes)
- Action sequences (push/pull patterns, dance moves)
- Visual patterns (light arrangements, color orders)
- Musical sequences (melodies, chord progressions)

**Adventure Game Implementation**:
- NPC performs action while blocking player interaction
- Cutscene triggers once, cannot be rewound
- Player must note sequence through observation alone
- Return later when conditions allow replication
- Standard actions (USE TALK LOOK) applied in memorized order

**Example Structure**:

```
Player needs: Access to [LOCKED_LOCATION]

Discovery Phase:
→ Approach [LOC] and observe [NPC] perform exact sequence:
  "Watch as guard opens safe: PULL-15, PUSH-3, PULL-27"
→ Blocked from interacting ("Can't touch while watched!")

Return Phase:
→ Create opportunity (distract NPC, wait for departure)
→ Apply memorized sequence to [OBJECT] with same standard actions:
  USE safe → PULL handle 15 times...
→ Reward unlocked
```

**King's Quest VI Parallel**: None identified in walkthrough.

**Monkey Island Examples**:
- **Safe Combination**: Storekeeper opens safe while player watches (notes combination). Later, when storekeeper leaves shop unsupervised after going to find Sword Master, player returns and enters exact PULL/PUSH sequence he observed.

---

### Simon the Sorcerer: Mummy Tomb Looting

**Problem**: Wizard's Staff is locked inside mummy's sarcophagus in Rapunzel Castle crypt. Mummy blocks access during its animation—cannot interact with bandage or tomb contents while it's fully animated. Direct theft attempt fails.

<small>
Source: simon1_2.txt, lines 278-281 — "Use the hair to return to the room at the top of the castle. Use the woodworm on the floorboards. Use the ladder on the hole. Down. Open the tomb. Select any option when the mummy appears to exit the castle."
</small>

**Discovery Phase (First Visit)**:
1. Open sarcophagus → mummy rises from tomb with hostile animation
2. Dialogue options available but all fail—mummy is aggressive
3. Only viable action: Run away (exit castle entirely)
4. Critical observation during mummy's animation loop: loose bandage visible at back of body
5. Bandage location memorized; appears briefly during animation cycle

**Return Phase (Second Visit)**:
1. Re-enter Rapunzel Castle via front door (not through floor hole, which no longer exists)
2. Access basement → climb down ladder to crypt again  
3. Open sarcophagus second time → mummy rises with identical animation
4. QUICKLY click loose bandage at exact position observed earlier (at mummy's back)
5. Bandage removal animation triggers → mummy collapses harmlessly
6. Sarcophagus now accessible: Wizard's Staff appears

<small>
Source: simon1_3.txt, lines 209-212 — "Enter the castle again (via the door, this time) and climb down the Ladder again. Pick up the Loose Bandage (it's at the butt end of the Mummy and you have to be pretty quick.) Presto! The Staff!"
</small>

**Why It's Observation Replay**:
- **Single Viewing**: Critical information (bandage location + extraction timing) shown ONCE during first encounter
- **Exact Reproduction Required**: Second visit demands same action at same target position within brief animation window
- **No System Learning**: Bandage mechanic is unique to this encounter; does NOT apply to any other puzzle

### Maniac Mansion: Meteor Mess Arcade Code

**Problem**: Secret laboratory door requires 4-digit access code from Meteor Mess arcade high score. Dr. Fred demonstrates the game via cutscene before player can interact. Player must observe and memorize the exact high score value displayed, then input it later when quarter obtained.

<small>
Source: syntax2000_walkthrough.txt, lines 174-180 — "wait until you have seen Dr. FRED play an arcade game, leave room, open door to right, enter games room, walk to machine entitled 'Meteor Mess', use quarter on coin slot - make note of highest score number"
</small>

**Discovery Phase (Forced Cutscene)**:
1. Player reaches medical/exam room area
2. Wait until cutscene triggers automatically: Dr. Fred enters game room
3. Dr. Fred plays Meteor Mess arcade machine → high score appears on screen
4. CUTSCENE ENDS—player cannot interact during this viewing
5. Critical information: The specific 4-digit high score value displayed

**Blocked Conditions**:
- Arcade machine requires quarter (obtained from Edna's sealed envelope—different puzzle branch)
- High score ONLY visible AFTER Dr. Fred sets it; player cannot determine independently
- No rewind/replay option available

**Return Phase (Reproduction)**:
6. Obtain quarter via envelope steam puzzle (microwave + water in jar)
7. Return to Games Room with quarter
8. Insert quarter, play Meteor Mess → previously observed high score now accessible
9. Memorize the code number
10. Proceed to dungeon exit: use Glowing Key on double padlocks
11. Enter numeric keypad with observed code → Secret Laboratory access granted

**Why It's Observation Replay**:
- **Forced Single Viewing**: Code value presented ONLY during NPC cutscene; player has zero interaction ability
- **Deferred Action Window**: Cannot act immediately—requires quarter from entirely separate puzzle branch (telescope → safe → envelope → quarter)
- **Pure Value Memorization**: Not about learning a system or rule; the specific 4 digits must be retained in working memory for extended gameplay period

**Distinction from Pattern Learning**: Code is NOT a transferable system—the arcade game teaches nothing generalizable. It's pure memorization of a specific value, not principle application.

---

### Zak McKracken: Alien Spaceship Escape Sequence

**Problem**: Zak is beamed aboard an alien spaceship in the Bermuda Triangle. The exit requires entering a color button sequence. The alien pilot demonstrates this twice—but cannot interrupt or interact during these demonstrations. Player must memorize and replay exactly to escape back to Bermuda.

<small>
Source: walkthrough-king.txt, lines 268-276 — "Wait for a while and you will end up on a space ship. Write down the order the pilot presses the buttons... Return left and push the buttons the pilot pushed, then quickly step over the line on the left."

Source: the-spoiler-tonkroon.txt, lines 243-250 — "Write down the colour code the pilot pushed in. If you want to leave push in the colour code and walk to the left"
</small>

**Discovery Phase (Forced Cutscene)**:
1. Plane crash/capture triggers → transported to alien spaceship automatically
2. Alien pilot enters compartment, demonstrates button sequence on wall panel
3. Pilot presses colored buttons in specific order (varies by playthrough)
4. Player BLOCKED from interacting—"Can't touch while watched!"
5. Cutscene ends; pilot leaves but ship remains locked

**Blocked Conditions**:
- Cannot click buttons during demonstration
- No second practice attempt allowed  
- Sequence is randomized per game session—must record player's own instance
- Wrong sequence = no penalty shown but also no escape

**Return Phase (Reproduction)**:
6. After pilot exits, approach button panel
7. Enter exact color sequence observed earlier using standard USE action
8. Floor line appears as new interactive element
9. Step over line → cutscene triggers: ejection from ship with parachute
10. Survival requires wetsuit + parachute (both obtained earlier in SF prep)

<small>
Source: project64-solution.txt, lines 226-231 — "Note the colors the pilot presses on wall... Walk back to colored button and press them in order that you wrote down. Walk to left of line on floor and wait!"
</small>

**Why It's Observation Replay**:
- **Forced Single Viewing**: Button sequence shown ONLY during NPC cutscene with zero interaction
- **Deferred Action Window**: Can only replay after pilot departs; wrong timing means stuck forever  
- **Exact Value Memorization**: Sequence may be randomized—player must retain exact instance their game generates

**Distinction from Timed Consequence**: Unlike the pool reactor, this has NO narrative urgency timer. Player can leave and return to spaceship multiple times if they misremember the sequence. The blocking is environmental (NPC presence), not deadline-based.

---

### Zak McKracken: Mars Face Button Combination

**Problem**: Martian base on Mars requires 6-button code displayed through a shaman dance in Kinshasa, Zaire. The dance pattern is shown once during ritual and must be remembered for application across the globe on an entirely different planet.

<small>
Source: walkthrough-king.txt, lines 143-148 — "watch the dance and write down the order that the 3 men crouch at the end (a sequence of 6 crouches)"

Source: the-spoiler-tonkroon.txt, lines 153-157 — "write down a 1 if the first person bent his knees , a 2 if the second ect untill you get a number of 6 numbers long"
</small>

**Discovery Phase (Kinshasa Ritual)**:
1. Zak gives golf club to shaman → triggers extended dance cutscene
2. Three men dance around fire in rhythmic pattern
3. At climax, each man crouches in sequence, creating 6-number code example: "1-3-2-1-3-2"
4. No textual confirmation or replay option—pure visual observation required

**Cross-Globe Transport Phase**:
5. Zak must complete Seattle → SF → Miami → Cairo → Katmandu → London → Lima travel chain
6. Obtain crystal shards, scroll, and flagpole through intermediate puzzles
7. Eventually reach Mars via yellow crystal teleport after completing Bermuda Triangle rescue

**Return Phase (Mars Base)**:
8. Leslie/Melissa explore Mars face maze to locate generator/levers
9. Zak teleports to Mars Face Chamber after drawing Martian markings from Sphinx
10. Approach door with 6-button panel matching the shaman dance pattern
11. Enter exact crouch sequence observed on Earth (Kinshasa)
12. Door opens → access to Great Chamber and main alien plot

<small>
Source: walkthrough-king.txt, lines 187-189 — "Use your ladder on the door, then press the buttons in the same order you saw the men crouch in Kinshasa."
</small>

**Why It's Observation Replay**:
- **Geographic Separation**: Information gathered in Africa, applied on Mars—no opportunity to revisit and re-observe
- **Single Cutscene Trigger**: Dance only plays ONCE when golf club given; no way to trigger shaman again after leaving Kinshasa
- **Pure Sequence Memory**: Not about learning a system or principle—specific 6-digit combo must be retained across hours of gameplay

**Distinction from Pattern Learning**: The dance teaches NO reusable rule set. Unlike I.R. LaFont's insult sword fighting (which establishes general mechanics), this is a one-time sequence unique to this puzzle instance.

---

### Loom: Draft Watching and Reverse Casting

**Problem**: Loom's entire gameplay revolves around the distaff—a musical instrument that plays "drafts" (spells) as 4-note melodies. Player must WATCH drafts being played by NPCs, objects, or environmental events, then MEMORIZE and REPLAY the exact sequences later to replicate effects. The game explicitly cannot provide written spell lists because sequences RANDOMIZE each playthrough.

<small>
Source: gamefaqs_tricrokra_archived.html, lines 276-290 — "except for two drafts, all drafts are different on each play-through, so that is why I cannot write them down in this FAQ as you will always have different notes than I have. Please check out the draft table near the buttom of this FAQ and you can print the table and write down the notes in it."

Source: strategywiki_loom_walkthrough.html, lines 652-654 — "It has trouble OPENING, so help it. (If you try twice to leave the room without opening the egg, it will open by itself, but then you wil acquire the next level slightly later.)"
</small>

**Discovery Phase (Pattern Established from First Draft)**:
1. Game begins in Elder's tent after cutscene
2. Player examines egg → cutscene plays OPEN draft melody automatically
3. Egg announces "I have trouble OPENING"
4. Player clicks egg, then MUST replay the same 4-note sequence just witnessed
5. FIRST draft learned and cast: OPEN

<small>
Source: gamefaqs_t_hayes_archived.html, lines 287-291 — "Look at the egg to get the Open draft. Cast the Open draft by clicking the egg, then entering the notes for the draft by either selecting them with the mouse or typing them with the keyboard."
</small>

**Core Mechanic Propagated Through Entire Game**:
- Every new draft is LEARNED via forced observation:
  - EXAMINE object/NPC → cutscene plays melody → player must write down notes externally
  - Common learning triggers: clicking egg, examining dye pot, watching waterspout, looking at spinning wheel, observing shepherds appear/disappear
- Player has NO in-game memory aid—must use paper/pen or external text file
- Draft sequences are RANDOMIZED per playthrough (except OPEN and TRANSCENDENCE which are cast during unskippable cutscenes)

**Return Phase Example (First Critical Replay: DYE)**:
1. Early game: Examine dye pot in Hetchel's tent → learn DYE draft melody (e.g., "E-D-F-E")
2. Practice on white cloth in room, observe green result
3. Later at shepherd's field: Dragon approaches flock of sheep
4. Recall DYE sequence from memory/notes
5. Click sheep, cast DYE → sheep turn green, blend into grass
6. Consequence: Player is now the only white thing visible → dragon captures player (required plot progression)

<small>
Source: walkthrough-king_bennett.html, lines 73-74 — "Head back outside and cast Dye on the sheep in the field."

Source: gamefaqs_tricrokra_archived.html, lines 507-510 — "Use the dye green draft to color all the sheep green and you'll be taken by the dragon."
</small>

**Reversed Draft Example (SILENCE → UNSILENCE)**:
1. Final confrontation: Chaos casts SILENCE on Hetchel via the Loom
2. Cutscene plays SILENCE melody → player must memorize immediately
3. Player examines Loom again to HEAR SILENCE sequence replay (if missed first time)
4. CHORD REVERSAL MECHANIC: Player inputs SAME 4 notes but IN REVERSE ORDER
5. Effect: UNSILENCE — Hetchel can speak again

<small>
Source: strategywiki_loom_walkthrough.html, lines 713-716 — "Watch the dialogue until Chaos casts SILENCE on Hetchel. Cast the reverse on Hetchel. (note that if you didn't manage to memorize the spell, you can hear it again by examining the Loom."

Source: gamefaqs_t_hayes_archived.html, lines 412-416 — "After Hetchel has been silenced, look at Loom to get the Silence draft. Cast the reverse Silence draft on Hetchel. After she starts to talk again, Chaos will cast the Roast draft on her. Look at Loom to get the Roast draft, and cast the reverse Roast draft to bring her back to normal."
</small>

**External Memory System Requirement**:
The game is UNPLAYABLE without external note-taking:
- 20+ total drafts must be memorized throughout gameplay
- Most can only be heard once (no replay until learned)
- Drafts are needed HOURS later in different locations
- Reverse casting rules mean player must track BOTH direction AND sequence

<small>
Source: the-spoiler_gamecat.html, lines 62-68 — "Before starting the game, have a paper and pen handy as there is no in-game way of noting different spells, which gets very annoying... some of the spells appear to be random, which is why I won't write down what combinations I had."
</small>

**Why It's Observation Replay**:
- **Forced Single Viewing**: Draft melodies play automatically; player has no rewind/replay control during initial exposure
- **Deferred Application**: Most drafts are learned early but not usable until hours later in different contexts (e.g., LEARN DYE on island → USE DYE on sheep to trigger dragon capture)
- **Exact Reproduction Required**: Wrong note = red sparkles, spell fails. No partial credit or hints about which note was wrong
- **External Memory System Mandated**: Unlike most adventure games that provide in-game clues or journals, Loom requires literal paper-and-pencil documentation
- **Chord Reversal Layer**: Adds second memorization dimension—player must track not just "E-D-F-E = DYE" but also "E-F-D-E = BLEACH (opposite effect)"

**Distinction from Pattern Learning**:
While the chord reversal is a consistent SYSTEM, each draft sequence is a UNIQUE VALUE to memorize. The player doesn't learn "how to create spells"—they learn THE SPECIFIC SPELLS that exist. This is observation-based value retention, not abstract principle extraction.

Compare to sword fighting (Pattern Learning):
- Sword fighting: Learn 16 INSULT/RETORT RULES → apply generic framework to ANY pirate
- Loom drafts: Learn SPECIFIC SEQUENCE "E-D-F-E" → applies ONLY to DYE spell, nothing else

**Meta-Observation Layer**: Some objects allow REPLAY of observed spells after initial learning:
- The Loom replays any spell Chaos cast (SILENCE, ROAST, RIFT) — second viewing opportunity for players who missed first observation
- Scrying spheres show future events AND play relevant draft melodies again

<small>
Source: gamefaqs_tricrokra_archived.html, lines 479-483 — "Examine the sphere several times and you will see some hints and the 'Transcendence' draft (which you already have, but you cannot cast it yet), you'll also see the 'Terror' draft which you need pretty soon."
</small>

---

## Related Types

- **Multi-Faceted Plan**: Requires synthesis of multiple requirements discovered at different times
- **Timed Consequence**: Both involve missing opportunities, but OR is about *memory* + *timing* while TC is about narrative urgency
- **Information Brokerage**: Both involve NPCs as information sources, but OR focuses on *action sequences* not exchange networks

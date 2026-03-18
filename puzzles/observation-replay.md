# Observation Replay

**Information Architecture**: Game presents a procedural sequence once, under observation-only conditions (guard present, locked door, NPC interference). Player cannot interact during the demonstration.

**Player Action Pattern**: Watch and memorize the exact sequence of actions or values. Return when guard/interference is absent. Replay sequence precisely to unlock new access.

**Core Mechanic**: Single viewing + exact reproduction = reward. Information is presented in correct order once; puzzle difficulty emerges from memory load plus opportunity management.

**Variations**:
- Numeric sequences (safe combinations, door codes)
- Action sequences (push/pull patterns, dance moves)
- Visual patterns (light arrangements, color orders)

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

## Related Types

- **Multi-Faceted Plan**: Requires synthesis of multiple requirements discovered at different times
- **Timed Consequence**: Both involve missing opportunities, but OR is about *memory* + *timing* while TC is about narrative urgency
- **Information Brokerage**: Both involve NPCs as information sources, but OR focuses on *action sequences* not exchange networks

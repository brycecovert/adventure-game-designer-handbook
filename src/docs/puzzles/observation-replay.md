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

### Beneath a Steel Sky: Power Plant Switch Sequence (BAS)

**Problem**: The control panel behind barred gates requires two switches positioned correctly before re-energizing the system, but the correct configuration cannot be determined through examination alone—player must create an opportunity to observe the mechanism working.

<small>Source: 5_steamah_walkthrough.html, lines 382-384 — "Place the PUTTY on the LIGHT SOCKET and turn the main SWITCH back on. This results in a short circuit, opening the left CONTROL PANEL. Turn the main SWITCH back off. Notice two SWITCHes (levers) within the left CONTROL PANEL? Get the left SWITCH levered up and the right SWITCH levered down."</small>

**Discovery Phase**:
```
Location: Power Plant (Middle Level)

PHASE 1 - Create Observation Opportunity:
1. Arrive at power plant with WRENCH and PUTTY (from Factory storeroom)
2. Use WRENCH on two BUTTONS below steam pipe to unlock them
3. Have Joey press right button while player presses left simultaneously
4. Steam valve overloads, old worker leaves room
5. Turn OFF main SWITCH above control panel → safe to examine

PHASE 2 - Force System State Change (Observation Trigger):
1. Remove LIGHT BULB from socket when power is off
2. Replace with PUTTY (conductive material creates short circuit)
3. Turn main SWITCH back ON → bars blow open due to electrical surge
4. TURN POWER OFF immediately (now safe to inspect exposed panel)

PHASE 3 - Observe Required Configuration:
Two switches visible inside opened left control panel:
- Left switch must be UP
- Right switch must be DOWN

PHASE 4 - Reproduce Correct Configuration:
1. Set LEFT SWITCH levered UP
2. Set RIGHT SWITCH levered DOWN  
3. Turn main power back ON
→ Elevator access granted to middle level
```

<small>Source: 1_preterhuman_mitch_shaw_walkthrough.html, lines 160-174 — Detailed switch manipulation and power cycling sequence</small>

**Why It's This Type**: Player cannot know the correct switch configuration through direct interaction or hints. The puzzle requires creating conditions (short circuit with putty) that cause the game to *demonstrate* the working state (bars open when switches are positioned correctly), then reproducing that exact state later once the panel is accessible.

**Note on 16-bit SCUMM Engine Quirk**: This puzzle leverages Revolution Software's SCUMM-derived engine mechanics—the short circuit isn't realistic behavior but exploits how voltage/short detection logic triggers cutscene events regardless of actual electrical physics. Common in 1990s point-and-click adventures where object interaction rules simplify real-world causality.

---

## Related Types

- **Multi-Faceted Plan**: Requires synthesis of multiple requirements discovered at different times
- **Timed Consequence**: Both involve missing opportunities, but OR is about *memory* + *timing* while TC is about narrative urgency
- **Information Brokerage**: Both involve NPCs as information sources, but OR focuses on *action sequences* not exchange networks

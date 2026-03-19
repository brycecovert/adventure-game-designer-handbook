# Timed Consequence Puzzle

## Core Mechanic

Urgency is conveyed through narrative consequence rather than mechanical time limits. The player learns that failure results in permanent story change, but no visible countdown or progress bar tracks the deadline. The pressure exists within the story world (diegetic) rather than imposed by the game interface.

## When to Use

Use this puzzle type when you want players to:
- Internalize urgency from story context without UI anxiety
- Manage priorities under narrative threat rather than mechanical pressure
- Experience stakes as permanent story loss rather than game over/restart

This pattern works best for high-stakes narrative moments where the threat should feel organic to the world rather than imposed by game systems.

## Solution Chain

1. Player encounters threat through dialogue or narrative event
2. Player understands what consequence will occur if they fail
3. Player determines what actions prevent the consequence
4. Player executes actions with appropriate urgency
5. Success = consequence avoided; failure = permanent story change

## Examples

### Beneath a Steel Sky: Eyeball Guardian Timing Puzzle (BAS)

**Problem**: Player must retrieve the TUNING FORK while navigating past reactivating eyeball guardians in LINC-Space, with only visual feedback (white vs colored) indicating blind state duration.

**Why It's This Type**: Urgency exists through invisible timer (~15-20 seconds before eyeball reactivates) with no UI countdown—the player must estimate timing from visual state alone.

**Solution**:
1. Use BLIND command on first EYEBALL → turns white (inactive)
2. Move to second room before reactivation
3. Blind second EYEBALL immediately (reactivates faster)
4. Exit north to corridor, grab TUNING FORK
5. Return to hub WELL, use PLAYBACK to reset eyeball states
6. Disconnect safely

**Failure**: Eyeballs reactivate before escape → player locked in section until disconnect/reconnect

---

### SpaceQuest III: Ortega Force Field Escape (SQ3)

**Problem**: After destroying the shield generator, an invisible countdown begins before the planet explodes, and the player must navigate a fixed escape path without hesitation or deviation.

**Why It's This Type**: Walkthrough explicitly states "a timer you don't see, but one that is pretty narrow"—the pressure comes entirely from narrative ("planet's going to explode!") with no HUD element tracking remaining duration.

**Solution**:
1. Prepare escape items before triggering: THERMAL DETONATOR, METAL POLE
2. Navigate to generator, CLIMB ladder
3. THROW detonator into hole → timer begins
4. CLIMB DOWN ladder immediately
5. Navigate fixed path: West → South → South → West ×2 → North
6. USE POLE to vault across ground crack
7. Reach ship, SIT → LOOK COMPUTER → Engines → Takeoff

**Failure**: Timer expires → game over (Roger's death)

---

### Quest for Glory IV: Gypsy Rescue Window (QFG4)

**Problem**: The gypsies face execution or expulsion after being accused of werewolf activities, but no countdown UI shows when the opportunity closes—the player must infer urgency from narrative context.

**Why It's This Type**: The consequence of delay is lost quest content (gypsy camp inaccessible, fortune teller unavailable) rather than death—permanent story change through missed opportunities.

**Solution**:
1. Visit Burgomeister's office on Day 4+ to learn of accusation
2. Travel to cemetery where Igor works during the day
3. Find tipped tombstone with moaning sound beneath
4. Lift tombstone using class ability (Fighter: strength, Thief: rope pulley, Wizard: Fetch spell)
5. Free Igor → gypsies released automatically
6. Access gypsy camp for future quests and fortune teller readings

**Failure**: Delay beyond Day 6-8 → gypsies lost permanently, related questlines close

---

## Related Types

| Type | Similarity | Distinction |
|------|------------|-------------|
| Predator Chase | Both create urgency without visible timers | Predator Chase has active pursuer; TC has narrative deadline only |
| Observation Replay | Both require internalizing timing from non-UI sources | OR requires memorizing sequence then reproducing; TC requires immediate response to threat |
| Resource Decay | Both involve invisible consumption of limited resource | Resource Decay focuses on item preservation; TC focuses on narrative consequence avoidance |

## Relationship to Predator Chase

Predator chase sequences are a related variant where urgency is created through active pursuit rather than narrative deadline. See [Distraction Physics](distraction-environmental-manipulation.md) for predator rerouting mechanics where players guide pursuers into environmental hazards.

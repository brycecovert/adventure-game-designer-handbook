# NPC Distraction Physics

**Information Architecture**: NPC follows patrol/behavior pattern that blocks access to location or item. Blocking condition is *physical/spatial* rather than dialogue-based: line-of-sight, proximity triggers, or path obstruction. Solution requires manipulating environment to break the blocking condition without direct confrontation.

**Player Action Pattern**: Observe NPC behavior loop. Identify environmental object/action that can exploit timing, physics, or AI limitations. Execute action to divert/obstruct/block NPC's attention or movement. Access previously blocked element during distraction window.

**Core Mechanic**: Spatial/temporal manipulation creates opportunity window. Unlike Sensory Exploitation (direct vulnerability attack like tickle/sleep), DNP exploits *environment* + *NPC pathfinding/routine*. Player becomes environmental engineer, creating puzzle in 3D space using standard actions.

**Variations**:
- Pull lever/activate object that NPC must investigate, breaking patrol pattern
- Create physical obstruction (object on tracks, blocking door)
- Redirect NPC attention via object manipulation (pull totem nose → monkey hangs there → NPC path rerouted)
- Timing puzzle: wait for patrol cycle gap + execute grab action in short window

**Adventure Game Implementation**:
- LOOK at environment to spot interaction point that affects NPC behavior
- Standard WALK/USE/PULL/PUSH actions on environmental objects
- Observe NPC AI pattern (patrol route, reaction triggers)
- Trigger environmental change → NPC reroutes or becomes occupied → access granted

**Example Structure**:

```
Blockage Phase:
→ Target [ITEM] protected by [NPC_GUARD] with patrol loop to [OBJECT]
→ Direct theft impossible ("Can't steal while watched!")

Solution Phase:
→ Examine [ENVIRONMENTAL_OBJECT] within guard's patrol path/range
→ Realize action will divert NPC attention or alter movement pattern:
  - USE object on [TRIGGER_POINT] creates distraction
  - PULL [OBJECT] physically obstructs NPC path
  - TIME window when NPC is investigating/occupies alternate location

Execution Phase:
→ Activate environment while NPC distracted → Access [ITEM] during vulnerability window
→ Distraction must be sustained or timed precisely
```

**King's Quest VI Parallel**: None identified in walkthrough.

**Monkey Island Example**:
- **Totem Pole / Monkey Blockade**: 
  - Goal: Enter Giant Monkey Head interior (blocked)
  - Problem: Monkey guards it, standing on totem pole nose
  - Solution: Pull Nose down → Monkey follows and hangs from pulled-down nose → Monkey physically occupies space away from gate → Access granted
  - Distraction + spatial displacement = access

---

## Related Types

- **Sensory Exploitation**: Attacks NPC directly via vulnerability; DNP attacks NPC indirectly via environment
- **Timed Consequence**: Both use timing, but TC is about *narrative urgency deadline* while DNP creates player's own timing window
- **Multi-Faceted Plan**: DNP often uses simpler "one action breaks blockage" vs MFP's multi-requirement synthesis

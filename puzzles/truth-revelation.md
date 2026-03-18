# Truth Revelation Mechanic

## Mechanic Definition

An item or action reveals hidden truth—disguising what's false, exposing hidden identity, or showing what lies beneath the surface. The solution is not combat or force but *seeing through* deception. The truth itself is the key that unlocks the puzzle.

This differs from "evidence collection" puzzles: the item doesn't just *prove* something, it actively *shows* something.

## Information Architecture

**Conveyance Method**: Item-based revelation
- Player obtains a "revealing" item through gameplay
- Using the item on a target reveals hidden information
- The reveal is diegetic—within the game world, not a UI popup

**Player Action Pattern**:
1. Obtain revelation item through normal gameplay
2. Identify suspect/obstacle that might be disguised
3. Use revealing item on target
4. Information revealed → player knows truth
5. Use truth to solve puzzle (unlock path, prove guilt, etc.)

**Core Mechanic**: The puzzle isn't about finding evidence—it's about revealing what's hidden. The item is a probe, not a weapon.

## Design Rationale

- Rewards observation—player must suspect something is hidden before investigating
- Creates dramatic reveals—unmasking is inherently theatrical
- Avoids violence—solution is cognitive, not confrontational
- Integrates with narrative—revealing truth advances the story

## Why It's Effective

The reveal moment is satisfying because it's active discovery, not passive proof-gathering. The player uses a tool to learn something, not collects documents to prove something.

## Mechanic Variations

| Variation | Revelation Method | Information Revealed |
|-----------|-------------------|---------------------|
| Optical | Special item shows true form | Identity, disguise |
| Chemical | Substance reveals hidden marks | Truth, lies, secret writing |
| Physical | Object breaks concealment | Hidden rooms, mechanisms |
| Temporal | Time reveals truth | History, past events |
| Emotional | Truth triggers response | Deception, intentions |

## Generic Example Structure

**Goal**: Identify the [Imposter/Truth/Hidden Thing]

**Information Flow**:
- Player obtains [Revealing Item] through normal exploration
- Player suspects something is not as it seems (through dialogue contradictions, visual anomalies)
- Player uses [Revealing Item] on [Suspect/Object]
- Game shows what's actually there (not what appears)
- Player uses revealed truth to solve puzzle

**The puzzle**: Player must both obtain the revealing item AND correctly identify what to use it on.

## Adventure Game Implementation

### SpaceQuest 1: Sarien ID Card Truth Revelation (SQ1)

**Problem**: Inside Deltaur mothership laundry room, Roger obtains a washing machine-disguised Sarien uniform. However, simply having the uniform isn't enough—examination reveals a critical truth about his new identity status that enables armory access. The puzzle lies in discovering WHAT THE UNIFORM TRULY REPRESENTS (authentic credentials, not mere clothing).

<small>Source: cheatbook_walkthrough.html, lines 368-371 — "After washing open the machine (you now look like a Sarien). Exit east... Type LOOK CLOTHES and you get an ID card"</small>

**Truth Revelation Sequence**:

```
PHASE 1 - APPEARANCE TRANSFORMATION (Surface Truth):
Step 1 → Hide in washing machine during laundry cycle
Step 2 → Washing completes; player exits wearing Sarien soldier uniform  
Step 3 → Visual state changed: sprite now appears as "Sarien soldier" to guards
         This is the FALSE/OBVIOUS truth: "I look like a Sarien, so I'm trusted"

PHASE 2 - EXAMINATION REVEALS DEEPER TRUTH:
Step 4 → Type "look at clothes/uniform/clothes" command (critical investigation action)
Step 5 → Game reveals HIDDEN truth: "You find an ID card in the pocket belonging to Butston Freem"

         This is the ACTUAL truth: The uniform's true value isn't appearance—it's
         the AUTHENTIC credentials it contains. Without the ID, disguise fails at armory.


PHASE 3 - TRUTH DEPLOYMENT (Application of Revelation):
Step 6 → Navigate to armory room via ventilation system/laundry exit
Step 7 → Show ID card to robot guard → "It's Butston Freem's authentic credentials!"
         Robot accepts as proof of authorization, departs to retrieve pulseray
         
Step 8 → Without having examined uniform and discovered the truth (ID exists),
         player cannot progress—appearence alone insufficient for armory gate


WHY IT'S TRUTH REVELATION:

SURFACE vs HIDDEN TRUTH STRUCTURE CLEAR:
- Surface Truth: "I'm disguised as a Sarien soldier" (visual sprite change, obvious)
- Hidden Truth: "The uniform contains legitimate access credentials" (requires LOOK command discovery)
- Revelation Mechanic: The "look at clothes" command ACTS AS THE REVEALING TOOL—it actively shows what's hidden in the pocket that couldn't be known through visual sprite inspection alone


ACTIVE DISCOVERY vs PASSIVE COLLECTION:
Player isn't just "picking up an item"—they must INFER that examining the uniform might reveal something beyond appearance. This requires thinking: "What else does THIS UNIFORM offer besides visual disguise?" The ID card's existence is DIEGETICALLY HIDDEN until player commands examination.


TRUTH ENABLES NEXT PHASE (Not Mere Proof):
ID card isn't PROOF of Sarien identity—it IS the functional authorization token. Without it, robot would reject even perfectly-disguised Roger. This demonstrates "truth as key to unlock" principle: uniform alone = cosmetic; ID within = access key.


HYBRID WITH SENSORY EXPLOITATION:
This puzzle layers Truth Revelation (discovering what the uniform CONTAINS) atop Sensory Exploitation (Sariens trust VISIBLE UNIFORM appearance). The laundry room is primarily SE, but the ARMORY ACCESS requires the TRUTH about credentials hidden within. This creates multi-layered puzzle architecture where both mechanics required for full solution.


DISTINCTION FROM SIMPLE ITEM PICKUP:
Many games have "find key in container" patterns. What makes THIS truth revelation is that the player must actively INVESTIGATE the uniform for hidden elements. Just grabbing uniform sprite → wearing it isn't sufficient. The LOOK command is explicit cognitive act of investigating WHAT ELSE this object might be beyond its surface function.


---

## Related Types

- **Sensory Exploitation**: Both use character perception, but SE exploits what the NPC trusts while TR reveals hidden reality
- **Information Brokerage**: Both involve exchange, but IB trades items for info while TR uses tools to discover concealed truth

This puzzle tests: "Can I identify what's hidden and see through surface appearance to deeper meaning?"

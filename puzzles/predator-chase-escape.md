# Predator Chase Escape Puzzle

**Information Architecture**: A relentless pursuer NPC (often an armored antagonist) hunts the player through hostile environments. The environment itself contains natural or artificial hazards that can be exploited to eliminate or deter the attacker. Information about escape routes and environmental traps comes from direct observation during chase sequences.

**Player Action Pattern**:
1. Recognize pursuit state initiated by antagonist appearance
2. Navigate toward known dangerous zones (environmental hazards)
3. Position self safely while luring pursuer into hazard
4. Trigger hazard to defeat/delay pursuer
5. Collect rewards or items dropped by defeated pursuer

**Core Mechanic**: The player cannot directly confront the enemy; victory requires redirecting environmental danger toward the pursuer, exploiting the antagonist's inability to recognize terrain-based threats.

## Variations

| Variation | Pursuit Type | Trap Method | Example |
|-----------|--------------|-------------|---------|
| **Natural Hazard** | Unavoidable hunter NPC | Biological trap (predatory flora/fauna) | SQ3 Phleebhut pods |
| **Constructed Trap** | Persistent pursuer | Mechanical devices, environmental hazards | Generic adventure games |
| **Time-Based Retreat** | Countdown timer | Reach safe zone before deadline | Timed escape sequences |

---

## Game Examples

### SpaceQuest III: Arnoid Pursuit and Pod Trap (Phleebhut) (SQ3)

**Problem**: After landing on Phleebhut, Roger Wilco is hunted by the "Arnold" — a relentless robotic terminator with superior combat capabilities. Direct confrontation guarantees death. The only escape requires luring the Arnold into carnivorous hanging pods that populate a specific cave area and harvest their bounty (invisibility belt) from the defeated machine.

<small>Source: gamefaqs-tricrokra-archive.html, lines 376-382 — "Well, it'll take awhile before he finds you... Now the Terminator will catch you."</small>

<small>Source: the-spoiler-walkthrough.html, lines 89-97 — "The Arnoid will show up. Luckily, he is in a good mood and will give you a small amount of time to run away."</small>

```
CHASE INITIATION PHASE:

Step 1 - Purchase Required Items (Pre-Chase Preparation):
Command Sequence: Enter World o' Wonders → SELL Gem → BUY Orat on a stick → BUY Underwear → BUY Hat
Citation: gamefaqs-tricrokra-archive.html, lines 393-401 — "= Sell the gem... = Buy Orat on a stick = Buy the chicken hat = Buy the thermoweave underwear"

Critical: Must sell gem for enough buckazoids to afford all three items. The Orat is specifically required for extracting the invisibility belt post-defeat.


CHASE EXECUTION PHASE (Two methods; only one reliably succeeds):

UNRELIABLE METHOD - Hook Grab Attempt:
Navigation: Go west twice → Enter building → Up elevator → When Arnold gets close, grab hanging hook
Success Rate: Low; sometimes fails entirely
Point Award: Minimal (less than alternative method)
Citation: gamefaqs-tricrokra-archive.html, lines 406-411 — "go west, enter the building go up the elevator and grab the hook when the Terminator gets close. This method gets you less points though, and does not always work."


RELIABLE METHOD - Carnivorous Pod Trap:

Step A - Lead Pursuer to Trap Zone:
Command Sequence: South x3 → East → Enter cave with hanging pods
Citation: gamefaqs-tricrokra-archive.html, lines 413-417 — "= Exit south x3"


Step B - Position for Safe Harvest:
Positioning Instruction: Stand BEHIND the carnivorous pods but NOT directly underneath them
Critical Constraint: The "things-in-the-cave" will kill Roger if he enters beneath them while Arnold is present. Standing behind (not under) keeps player safe while Arnold passes through danger zone.
Citation: gamefaqs-tricrokra-archive.html, lines 416-420 — "= Stand in the cave behind the 'things' and wait for the Terminator to come it'll get eaten by the 'things.'"


Step C - Wait for Trap Activation:
Mechanism: Carnivorous pods have independent detection system that triggers when humanoid (Arnold) enters kill zone but does not detect Roger unless he is directly below.
Outcome: Arnold is captured and consumed; Roger emerges unharmed from protected position.


Step D - Extract Invisibility Belt:
Prerequisite: ORAT ON A STICK in inventory (purchased earlier on Phleebhut)
Command: USE ORAT on defeated Arnold's remains
Reward: INVISIBILITY BELT acquired
Citation: gamefaqs-tricrokra-archive.html, line 421 — "= Use the Orat on a stick to get the Terminator's invisibility belt"

Failure Modes:
- If player returns to ship while being pursued → Arnold catches and kills Roger instantly (game over)
Citation: gamefaqs-tricrokra-archive.html, lines 418-420 — "DON'T GO TO YOUR SHIP. If you go there, you'll be killed."

- If Arnold fails to follow player into pod cave area → may need to exit and re-enter or check west path
Note: Sometimes the Terminator simply won't come; player must avoid ship until pursuit is resolved


```

**Why It's Predator Chase Escape (New Type)**:
This represents a distinct puzzle category because environmental hazards serve as the *only* defeat mechanism, and timing/positioning both matter. Roger must: (1) survive during escape, (2) successfully guide pursuer through narrow corridor to trap zone without entering danger himself, (3) exploit the specific mechanical weakness of Arnold (cannot see pod danger, unlike player). The three-phase structure—preparation → chase → harvest—is unique from Observation Replay or other pursuit mechanics.

**Information Discovery**: Partial trial-and-error during escape. The walkthrough warns that:
- One method ("hook grab") is unreliable and yields fewer points
- The second method (pods) is the only guaranteed success path
- Environmental positioning (behind vs under pods) is critical for survival

This requires both environmental intelligence (knowing what pods do) AND tactical retreat execution (luring without being caught).

**Distinction from Distraction Physics**: Unlike distraction physics where NPCs are diverted by manipulating their environment or attention, predator chase requires the player to also navigate while pursued. The Arnold follows Roger directly; there's no "making him watch something else"—only escape and trap activation exists as valid strategies.

---

## Related Types

| Type | Similarity | Distinction |
|------|------------|-------------|
| **Timed Consequence Puzzle** | Both involve urgent avoidance of death state | Timed consequence has explicit story deadline; predator chase has immediate pursuit mechanic with no timer UI |
| **Distraction Physics** | Both manipulate environment to bypass blocked path | DP: distract NPC attention; Predator Chase: literally hide while enemy hunts you through terrain |
| **Observation Replay** | May require memorizing safe positions/routes during initial observation | OR: watch sequence once, replay later; Predator Chase: active pursuit without prior "viewing phase"—must act during hunt |

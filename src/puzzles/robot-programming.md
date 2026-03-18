# Robot Programming / Color-Encoded Action Sequences (Pattern Learning Variant)

**Information Architecture**: Player discovers mechanical rule system through trial-and-error with no explicit tutorial. Each button color maps to specific robot action (directional movement or item manipulation). Rules are consistent and exhaustive—once discovered, player understands COMPLETE control framework. Later puzzles invoke identical mechanics for different goals, requiring players to compose NEW sequences using mastered framework rather than learning new rules.

**Player Action Pattern**:
1. Encounter robot/control panel interface with multiple color-coded buttons
2. Experiment with individual button colors to discover action mappings (purple=left, blue=up, etc.)  
3. Observe robot behavior provides immediate visual feedback for each input
4. Compose sequences by entering multiple colored commands before execution trigger
5. Press execution button (triangle) to run programmed sequence
6. If goal not achieved: review failed sequence, adjust color/order, re-execute
7. When framework mastered: apply same rules to entirely different objectives without new teaching

**Core Mechanic**: Color-coded interface buttons map to specific robot actions; player learns exhaustive rule set through experimentation in low-stakes puzzle context, then applies IDENTICAL framework to new goals where failure has higher consequences (power restoration affects game progression).

---

## Variations

| Type | Learning Method | Feedback Clarity | Application Diversity | Example |
|------|-----------------|------------------|----------------------|---------|
| **Direct Experimentation** | Trial-and-error with no hints | High (visible robot movement) | Multiple goals, same rules | Robot lens retrieval → power restoration |
| **Environmental Hints** | Murals/displays suggest button-color meanings | Medium (requires interpretation) | Single complex goal | Light bridge controls via museum display interpretation |
| **Progressive Unlocking** | First rule reveals access to discover second | Low-Medium | Linear sequence discovery | Multi-stage control room puzzles |

---

## Adventure Game Implementation

### Standard Actions Applied:
- **CLICK** individual colored buttons = Input commands into program buffer (does NOT execute immediately)
- **OBSERVE** robot display = Monitor command queue accumulation before execution
- **CLICK TRIANGULAR/EXECUTION BUTTON** = Run programmed sequence
- **WHITE CLEAR/BACKSPACE BUTTONS** = Reset or edit command queue mid-programming

### Learning Through Failure:
Unlike combat systems (swordfight) where failed attempts produce loss states, robot programming failures are benign—the robot simply doesn't achieve the desired outcome and returns to starting position. Player can retry indefinitely with modified sequences. This creates a sandbox learning environment with no penalty for experimentation.

---

## Example Structure: The Dig Robot Lens Retrieval

### Learning Phase (Nexus Power Room)

**Environment Setup**:
[Source: spoiler_paul_greunke_walkthrough.txt, lines 158-173]

```
LOCATION: Nexus power room beneath main floor
INTERFACE: Control panel with 7 color-coded buttons:
→ Purple = ??? 
→ Blue = ???
→ Yellow = ???  
→ Green = ???
→ Orange/Red = ??? (contextually changes function)
→ Top White = Backspace (remove last command)
→ Bottom White = Clear (reset all commands)

PHYSICAL CONTEXT: Robot descends through chute when triangular execution button pressed. Below robot can move over a pit containing an unattached lens that needs to be retrieved and placed in lens slot.

PLAYER KNOWLEDGE STATE: Zero—no hints provided about button functions.
```

**Discovery Process Through Experimentation**:

Based on walkthrough reconstruction and logical deduction:

[Source: mogelpower_morgana_walkthrough.txt, lines 916-923]

The walkthrough author describes the actual discovery method:

> "The simplest way to figure out what the BUTTONS did seemed to be to plug in a line of one color on the CONTROL PANEL, PUSH the TRIANGULAR BUTTON, watch what happened, and then repeat with the next color. This way I'd be able to devise a program that would get the thing to the UNATTACHED LENS..."

**Systematic Discovery Process**:
```
STEP 1: Test Purple Button
→ Input: purple [execute]
→ Observation: Robot moves LEFT one step
→ Rule discovered: PURPLE = MOVE LEFT

STEP 2: Test Blue Button  
→ Input: blue [execute]
→ Observation: Robot moves UP (toward top of screen/away from lens area)
→ Rule discovered: BLUE = MOVE UP

STEP 3: Test Yellow Button
→ Input: yellow [execute]  
→ Observation: Robot moves DOWN (toward lens area)
→ Rule discovered: YELLOW = MOVE DOWN

STEP 4: Test Green Button
→ Input: green [execute]
→ Observation: Robot moves RIGHT
→ Rule discovered: GREEN = MOVE RIGHT

STEP 5: Understand Orange/Red Contextual Function
→ When robot positioned over item: orange/red = GRAB
→ When robot holding item: orange/red = DROP
→ Rule discovered: ORANGE/RED = contextual (GRAB/DROP toggle)

RULE SET NOW COMPLETE—all button mappings known
```

**Application 1: Lens Retrieval Program**:

[Source: spoiler_paul_greunke_walkthrough.txt, lines 173-175]

> "to get the lens push: purple 4 times, yellow 2 times, and red 1 time"

**Translation to Robot Commands**:
```
PROGRAM QUEUE (before execution):
purple, purple, purple, purple, yellow, yellow, orange

EXECUTED ACTIONS:
LEFT → LEFT → LEFT → LEFT (robot positions over lens)
DOWN → DOWN (robot descends to lens level)  
ORANGE/RED = GRAB (robot picks up lens)

[Execution button pressed] → Robot completes sequence, returns via chute with lens
[Result check]: Lens slot now filled → Power activates → Nexus doors unlockable
```

**Key Design Element**: The walkthrough author notes in [mogelpower_morgana_walkthrough.txt, lines 919-923]:

> "I had to PUSH the TRIANGULAR BUTTON a few times as I was putting the program together to make sure it was working right"

This confirms player can ITERATE development—build partial sequence, test, add more commands, test again. This creates an accessible programming environment that mirrors modern incremental software development practices.

---

### Application 2: Power Restoration (Identical Rules, Different Goal)

[Source: spoiler_paul_greunke_walkthrough.txt, lines 176-180]

After lens retrieval, power activates but is temporarily on. Player must now create SECOND program to permanently restore power by placing lens into correct slot.

> "to restore power (to open doors) push: purple 5 times, blue 4 times, and red 1 time"

**Translation to Robot Commands**:
```
PROGRAM QUEUE:
purple, purple, purple, purple, purple, blue, blue, blue, blue, orange

EXECUTED ACTIONS:
LEFT x5 (position robot over slot)  
UP x4 (ascend to slot height)
ORANGE/RED = DROP (release lens into slot)

[Result check]: Lens installed → Power permanently restored → Door panels functional
```

**Why This Is Pattern Learning**:
1. **Same Mechanic, Different Target**: Robot doesn't learn anything new—player knows all rules from Application 1. Only goal changed (retrieval vs installation).
2. **New Sequence Required**: Cannot reuse lens retrieval program; player must compose fresh command sequence for different spatial objective.
3. **Same Framework**: Purple still = left, blue still = up, etc. Zero new teaching occurs.

The robot puzzle teaches the COLOR→ACTION rule set ONCE in Application 1, then requires EXHAUSTIVE APPLICATION of those rules to solve Application 2 without any additional hints or tutorials.

---

### Extended Application: Light Bridge Controls (Same Framework, New Domain)

A related Puzzle Learning example exists throughout The Dig with the light bridge "strange device" controls found on each spire.

**Light Bridge Control Pattern**:
[Source: spoiler_paul_greunke_walkthrough.txt, lines 200-203; mogelpower_morgana_walkthrough.txt, lines 1278-1295]

```
MECHANIC: Three-lens positioning puzzle with timing component

REPEATING FRAMEWORK on EACH spire light bridge:
1. Position LENS to one of three angles (each produces different audio tone)
2. Listen for which position produces DISTINCT/DIFFERENT tone  
3. PUSH and HOLD switch until crystal above glows
4. Maintain hold until line completes drawing across pentagonal display
5. EXIT interface → BRIGHT LIGHT walkable bridge now appears connecting to central sphere

WALKTHROUGH AUTHOR NOTE: Same process applies at least FOUR TIMES (Museum Spire, Planetarium Spire, Map Spire, Tomb Spire)
[mogelpower_morgana_walkthrough.txt, lines 1599-1627 — light bridge solutions repeated across multiple spires with identical procedures]

VARIATION: Last active light bridge encountered includes hidden prism puzzle within control panel—randomly placed to add unexpected complexity after framework mastery
```

**Why Light Bridges Are Pattern Learning (not Symbol Code Translation)**:
- No visual symbol matching—player learns procedural sequence, not visual equivalencies
- Identical process applies across ALL instances with zero re-teaching  
- Player discovers rule set ONCE through first successful light bridge activation, then applies exhaustively
- Audio feedback (different tone) becomes learned indicator of correct state

---

## Why Robot Programming Is Pattern Learning vs. Other Types

### Distinction from Multi-Faceted Plan:
- **MFP**: Scatter multiple DIFFERENT puzzle requirements (key, code, distractor); collect all, SYNTHESIZE into solution
- **Robot Programming**: Discover ONE rule system (colors = actions); APPLY to multiple goals

The robot uses a SINGLE mechanical framework applied repeatedly, not synthesis of disparate elements.

### Distinction from Meta-Puzzle Construction:  
- **MPC**: Step A produces output → Step B consumes that output → Step C builds on previous result
- **Robot Programming**: Lens retrieval succeeds as complete unit; power restoration is separate task using same tools

While both robot programs achieve related goals in same location, they are INDEPENDENT solutions not a chain where one's output becomes another's input. Player could restore power then retrieve lens—the order doesn't create dependencies.

### Distinction from Observation Replay:
- **OR**: Watch exact sequence once, reproduce verbatim—NO rule understanding required  
- **Robot Programming**: Discover abstract rules ("purple moves left"), compose ORIGINAL sequences for new goals

Player didn't watch "purple-purple-yellow-red" and memorize it for later repetition. Player discovered PURPLE=LEFT as a reusable rule, then COMPOSED custom programs for each objective.

---

## Design Considerations for Robot/Programming Puzzles

**Implementation Patterns**:
1. **Incremental Testing Capability**: Allow players to test partial sequences before full commits
2. **Clear Visual Feedback**: Robot movement must be unambiguous—exactly 1 step per command with visible positioning
3. **Command Queue Display**: Show entered sequence BEFORE execution so player can verify correctness mentally
4. **Benign Failure States**: Incorrect programs should reset without permanent consequences or item loss

**Best Practices**:
1. Keep rule set small and memorable (5-7 actions maximum)
2. First goal requires shorter sequence (~5-8 commands) to teach without overwhelming  
3. Later applications require longer/more complex sequences using same rules (~10+ commands)
4. Provide visual/auditory feedback for each command type (different sounds/animations per action)

**Common Pitfalls**:
- Rules too abstract or counterintuitive ("blue means diagonal movement" violates spatial intuition)
- No way to test partial sequences—player must get entire program right on first attempt  
- Robot pathfinding obscured by visual clutter (can't see if robot actually moved correct number of steps)

---

## Related Types

| Type | Similarity to Robot Programming | Distinction |
|------|----------------------------------|-------------|
| **Pattern Learning / Knowledge Transfer** | Same core mechanism: learn rules once, apply exhaustively | Robot programming is concrete spatial manipulation; PL often abstract (dialogue, ingredient categories) |
| **Symbol Code Translation** | Both systematic rule discovery through experimentation | SCT adds visual matching layer; robot programming uses direct abstraction (color→action, no intermediate symbol artifact) |
| **Observation Replay** | Both require remembering sequences | OR copies watched sequence exactly; Robot requires composing NEW sequences from learned rules |

---

## Game Examples

### The Dig: Nexus Robot Programming - Complete Walkthrough Solution

**Setup**: After Brink dies and crew enters Nexus, player descends ramp to power room. Blue crystal provides temporary light but removing it causes blackout. An unattached lens hangs over a pit below—must be retrieved and installed to restore permanent power so Nexus doors can open.

**Solution Chain**:
[Source: Combined from spoiler_paul_greunke_walkthrough.txt lines 150-183; mogelpower_morgana_walkthrough.txt lines 915-925]

**PHASE 1 - Rule Discovery (Tutorial Sandbox)**:
1. Return to control panel with blue crystal in place (lights on for visibility)
2. Click individual colored buttons one at a time, execute single-command programs:
   - Purple alone → observe robot movement direction
   - Blue alone → observe robot movement direction  
   - Yellow/Green same process
3. Discover purple=left, blue=up, yellow=down, green=right through systematic testing
4. Learn orange/red button = GRAB/DROP (contextual based on robot state)

**PHASE 2 - Lens Retrieval Program Composition**:
5. Input sequence: P-P-P-P-Y-Y-O (purple×4, yellow×2, orange)
6. Execute with triangular button → robot descends, navigates to lens position, grabs it
7. Robot returns to chute with lens—lens now in inventory

**PHASE 3 - Power Restoration Program Composition**:  
8. Return to control panel (lights off but can interact)
9. Input sequence: P-P-P-P-P-B-B-B-B-O (purple×5, blue×4, orange)
10. Execute → robot navigates to slot position, drops lens into mount
11. Power activates permanently, Nexus doors now unlockable with engraved rods

**Why It's Extended Pattern Learning**:
- Phase 1 teaches COMPLETE rule framework through experimentation
- Phases 2 and 3 REQUIRE application of learned rules without additional hints
- Player must COMPPOSE original sequences (not recall watched actions) using abstract mappings (colors → directions → spatial navigation)
- Same system could theoretically be taught via explicit tutorial ("purple is left") but game design deliberately WITHHOLDS instruction, forcing discovery learning

**Design Significance**: Unlike typical adventure game puzzle types where player solves discrete problems with unique solutions, the robot programming puzzle teaches a REUSABLE SYSTEM. This is mechanically closer to video game tutorial levels or mini-games that teach controls—except there's no explicit teaching text, only discovery through trial-and-error in authentic gameplay context.

---

## When to Document as Robot Programming / Color-Encoded Sequences

Document as this type when:
1. ✓ Interface uses abstract symbols (colors/shapes) mapping to specific actions via consistent rules  
2. ✓ Player must DISCOVER mappings through experimentation—not taught explicitly
3. ✓ Learned rule set applies to MULTIPLE puzzle goals requiring different sequences  
4. ✓ Framework functions without visual artifact matching (unlike Symbol Code Translation's rod→button equivalence)

DO NOT classify as this type if:
- Only ONE solution sequence exists (no repeated application of learned rules = not Pattern Learning)
- Mappings taught through explicit text/tutorial rather than discovery
- Different rule sets required for different goals (not consistent framework = Multi-Faceted Plan instead)

---

## Cross-Reference to Related Mechanics

### Contrast with Symbol Code Translation:
Both teach systems through first-instance learning but differ in COGNITIVE LAYER:
- **Robot Programming**: Abstraction learning ("purple → left")  
- **Symbol Translation**: Visual matching learning ("red triangle on artifact → red triangle button on interface")

In practice, The Dig uses BOTH systems extensively—robots for power restoration and spatial puzzles, rods for door unlocking. Each exemplifies Pattern Learning through different cognitive mechanisms (abstract vs visual).

### Contrast with Observation Replay:
Both involve sequences but differ in FLEXIBILITY:
- **Robot Programming**: Player composes custom sequences based on understood rules
- **Observation Replay**: Player reproduces EXACT watched sequence—no modification possible

If player can think "I need to go LEFT 6 times instead of 4" rather than "I must repeat purple-purple-yellow-red exactly as shown," it's Robot Programming/Pattern Learning, not Observation Replay.

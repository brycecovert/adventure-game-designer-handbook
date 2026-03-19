# Robot Programming / Color-Encoded Action Sequences

**Core Mechanic**: Color-coded interface buttons map to specific robot actions; player learns exhaustive rule set through experimentation, then applies identical framework to new goals without re-teaching. Each goal requires composing different action sequences using the same discovered rules.

## When to Use

When you want players to discover a mechanical rule system through trial-and-error, then demonstrate mastery by applying that system to increasingly complex objectives. Ideal for puzzles where understanding "how" something works matters more than "what" the solution is.

## Solution Chain

1. Player encounters robot/control interface with multiple color-coded buttons
2. Player experiments with individual buttons to discover action mappings
3. Player observes robot behavior as immediate visual feedback for each input
4. Player composes multi-step sequences by queuing multiple commands
5. Player executes sequence and observes whether goal was achieved
6. If unsuccessful, player adjusts sequence based on observed behavior and retries
7. Once framework is mastered, player applies identical rules to new objectives

---

## Examples

### The Dig: Nexus Robot Lens Retrieval

**Problem**: Player must retrieve an unattached lens hanging over a pit to restore power, but no instructions explain what each button does.

**Why It's This Type**: Player discovers the complete color-to-action mapping through systematic experimentation, then composes an original sequence to achieve the retrieval goal. No hints are given—understanding emerges from trial-and-error.

**Solution**:
1. Test purple button alone → discover it moves robot LEFT
2. Test blue button alone → discover it moves robot UP
3. Test yellow button alone → discover it moves robot DOWN
4. Test green button alone → discover it moves robot RIGHT
5. Discover orange/red button toggles between GRAB (when empty) and DROP (when holding item)
6. Input sequence: purple×4, yellow×2, orange
7. Execute → robot retrieves lens and returns via chute

---

### The Dig: Power Restoration

**Problem**: After retrieving the lens, player must now install it into a power slot to permanently restore energy to the Nexus doors.

**Why It's This Type**: Uses identical button mappings from lens retrieval—same rules, different spatial objective requiring a new sequence composition. No re-teaching occurs.

**Solution**:
1. Return to control panel with lens retrieved
2. Input sequence: purple×5, blue×4, orange
3. Execute → robot navigates to power slot and drops lens
4. Power permanently restores—doors become unlockable

---

### The Dig: Light Bridge Controls

**Problem**: Player must activate light bridges across multiple spires to progress, with each bridge requiring the same lens-positioning procedure.

**Why It's This Type**: Player learns a procedural framework once, then applies it exhaustively across four identical instances. The same three-step process (position lens, hold switch, wait for bridge) works at every spire with zero re-teaching.

**Solution**:
1. Position lens in first slot (produces distinct audio tone)
2. Listen for which position creates different tone than others
3. Push and hold switch until crystal above glows
4. Maintain hold until line completes drawing across pentagonal display
5. Exit interface → bridge materializes
6. Repeat at remaining spires using identical procedure

---

## Related Types

| Type | Similarity | Distinction |
|------|------------|-------------|
| **Multi-Faceted Plan** | Both require gathering across sources | MFP = collect different categories, synthesize at end; Robot = same rules, new sequences |
| **Symbol Code Translation** | Both systematic rule discovery | SCT = visual symbol matching (rod→button); Robot = direct abstraction (color→action) |
| **Observation Replay** | Both involve sequence memory | OR = reproduce exact watched sequence; Robot = compose NEW sequences from learned rules |

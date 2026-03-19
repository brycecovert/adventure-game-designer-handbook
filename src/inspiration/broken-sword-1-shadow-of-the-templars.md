<!-- _category: Inspiration -->
# Broken Sword 1: Shadow of the Templars (1996)

Revolution Software's debut adventure established the series' signature design philosophy: environmental puzzles rooted in physical logic, where item functions align with real-world expectations and solutions emerge from creative tool application rather than inventory juggling. The game rewards observation over trial-and-error, with mechanical clarity that makes every solution feel earned.

## At a Glance

| Field | Details |
|-------|---------|
| **Release Year** | 1996 |
| **Developer** | Revolution Software (design by Charles Cecil) |
| **Engine** | Director Engine (proprietary) |
| **Core Mechanic** | Physical-logic puzzles with tool-based solutions; single-character exploration across international locations |
| **Player Quote** | "This game is a triumph of adventure game design" — [Ashley Bennett] |
| **Design Note** | Puzzles reward players who remember items' physical properties rather than forcing arbitrary combinations — [Pelliccio] |

---

## Puzzle 1: Lochmarne Castle Goat Barrier

### Problem

The player must enter Lochmarne Castle's secret underground tomb, but a guard goat repeatedly attacks any approach to the ladder or axle. The goat cannot be fought, fed, or reasoned with—it functions as a pure obstacle with no dialogue options. Access requires creating a trap using available environmental objects within a single scene.

### Why It Works

This puzzle demonstrates Broken Sword's commitment to physical logic: every object has observable properties that predict its function. As Ashley Bennett notes in his walkthrough, the player must first "Try to approach the ladder, but the goat will knock you down." Then through experimentation: "As soon as you can, run over and move the axle to trap the goat."

The mechanical clarity comes from explicit spatial relationships visible on screen—the axle rolls into place beneath a wooden support beam. The timing-based action (approach quickly before goat attacks) adds emergent tension without requiring split-second precision. It validates observation by making the solution reproducible once discovered.

### Solution

Trap the guard goat under its feed using a rolling axle, then access the ladder to descend into the tomb entrance.

### Steps

1. Approach the goat to observe its patrol pattern (it attacks any approach to ladder or axle)
2. Wait for goat to move to center of scene near feeding trough
3. Run quickly to axle and click to roll it toward support beam beneath trough
4. Axle jams under beam, crushing it down and trapping goat's legs
5. Climb down the now-accessible ladder into the secret chamber

### Screenshots

![Show goat patrol path, axe location, and ladder position - before trap is set](./broken-sword-1-puzzle1-s1.png)

**Pattern Type:** [[Observation Replay]](../puzzles/observation-replay.md) — environmental objects combined through spatial manipulation to disable barrier  
**Also Uses:** [[Timed Consequence]](../puzzles/timed-consequence.md) — limited-time opportunity requires quick response before NPC recovers

---

## Puzzle 2: The Plaster-of-Paris Cast

### Problem

Inside Lochmarne Castle's underground chamber, five key-shaped holes remain in the ground after a toppled statue falls. The player has plaster of Paris but cannot create a usable cast—the plaster needs to be wetted and allowed to set. Wetting occurs at the MacDevitt's Bar cellar tap; setting requires returning to the castle with a soaked towel. This creates a cross-location dependency chain spanning three scenes.

### Why It Works

This puzzle exemplifies Meta Construction: sequential outputs where each step enables the next, rather than independent items gathered in any order. Bennett documents the full chain: "Put your plaster in the holes, then use the towel on the plaster—it is not wet enough" then later after wetting: "Use the wet towel on the plaster to make it set."

The player feels cleverness through multi-step planning rather than lucky combinations. Each failure state teaches a rule: dry plaster = useless, wet plaster that sets immediately = unusable. The correct sequence (place dry plaster in holes, return to bar, wet towel separately, return to apply moisture to allow proper set time) emerges from testing physical properties explicitly communicated through game feedback.

### Solution

Create a functional key by making a plaster cast of the statue's base, requiring cross-location travel between castle and bar to prepare materials properly.

### Steps

1. Find bag containing plaster of Paris in underground chamber
2. Pick up toppled statue, noting five holes remaining in ground where it fell
3. Pour plaster into the five holes to create mold
4. Attempt to use towel on plaster—game indicates "not wet enough"
5. Return to MacDevitt's Bar, descend to cellar, turn on tap
6. Wet towel thoroughly under running water from tap
7. Return to castle chamber, use wet towel on plaster to begin setting process
8. After brief animation showing cast hardening, pick up finished key replica
9. Insert cast into five holes beside previously locked door to open it

### Screenshots

![Display the five key-shaped holes in ground where statue fell - this is the mold for casting](./broken-sword-1-puzzle2-s1.png)
![Show plaster drying animation after wet towel is applied, resulting in finished key cast](./broken-sword-1-puzzle2-s2.png)

**Pattern Type:** [[Meta-Puzzle Construction]](../puzzles/meta-puzzle-construction.md) — sequential chain where step N's output (wet towel) enables step N+1 (plaster set)  
**Also Uses:** [[Cross-Realm Logistics]](../puzzles/cross-realm-logistics.md) — player must travel between two scenes to complete solution chain

---

## Puzzle 3: Site de Baphomet Bathroom Key Impression

### Problem

The Site de Baphomet's secret chamber is locked with a specialized key held by an armed guard who wears gloves when handling hot objects. The bathroom contains soap on which the guard places his keys, and a boiler-powered thermostat that controls heating. The player must exploit the guard's thermal sensitivity to create a time window for key manipulation—first copying the imprint, then swapping in a decoy key during the guard's vulnerability period.

### Why It Works

This puzzle rewards careful NPC observation: the guard's glove-wearing behavior is a visible routine directly tied to environmental mechanics (boiler heat). Bennett walks through: "Use the thermostat to turn off the heat, and soon the guard will put on some gloves. Give the keys back to the guard and head up the stairs."

The multi-phase execution builds tension: Phase 1 captures key impression while guard is distracted by cold; Phase 2 uses phone call distraction (Nico) to manipulate painter's position; Phase 3 exploits painted decoy key indistinguishable from real one during guard's glove-wearing state. The thermal mechanic connects across puzzles' systems—what appears as decorative detail (boiler, thermostat) functions as critical puzzle affordance.

### Solution

Exploit the guard's thermal sensitivity to create distraction windows, copy his key using plaster impression technique, then substitute a painted decoy key for access.

### Steps

1. Enter bathroom, observe keys on soap bar and boiler on right side of room
2. Use keys on soap to create visible key imprint in the soft soap surface
3. Apply plaster inventory item over soap imprint to capture the key shape
4. Wet the plaster cast under tap water to form copy key mold
5. Look at thermostat mounted near door—note it controls heating system
6. Return downstairs, use phone to call Nico and request assistance with painter distraction
7. Return upstairs, talk to painter about his work while fake key is visible
8. Call Nico again; she contacts guard, causing him to leave post temporarily  
9. While painter is distracted by phone call, paint the fake key black in the paint can
10. Ask guard for keys again, enter bathroom, use fake key on real keys to execute swap
11. Return swapped keys to guard; turn thermostat to make him wear gloves
12. Guard uses keys unaware they've been replaced; player now has access key

### Screenshots

![Display the guard in lobby, thermostat on wall, and boiler location - showing thermal mechanic setup](./broken-sword-1-puzzle3-s1.png)
![Show bathroom interior with soap bar containing key imprint and fake plaster key being created](./broken-sword-1-puzzle3-s2.png)
![Capture the guard wearing gloves after thermostat is adjusted - this enables swapping painted fake key without detection](./broken-sword-1-puzzle3-s3.png)

**Pattern Type:** [[Sensory Exploitation]](../puzzles/sensory-exploitation.md) — NPC's thermal sensitivity creates exploitable vulnerability window  
**Also Uses:** [[Multi-Faceted Plan]](../puzzles/multi-faceted-plan.md) — multiple independent requirements (plaster cast, phone distraction access, paint decoy creation) synthesize into final solution

---

## Other Notable Puzzles

| Puzzle | Core Pattern Type | Brief Description |
|--------|-------------------|-------------------|
| Hotel Ubi Staged Theft | [[Cross-Realm Logistics]](../puzzles/cross-realm-logistics.md) | Drop manuscript outside window, exit hotel where guards search player and miss it, retrieve from alley behind building |
| Museum Night Heist Setup | [[Multi-Faceted Plan]](../puzzles/multi-faceted-plan.md) | Push totem pole to block guard view line, hide in sarcophagus until nightfall, allow cat burglar distraction to steal tripod |
| Montfaucon Juggler Distraction | [[Comedy-Based Persuasion]](../puzzles/comedy-based-persuasion.md) | Wear clown red nose obtained from sewer, approach juggler repeatedly until he leaves in disgust over player's incompetence |
| Marib Club Key Exchange | [[Information Brokerage]](../puzzles/information-brokerage.md) | Return stolen toilet brush to club barman in exchange for bathroom keys containing access chain |
| Marib Antique Statue Trade | [[Multi-Faceted Plan]](../puzzles/multi-faceted-plan.md) | Clean statue with tissue from earlier encounter, sell to American collector Duane for $50 needed for truck passage |
| Spain Chess Tapestry Rearrangement | [[Symbol Code Translation]](../puzzles/symbol-code-translation.md) | Arrange middle column chess pieces in bishop-knight-king sequence to reveal hidden chalice compartment |
| Site de Baphomet Chalice Vision | Artifact-based revelation | Place polished Spanish chalice on mosaic floor at specific location, receive vision of next destination encoded through artifact's surface |
| Train Top Carriage Climb | Vertical traversal sequence | Open window, climb up exterior, navigate to second carriage compartment, pull emergency brake during high-speed travel |

---

## References

**Primary Sources:**

[Ashley Bennett]: https://archive.org/web/https://www.walkthroughking.com/text/brokensword.aspx  
Ashley Bennett, "Broken Sword: The Walkthrough King," WalkthroughKing.com (2009), archived via Internet Archive. Original walkthrough provides step-by-step solutions with minimal commentary, emphasizing mechanical efficiency over narrative analysis.

[Pelliccio]: https://www.thegamer.com/broken-sword-shadow-of-the-templars-reforged-complete-guide-puzzle-solution-walkthrough/  
Meg Pelliccio, "Complete Walkthrough of Broken Sword: Shadow of the Templars: Reforged," TheGamer (2024). Modern comprehensive guide for Reforged version; useful for verifying puzzle mechanics remain consistent across game versions despite visual updates.

**Verification Note:** The Walkthrough King source (archived) serves as primary reference for original 1996 game mechanics, while TheGamer walkthrough confirms puzzle design consistency in the 2024 Remaster. All pattern classifications cross-referenced against both sources to ensure mechanical accuracy independent of version-specific UI changes.

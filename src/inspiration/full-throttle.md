# Full Throttle (1995)

Full Throttle is a 1995 LucasArts point-and-click adventure designed by Ron Gilbert that combines traditional puzzle-solving with arcade-style action sequences. Players control Ben, leader of the Polecats motorcycle gang, who must prove his gang's innocence in Malcolm Corley's murder while evading corporate thugs and competing bikers. The game's signature mechanic is contextual violence—doors are kicked rather than unlocked, information is punched from NPCs, and inventory puzzles resolve through weapon-based combat on Mine Road [THayes][StrategyWiki].

## At a Glance

| | |
|---|---|
| **Release Year** | 1995 |
| **Developer** | LucasArts / Ron Gilbert |
| **Core Mechanic** | Contextual violence and item synthesis across multiple locations |
| **What players found enjoyable** | "The numerous arcade sequences combined with the simple yet interesting puzzles make this yet another excellent adventure game from LucasArts" [THayes]. The fertilizer chase demonstrates satisfying cause-and-effect: "ride through the fertilizer in the road and they will crash" [THayes], while one walkthrough notes the bike-jump finale has players assembling four separate components to clear the gorge [StrategyWiki] |

![Game overview screenshot — Ben on motorcycle near Kickstand bar](./full-throttle-overview.png)

---

## Puzzle 1: Melonweed Bike Repair Synthesis

### Problem

Ben's bike has been sabotaged and crashed in front of witnesses. Stranded in Melonweed, Maureen offers to repair it if he provides three components: forks from a guarded junkyard, a welding torch from Todd's trailer, and fuel from a locked gas tower with police surveillance. Each location blocks access through enemies or security systems, but each also contains an item needed elsewhere [THayes][StrategyWiki].

![Maureen's garage showing the bike repair request and initial tools](./full-throttle-puzzle1.png)

### What Makes It Rewarding

This is a refined example of Multi-Faceted Plan design: all three components can be collected in any order, but efficient completion requires recognizing that Todd's trailer contains the lockpick needed for the gas tower, and the junkyard needs meat from Todd's fridge to distract the guard dog. One walkthrough captures the elegant interdependency: "in each place you find item(s) which you will need in the other places, therefore the quickest way is this"—then outlines the optimal route [StrategyWiki]. The alarm-trigger at the gas tower creates tension (police arrive in hovercars) but rewards patience: hiding until they climb the tower lets Ben siphon fuel unimpeded.

### Solution

All three components are delivered to Maureen, who fixes the bike and installs a booster as a bonus.

### Steps
1. Enter Todd's trailer by knocking, waiting for him to approach the door, then kicking it shut to launch him across the room
2. Open the cabinet above Todd to get the lockpick; open the fridge to get the meat
3. Take the welding torch from the desk in Todd's work area (accessed via elevator)
4. Use the lockpick on the gas tower lock; touch the ladder to trigger an alarm
5. Hide behind the dark pillar while police hovercars land and search upward
6. Siphon fuel from a hovercar using the gas can and hose, drinking from the hose to fill the container
7. Enter the junkyard by locking the gate latch and climbing the chain wall
8. Place meat in a car to lure Todd's dog away from the forks pile
9. Operate the magnetic crane tower to lift the car containing the dog
10. Retrieve the forks from the now-clear parts pile
11. Return all three items to Maureen for bike repair and booster installation

### Screenshots
- ![Todd's trailer interior showing cabinet with lockpick, fridge with meat, and welding torch on desk](./full-throttle-puzzle1-s1.png)
- ![Magnetic crane operation lifting car with dog above junk pile](./full-throttle-puzzle1-s2.png)

[Multi-Faceted Plan](../puzzles/multi-faceted-plan.md) — Multiple requirements (forks, torch, fuel) are gathered independently from different locations and synthesized at completion. Unlike Meta-Puzzle Construction, step order is flexible rather than sequential—each location's output doesn't enable subsequent steps.

---

## Puzzle 2: Mine Road Biker Combat Progression

### Problem

On the Mine Road between the broken Poyahoga Bridge and Corville, Ben must collect four items from rival bikers: a hover fan (from crashed police vehicle), booster (from Vulture on mine road), goggles (from Cavefish), and ramp (from Cavefish hideout). The first three are obtained through combat encounters where specific weapons counter specific enemies. Each defeated biker drops their weapon, which must be used against the next opponent in a carefully calibrated power curve [THayes][StrategyWiki].

![Mine Road showing Ben on motorcycle approaching biker combat encounter](./full-throttle-puzzle2.png)

### What Makes It Rewarding

The escalating combat progression creates clear mastery signals. Players start with fists, trade up to tire iron, then chainsaw (strongest weapon), learning that certain enemies require specific counters: chainsaw cannot defeat the Cavefish or booster-wielding Vulture. As one walkthrough explains: "First of all try and find the Vulture with the chainsaw. Defeat her by throwing the fertiliser to get the chainsaw, which can be used to defeat every rider except for the Cavefish and the Vulture with the booster" [THayes]. The Cavefish encounter adds timing-based mechanics (wait for him to raise his head from oil fumes, then strike with plank) ensuring variety beyond simple weapon matching.

### Solution

All four components are acquired: hover fan installed on bike, booster stolen from Vulture, goggles taken from Cavefish, and ramp attached after entering the secret Cavefish hideout revealed by the goggles.

### Steps
1. Use tire iron to open the crashed police hovercraft; install the hover fan on Ben's bike
2. Travel down Mine Road until encountering first weapon-wielding biker; defeat with fists or tire iron for their weapon (typically wooden plank)
3. Locate Vulture with chainsaw; use fertilizer as counter-weapon to steal the chainsaw
4. Use chainsaw to defeat biker wielding chain weapon
5. Find booster Vulture; use chain (not fists or plank) to knock him off and claim the booster
6. Approach Cavefish slowly; wait for him to lift head from oil fumes, then strike once with plank to steal goggles
7. Equip goggles to activate night vision mode revealing hidden cave entrance
8. Enter Cavefish hideout when "Cave Entrance!" message appears; attach ramp to bike
9. Before exiting, unhook ramp and knock yellow navigation markers off the road (causing pursuing Cavefish to crash later)

### Screenshots
- ![Weapon selection UI showing tire iron, plank, chainsaw, and chain available for biker combat](./full-throttle-puzzle2-s1.png)
- ![Cavefish encounter showing timing mechanic: blind biker lifting head from oil fumes before attack](./full-throttle-puzzle2-s2.png)

[Escalating Combat Progression](../puzzles/escalating-combat-progression.md) — Players acquire increasingly powerful counter-weapons through sequential combat encounters with distinct enemy types. Unlike Pattern Learning, this is action-based acquisition rather than observation-based rule discovery—the weapons are taken physically from defeated opponents.

---

## Puzzle 3: Vulture Minefield Navigation via Distraction Physics

### Problem

The Vultures' hideout entrance is blockaded by a minefield with no conventional approach path. Ben has earlier obtained an RC car battery (by sacrificing one toy bunny on a single mine) and access to Horrace's souvenir stall inside the nearby demolition derby stadium, which sells boxes of remote-controlled bunnies. The player must clear a safe path through approximately 15-20 mines using only expendable bunnies while retrieving batteries from exploded mines [THayes][StrategyWiki].

![Minefield outside Vultures hideout showing bunny on track and mine location](./full-throttle-puzzle3.png)

### What Makes It Rewarding

This puzzle elegantly demonstrates Distraction Physics by turning an environmental blockage (minefield) into a manipulable system. The first bunny sacrifice teaches the pattern: mines contain batteries that can power the RC car to lure Horrace away, unlocking access to bunny boxes behind his counter. As one walkthrough strategizes: "drop the box, pick up all the bunnies quickly, and then let them go one at a time. After each bunny blows up, walk to the farthest point it reached and drop another bunny" [StrategyWiki]. The optimization challenge comes from bunny conservation—players must retrieve 3+ bunnies from each box without losing them all to consecutive explosions.

### Solution

A continuous path of exploded mines leads directly to the Vultures' hideout entrance, allowing Ben to enter and confront Maureen about her father's murder.

### Steps
1. Enter demolition derby stadium; examine souvenir stall while Horrace looks away
2. Take first bunny from display when Horrace is distracted
3. Exit stadium and approach minefield at top of slope
4. Place bunny on the closest mine path; watch it explode and reveal a battery
5. Collect the exposed battery from the exploded mine
6. Return to souvenir stall and place battery in RC car behind counter
7. Use joystick to drive RC car eastward through stadium exit gate, drawing Horrace away
8. While Horrace chases his car, take entire box of bunnies from behind counter
9. Return to minefield; drop one bunny at a time along the established path
10. After each explosion, walk forward to the new furthest point and repeat until reaching hideout entrance

### Screenshots
- ![Horrace's souvenir stall with RC car, bunny on display, and battery slot](./full-throttle-puzzle3-s1.png)
- ![Minefield path showing exploded mine revealing battery and bunny approaching next mine](./full-throttle-puzzle3-s2.png)

[Distraction Physics](../puzzles/distraction-physics.md) — Environmental objects (RC car, toy bunnies) are used to break a blocking pattern (minefield guard) by exploiting NPC routines (Horrace chases lost property). Unlike Sensory Exploitation which targets perception weaknesses directly, this creates diversion through object manipulation.

---

## Other Puzzles

| Name | Problem & Solution | Pattern Type |
|------|-------------------|--------------|
| Gas Can Theft | Hide from police while siphoning fuel from hovercars using gas can and hose | [Timed Consequence](../puzzles/timed-consequence.md) |
| Junkyard Crane Dog Lure | Use meat to distract guard dog, then operate magnetic crane to lift car with dog inside | [Distraction Physics](../puzzles/distraction-physics.md) |
| Fake ID Convincement | Give Miranda's fake federal IDs to Emmet at Kickstand to gain transport to Mink Ranch | [Information Brokerage](../puzzles/information-brokerage.md) |
| Fertilizer Truck Crash | Push fertilizer truck over road; lure pursuing thugs through spill to blind them into crashing | [Distraction Physics](../puzzles/distraction-physics.md) |
| Cavefish Navigation Markers | Remove yellow dots that Cavefish use for night navigation, causing them to crash when pursuing Ben with goggles-equipped bike | [Sensory Exploitation](../puzzles/sensory-exploitation.md) |
| Demolition Derby Escape | Control car via ramps; drive flaming body along arena walls to create firetrap escape route | [Meta-Puzzle Construction](../puzzles/meta-puzzle-construction.md) |
| Secret Wall Entry | Kick cracked wall at precise timing (when meters align) behind Corley factory for secret office access | [Timed Consequence](../puzzles/timed-consequence.md) |
| Safe Code Decryption | Input five-digit code (154492) observed on Maureen's old bike to open Malcolm Corley's floor safe | [Symbol Code Translation](../puzzles/symbol-code-translation.md) |
| Projector Sabotage | Break film projector by raising motor lever and maximizing lamp brightness, disrupting Ripburger's speech | [Distraction Physics](../puzzles/distraction-physics.md) |
| Final Truck Escape | Hijack controls from truck interior to disable aircraft machine guns and prevent Ripburger escape via gorge | [Corporate Infiltration](../puzzles/corporate-infiltration.md) |

---

### References

[THayes] Tom Hayes, IGN Walkthrough (2003). https://www.ign.com/articles/2003/11/12/full-throttle-walkthrough-440061

[StrategyWiki] StrategyWiki Community Contributors, Full Throttle (1995)/Walkthrough. https://strategywiki.org/wiki/Full_Throttle_(1995)/Walkthrough

<!-- _category: Inspiration -->
# Quest for Glory III: Wages of War (1992)

Sierra's 1992 sequel introduced three distinct class-based playthroughs, where Fighter/Paladin, Wizard, and Thief paths diverge mechanically at key moments. Unlike QFG II's linear progression, QFG III's puzzles branch by class: Warriors compete in tribal contests, Wizards duel with spells, Thieves infiltrate via stealth. Each class solves the same narrative problems through fundamentally different mechanics, demonstrating how player identity shapes puzzle design.

## At a Glance

| Field | Details |
|-------|---------|
| **Release Year** | 1992 |
| **Developer** | Sierra On-Line (Core Design: Corey Cole) |
| **Core Mechanic** | Class-specific puzzle paths; identical goals require different mechanical solutions per character type |
| **What players found enjoyable** | "The greatest thing about the series is the well-done connection between RPG and the classic Sierra graphic adventure" — [CyricZ]. Additional playthrough notes: "This is a very general spell, and is used to detect any existing magical auras in the immediate area"—walkthroughs emphasize mechanical depth over story [CyricZ] |

## Puzzle Dependency Chart

<iframe src="./quest-for-glory-iii-chart.svg" width="100%" height="800px" style="border:none;"></iframe>

[View Puzzle Dependencies QA Report](./quest-for-glory-iii-puzzle-dependencies-qa.md)

![Game overview screenshot — hero character selection screen showing Fighter, Wizard, Thief classes with stats panel](./quest-for-glory-iii-overview.png)

---

## Puzzle 1: Warrior Initiation Contest

### Problem

To marry the Dispelled Leopard Lady (Johari), the Simbani Laibon requires the Hero to become a recognized Warrior by defeating the Laibon's son, Yesufu, in five sequential trials. Each trial tests a different mechanical skill from previous gameplay: vine physics, obstacle manipulation, spear accuracy, combat reflexes, and trap avoidance. The player must complete all events without dying or losing—failure requires restarting the Initiation ceremony.

### What Makes It Rewarding

This puzzle exemplifies class-specific ritual design with pattern learning elements. CyricZ documents the mechanical precision: "Grab a vine off the tree and you'll tie it to the spear. Throw the spear at the ring, and you'll win this event." Each trial rewards players who observed mechanics elsewhere in the game rather than brute-forcing solutions.

The Wrestling Bridge mini-game exemplifies mechanical clarity: "The main gist. Up = Jump. Down = Duck. Left = Dodge left. Right = Dodge right. If your opponent jumps, you duck, and vice versa. If your opponent dodges one way, you need to dodge to the other side." Rules are explicitly taught, execution requires practice—no trial-and-error guesswork demanded.

### Solution

Defeat Yesufu in five sequential trials to earn Warrior status from the Laibon, receiving the right to marry Johari and later receive the Magic Drum.

### Steps

1. **Ring Retrieval:** At Twisted Tree, grab vine from tree branches, tie it to spear base
2. Throw spea with attached vine at hanging ring; vine allows retrieval without Yesufu's spear-throwing approach (5 PP)
3. **Circle of Thorns:** Push nearby log onto thorn barrier entrance before entering circle center
4. Grab second ring from center while standing on log bridge, avoiding thorns completely (5 PP)
5. **Bear Trap Rescue:** Find Yesufu stuck in trap during final run, HELP his character manually (8 PP)
6. Run back to village with both participants alive to avoid disqualification
7. **Spear Throw Contest:** Win unmoving and moving target throwing rounds using best weapon use skills available (5 PP)
8. **Wrestling Bridge Duel:** Match opponent's moves inversely—when Yesufu jumps, duck; when he dodges left, dodge left; repeat until falling off three times (5-10 PP depending on victory)

### Screenshots

![Warrior Initiation Contest — Twisted Tree ring retrieval showing vine tied to spear](./qfg3-warrior-initiation-twisted-tree.png)

![Wrestling Bridge mini-game interface showing directional controls and opponent stance](./qfg3-wrestling-bridge-controls.png)

**Pattern Type:** [Class-Specific Ritual](../puzzles/class-specific-ritual.md) — sequential trials with exact action requirements specific to Fighter/Warrior path; Wizard and Thief bypass entirely via different methods  
**Also Uses:** [Pattern Learning](../puzzles/pattern-learning.md) — Wrestling Bridge mechanics are taught earlier, then tested under pressure in Initiation

---

## Puzzle 2: Dispel Potion Recipe Collection

### Problem

Salim Nafs, the hippie Apothecary in Tarna, needs three magical ingredients to create a variant of the Dispel Potion essential for later plot progression: Venomous Vine Fruit (toxic plant), Gift from the Heart of the World (magical tree offering), and Water from the Pool of Peace (restorative spring). Each ingredient requires a distinct mini-game solution with class variations—Fighters cut vines physically, Wizards use Fetch, Thieves use Ropes. The player must also establish friendship with Salim earlier by sharing knowledge about Julanar from QFG II.

### What Makes It Rewarding

This multi-faceted plan puzzle demonstrates excellent information brokerage design. CyricZ documents the explicit hints: "Asking him about Dispel Potions, and he'll tell you about the three ingredients he needs: A Venomous Vine Fruit, a Gift from the Heart of the World, and Water from the Pool of Peace." Each component requires separate exploration loops through different game areas: savanna (vines), jungle (Heart of the World), wilderness spring (Pool).

The class-specific implementations reward understanding mechanical tools. For Wizards: "cast Fetch on the vine. Boom. You got a fruit (8)." For Thieves: "Toss your Rope and Grapnel on it. Boom. You got a fruit (8)." Same outcome, completely different mechanical execution—exactly what class-based design should achieve.

If Julanar is mentioned to Salim during early Tarna exploration ("Tell him about Julanar (10)"), the potioneer provides both Dispel Potions for free later—rewarding knowledge from previous games over simple inventory management.

### Solution

Gather three distinct magical ingredients across different regions of Tarna, deliver them to Salim at the Apothecary, receive two completed Dispel Potions in return (free if Julanar friendship established).

### Steps

1. Visit Salim's Apothecary in Middle Plateau; ask about DISPEL POTIONS for ingredient list (7 PP)
2. Ask about PLANTS → TREE option to share QFG backstory, then TELL ABOUT JULANAR (10 PP)
3. **Venomous Vine Fruit:** Travel to savanna rock formations with meerbats observed playing near vine cluster
4. **Class Variation - Fighter:** Wait for young meerbat to get snagged by vines, THROW ROCK or USE SWORD on vines while they're distracted
5. **Class Variation - Wizard:** Cast FETCH spell directly on vine to extract fruit without combat (8 PP total)
6. **Class Variation - Thief:** Use ROPE with MAGIC GRAPNEL on vine cluster for nonviolent extraction (8 PP total)
7. Young meerbat leaves gift: Venomous Vine Fruit + Fire Opal (store opal for Lost City door puzzle); take both
8. **Water from Pool of Peace:** Fill multiple waterskins at wilderness spring location before returning to Tarna; water also restores stamina when drunk (3 PP)
9. **Gift from Heart of the World:** Climb giant tree in jungle to Guardian's cave midway up tree trunk (5 PP)
10. Ask GIFT option from floating Guardian orb; receive verbal hint about Pool water requirement
11. Return to very top of Heart of World tree canopy, POUR Water from the Pool of Peace on ground
12. Magical gift fruit appears on branch automatically; take it (5 PP)
13. Return to Tarna Apothecary; give Salim all three ingredients one by one
14. Leave and return next in-game day; purchase or receive two Dispel Potions for plot progression

### Screenshots

![Salim the Apothecary in his shop displaying ingredient dialogue options](./qfg3-salim-apothecary-ingredients.png)

![Venomous Vines area showing meerbats and vine cluster with class-specific interaction hints](./qfg3-venomous-vines-meerbat.png)

![Heart of the World tree top showing Guardian orb and water pouring animation](./qfg3-heart-of-world-gift.png)

**Pattern Type:** [Meta-Puzzle Construction](../puzzles/sequential-construction.md) — sequential gathering of multiple components required before synthesis at Apothecary; each step's output enables later combination  
**Also Uses:** [Class-Specific Ritual](../puzzles/class-specific-ritual.md) — identical goal (get fruit from vine) requires three completely different mechanical approaches depending on Hero class

---

## Puzzle 3: Leopardman Wizard's Duel (Wizard Path Only)

### Problem

The Leopardman Shaman demands magical respect to return the stolen Spear of Death. The duel has strict rules: cast defensive spells in exact sequence to counter each attack, never striking directly. Seven rounds require pre-learned spells (Summon Staff, Reversal, Calm, Open, Juggling Lights, Dazzle, Levitate) and one Dispel Potion for the final Demon manifestation round. The player must win without violating no-direct-attack rules during early rounds.

### What Makes It Rewarding

This class-specific ritual exemplifies pure wizard mechanics divorced from combat or stealth alternatives. CyricZ breaks down the spell sequence mechanically: "First, Summon your Staff...Next, cast Reversal to flip back the staff-burning spell he'll try. The Shaman will then cast a Wall of Flames around you. Cast Calm." Each counter-spell has explicit logic—Reversal for incoming attacks on staff, Calm for environmental obstacles, Open for locked cages, Juggling Lights for darkness manipulation.

The final round subverts the pattern: "Finally, the Shaman will get ticked, and he'll summon a demon within himself. All bets are off now. You can either kill him (5), or be nice and use a Dispel Potion on him (8)." Honor-based resolution grants more points—mechanical victory isn't optimal, moral choice matters.

### Solution

Win the Wizard's Duel by casting exactly seven counter-spells in correct sequence, then choose honor (Dispel Potion) or combat for final round against possessed Shaman.

### Steps

1. Tell about MAGIC to Johari during second jungle meeting; receive LIGHTNING BALL spell knowledge as preparation (4 PP)
2. **Round 1:** Summon wizard's staff immediately; counter Shaman's first attack before he acts (4 PP)
3. **Round 2:** Cast REVERSAL when Shaman casts staff-burning fireball (4 PP); reflected damage breaks his focus
4. **Round 3:** Wall of Flames appears around hero—cast CALM to smother the flames (4 PP)
5. **Round 4:** Trap yourself in Cage of Thorns with no opening cast OPEN spell on cage bars (4 PP)
6. **Round 5:** Complete darkness obscures battlefield; cast JUGGLING LIGHTS for visibility restoration (4 PP)
7. **Round 6:** Black snake illusion appears—cast DAZZLE to burn away the mental attack (4 PP)
8. **Round 7:** Pit opens in center floor casting LEVITATE to float above until it closes (4 PP)
9. **Final Round:** Shaman transforms into demon hybrid; choose HONORABLE OPTION (USE DISPEL POTION, 8 PP) or COMBAT option (5 PP minimum)
10. Receive spear of Death and magic drum from grateful Leopardman Chief upon honorable victory (10 PP for duel completion)

### Screenshots

![Wizard's Duel arena showing Shaman opponent and hero with staff summoned](./qfg3-wizard-duel-summon-staff.png)

![Magical duel progression displaying Wall of Flames spell effect around hero character](./qfg3-wizard-duel-flames.png)

![Final round showing possessed Shaman transformation with Dispel Potion use option](./qfg3-shaman-possessed-dispel.png)

**Pattern Type:** [Class-Specific Ritual](../puzzles/class-specific-ritual.md) — entire puzzle path requires Magic skill; Fighter and Thief must complete warrior contest or stealth infiltration instead  
**Also Uses:** [Escalating Combat Progression](../puzzles/escalating-combat-progression.md) — spell difficulty increases per round from simple counters to complex environment manipulation

---

## Other Notable Puzzles

| Puzzle | Description | Pattern Type |
|--------|-------------|--------------|
| Honeybird Feather Acqusition | Bait honey with bought jar then wait for bird to leave nest; follow bee trail marker to exact location | [Sensory Exploitation](../puzzles/sensory-exploitation.md) |
| Monkey Manu Rescue & Rope Bridge Build | Free caged monkey, later convince him to build rope swingline between jungle trees using carried vine | [Multi-Character Coordination](../puzzles/multi-character-coordination.md) |
| Lost City Fire Opal Door Lock | Insert previously-collected Fire Opal into jackal statue's eye socket; door opens via gem recognition | [Multi-Faceted Plan](../puzzles/multi-faceted-plan.md) |
| Doppelganger Hall of Mirrors | Face five evil duplicates with friends; defeat only through Harami's last-second stab | [Escalating Combat Progression](../puzzles/escalating-combat-progression.md) |
| Demon Wizard Final Battle | Use shield to knock over gargoyle blocking gap, then shoot across with spear while gargoyle restrains foot | [Multi-Faceted Plan](../puzzles/multi-faceted-plan.md) |
| Thief's Laibon Hut Infiltration | Oil chest hinge silently, use lockpick kit on crack while sneaking; avoid guards outside | [Corporate Infiltration](../puzzles/distraction-environmental-manipulation.md) |
| Thief's Panther Distraction | Toss meat to sleeping panther before crossing tightrope during Leopardman village stealth mission | [Distraction Physics](../puzzles/distraction-environmental-manipulation.md) |
| Temple of the Sekhmet Prophecy Trance | Select symbols matching class identity (Sword/Fist for Warrior, Pentagram for Wizard, Key for Thief) to receive prophecy | [Symbol Code Translation](../puzzles/symbol-code-translation.md) |

---

## References

**Primary Sources:**

[CyricZ]: https://archive.org/web/20190509132117/https://gamefaqs.gamespot.com/pc/562690-quest-for-glory-iii-wages-of-war/faqs/13443  
CyricZ's FAQ/Walkthrough, Version 1.1 (March 30, 2005). Archived from GameFAQs via Internet Archive (May 9, 2019). Original URL: https://gamefaqs.gamespot.com/pc/562690-quest-for-glory-iii-wages-of-war/faqs/13443

[DanFabulich]: https://archive.org/web/20181108032745/https://gamefaqs.gamespot.com/pc/562690-quest-for-glory-iii-wages-of-war/faqs/57535  
DanFabulich's Quest for Glory III: Wages of War Walkthrough, Version 1.0 (archived November 8, 2018). Original URL: https://gamefaqs.gamespot.com/pc/562690-quest-for-glory-iii-wages-of-war/faqs/57535

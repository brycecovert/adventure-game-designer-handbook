<!-- _category: Inspiration -->
# Quest for Glory II: Trial by Fire (1989)

Sierra's 1989 hybrid RPG-adventure pioneered time-based puzzle design. Unlike static fetch quests, QFG II structures puzzles across a 30-day gameplay window where elements must be completed in temporal sequence—Elementals attack on specific days, NPC availability shifts with time, and actions taken early (visiting the Enchantress, collecting items) directly gate later solutions. This chronological pressure creates tension absent from traditional adventure games.

## At a Glance

| Field | Details |
|-------|---------|
| **Release Year** | 1989 |
| **Developer** | Sierra On-Line (Core Design: Corey Cole, Lori Ann Cooper) |
| **Engine** | SCI (Sierra Creative Interpreter) |
| **Core Mechanic** | Time-based puzzle progression; elementals appear on fixed days with deadline consequences |
| **Player Quote** | "I love Quest for Glory. I'm absolutely crazy about the series. The greatest thing...is the well-done connection between RPG and the classic Sierra graphic adventure" — [CyricZ] |
| **Design Note** | "You have until day 7 to defeat the fire elemental. If you don't do it then, the city will be destroyed at the start of day 7, ending your game" — [SAC] |

---

## Puzzle 1: Wizards' Institute of Technocery Entry Test

### Problem

The Magic User must qualify for Wizard status to complete the game. The W.I.T (Wizards' Institute of Technocery) requires passage through four elemental trials—Air, Earth, Water, and Fire—each presenting a unique environmental obstacle that must be solved using specific spell combinations learned earlier at Keapon's Magic Shop.

### Why It Works

This puzzle exemplifies meta-construction: spells purchased days earlier (Detect, Fetch, Trigger, Levitate, Calm, Flame Dart, Force Bolt, Open) only become meaningful when applied sequentially in the correct order. As CyricZ demonstrates: "Cast Detect to see the proper bell, then cast Fetch on that bell to put it on the stand, then cast Trigger on that bell." Each spell's purpose is revealed through gameplay context, not exposition.

The sequential trial structure rewards forward planning. SAC notes: "If you have a few mana pills, say yes. If you have none, say no, buy some, then return and say yes"—the player must resource-manage before attempting passage. Failure isn't fatal but forces backtracking, creating natural difficulty scaling.

### Solution

Pass four sequential elemental trials by casting correct spell combinations on each obstacle to reach the Institute's inner chamber.

### Steps

1. Cast DETECT MAGIC in Shapeir streets; follow magic arrow to hidden entrance (7 PP)
2. Enter and choose Erasmus as sponsor from available wizard portraits
3. **Pre-Test:** Cast DETECT to identify correct bell among three, FETCH it to stand, TRIGGER to ring (7 PP)
4. **Air Trial:** Fetch the spinning staff toward you and LEVITATE above until it passes (7 PP)
5. **Earth Trial:** TRIGGER the stone wall (awakens beast), CALM it twice—once before climbing over, once after (7 PP each = 14 PP total)
6. **Water Trial:** FLAME DART to melt ice hoarfrost, FORCE BOLT center crack repeatedly, OPEN to split halves (7 PP)
7. **Fire Trial:** OPEN door, CALM flames (leaves hole), FETCH door closed, FORCE BOLT to push it onto hole (15 PP)
8. Refuse oath to join as scholar; receive REVERSAL spell as graduation gift (7 PP)

**Pattern Type:** [[Meta-Puzzle Construction]](../puzzles/sequential-construction.md) — tools gathered early enable later puzzle resolution through sequential chaining  
**Also Uses:** [[Class-Specific Ritual]](../puzzles/class-specific-ritual.md) — only Magic Users can access this path; Fighter and Thief must take alternate routes

### Screenshots

![WIT entrance showing Detect Magic arrow pointing to hidden door in alleyway](./qfg2-wit-entrance.png)
![Pre-test room with three bells and stand, one bell glowing after Detect Magic is cast](./qfg2-wit-pretest-bells.png)
![Fire trial showing hole in path after Calm spell, door being fetched to cover it](./qfg2-wit-fire-trial.png)

---

## Puzzle 2: Fire Elemental Capture (Days 4-6)

### Problem

The Fire Elemental appears on Day 5 with a hard deadline: it must be defeated before Day 7 or the city is destroyed. Unlike combatable enemies, Elementals ignore weapons—the player must lure, weaken, and contain it using three specific items acquired in advance. Aziza the Enchantress explains the solution pattern but never gives direct answers, forcing players to deduce connections between her cryptic hints and available inventory.

### Why It Works

This puzzle establishes the game's core temporal mechanic while teaching the elemental capture system. CyricZ breaks down the preparation: "Buy incense from him at the Apothecary. Finally, you need the container, which is in the form of a lamp which you can buy from Tashtari in the Fountain Plaza." The player must actively gather components across separate merchants before the threat materializes.

The solution combines physical interaction (positioning) with timing: "Use incense and move up and into the alley" to lure the elemental, then "put down lamp or drop lamp, and then use water on the Fire Elemental. Boom. Magic Lamp." SAC reinforces this mechanical precision: "If you get more than [one incense], you will be unable to defeat the fire elemental because of a bug"—showing how tightly tuned the solution window is.

### Solution

Lure the Fire Elemental into an alley with incense, weaken it with water damage, then trap it in a brass lamp container.

### Steps

1. Visit Aziza the Enchantress and ask about ELEMENTAL, FIRE ELEMENTAL, CONTAINER, CONTRARY ELEMENT (requires manners)
2. Purchase INCENSE from Harik Attar at Apothecary; bargain price is free with correct negotiation (7 PP)
3. Purchase BRASS LAMP from Tashtari's Brass stand in Fountain Plaza; bargain price 10 dinars (7 PP)
4. On Day 5, USE INCENSE while away from the elemental to draw it toward you
5. Walk into nearby alley before elemental catches up
6. PUT DOWN LAMP or DROP LAMP on ground
7. When elemental is close enough, USE WATER from waterskin multiple times until weakened
8. Elemental absorbs into lamp automatically (20 PP)

**Pattern Type:** [[Multi-Faceted Plan]](../puzzles/multi-faceted-plan.md) — three independent requirements (incense lure, water weakness, lamp container) gathered separately, synthesized at climax  
**Also Uses:** [[Timed Consequence]](../puzzles/timed-consequence.md) — hard deadline of Day 7 creates temporal pressure absent from typical adventure puzzles

### Screenshots

![Fire Elemental dancing in Gate Plaza on Day 5, merchants and stalls burned away](./qfg2-fire-elemental-plaza.png)
![Incense trail leading elemental into alley, brass lamp placed on ground](./qfg2-fire-elemental-lure.png)
![Water being poured on weakened elemental as it absorbs into Magic Lamp container](./qfg2-fire-elemental-capture.png)

---

## Puzzle 3: Julanar the Tree Woman Spirit Restoration

### Problem

A strange tree in the desert resembles a trapped woman in wood form. Aziza knows the story—Julanar was once a healer cursed into this state—but offers no direct solution. The player must discover three "gifts" (Kindness, Magic, Love) and present them to unlock her spirit. Each gift triggers only when its prerequisite action completes: watering blooms flowers, earth knowledge enables recognition of elemental gifts, physical contact opens the final dialogue path.

### Why It Works

Unlike linear fetch puzzles, this ritual requires understanding symbolic actions rather than mechanical object use. CyricZ documents the layered progression: "The first gift is the Gift of Kindness...After which, tell about yourself. The second gift is the Gift of Magic. Give earth to the tree. Now, tell about Earth." SAC adds clarity on timing constraints: "(Note: For the last step, just type the plant woman's name. There is no need to type TELL ABOUT or anything like that)."

The puzzle integrates multiple prior game mechanics: capturing the Earth Elemental earlier provides "earth" as an item, while general storytelling mechanics (TELL ABOUT) gain new purpose. The Fruit of Compassion reward isn't just cosmetic—it's required for crafting the Dispel Potion needed later, creating tight inter-puzzle dependency.

### Solution

Present three symbolic gifts in sequence to restore Julanar's spirit until she yields the Fruit of Compassion from one branch.

### Steps

1. Visit Aziza and ask about TREE after exploring desert; learn backstory without explicit solution (7 PP)
2. Travel east from Shapeir Overlook to locate tree in desert
3. **Gift of Kindness:** GIVE WATER to tree, then TELL ABOUT YOURSELF (7 + 5 = 12 PP total)
4. **Gift of Magic:** GIVE EARTH (Earth Elemental in bag) to tree, then TELL ABOUT EARTH (7 + 5 = 12 PP total)
5. **Gift of Love:** HUG the tree directly (5 PP), then type "JULANAR" as name (triggers final recognition, 5 PP)
6. Tree blooms Flowers automatically; FRUIT OF COMPASSION appears on branch—take it (7 PP)

**Pattern Type:** [[Class-Specific Ritual]](../puzzles/class-specific-ritual.md) — sequential gift-giving ritual with exact action requirements  
**Also Uses:** [[Meta-Puzzle Construction]](../puzzles/sequential-construction.md) — Earth Elemental must be captured in earlier puzzle to have "earth" for gifting

### Screenshots

![Julanar tree in desert before restoration, appearing as gnarled wood with trapped feminine form](./qfg2-julanar-before.png)
![Tree blooming with flowers after all three gifts received, Fruit of Compassion visible on branch](./qfg2-julanar-restored.png)

---

## Other Notable Puzzles

| Puzzle | Pattern Type | Brief Description |
|--------|-------------|-------------------|
| Air Elemental Capture (Days 8-11) | [[Multi-Faceted Plan]](../puzzles/multi-faceted-plan.md) | Levitate above whirlwind, drop earth in center to slow, capture with bellows |
| Earth Elemental Capture (Days 12-14) | [[Timed Consequence]](../puzzles/timed-consequence.md) | Weaken with Flame Dart or soulforge sword, gather dust into cloth bag before Day 14 |
| Water Elemental Capture (Days 14-16) | [[Multi-Faceted Plan]](../puzzles/multi-faceted-plan.md) | Drop waterskin at fountain base, use bellows to blow elemental into container |
| Dervish's Five Ws Puzzle | [[Symbol Code Translation]](../puzzles/symbol-code-translation.md) | "Whatever, whenever, wherewith, wherever, whereby" riddle requires collecting specific objects across desert |
| Caged Beast Dispel Potion | [[Meta-Puzzle Construction]](../puzzles/sequential-construction.md) | Combine Griffin Feather + Fruit of Compassion + Beast Hair at Apothecary to cure Al Scurva |
| Suleiman the Djinn's Ring Tomb | [[Observation Replay]](../puzzles/observation-replay.md) | Type "SULEIMAN" at door after seeing name in tomb entrance; later use ring for wishes |
| Katta Pin Dungeon Escape (Day 29) | [[Multi-Faceted Plan]](../puzzles/multi-faceted-plan.md) | Show Sapphire Pin gathered in Shapeir to Sharaf the Katta to activate secret passage |

---

## References

**Primary Sources:**

[CyricZ]: https://archive.org/web/20190509132120/https://gamefaqs.gamespot.com/pc/562671-quest-for-glory-ii-trial-by-fire/faqs/13268  
CyricZ's FAQ/Walkthrough, Version 1.2 (March 30, 2005). Archived from GameFAQs via Internet Archive (May 9, 2019). Original URL: https://gamefaqs.gamespot.com/pc/562671-quest-for-glory-ii-trial-by-fire/faqs/13268

[SAC]: https://archive.org/web/20190511092446/https://gamefaqs.gamespot.com/pc/562671-quest-for-glory-ii-trial-by-fire/faqs/9441  
SAC's FAQ/Walkthrough, Version 2.7 (August 9, 2001). Archived from GameFAQs via Internet Archive (May 11, 2019). Original URL: https://gamefaqs.gamespot.com/pc/562671-quest-for-glory-ii-trial-by-fire/faqs/9441

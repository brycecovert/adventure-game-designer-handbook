# Information Brokerage Chain

## Mechanic Definition

The game world contains an implicit exchange network where NPCs trade items, services, and information—but the player must discover who trades what, and navigate the dependencies between trades. Nothing is free; everything requires something in return, often from a different source.

The player acts as a broker: facilitating exchanges between parties who cannot or will not directly interact.

## Information Architecture

**Conveyance Method**: Demand discovery through interaction
- NPCs state what they want when asked or offered something
- The player must discover the network by attempting trades
- Information about what someone wants is often obtained from a third party

**Player Action Pattern**:
1. Talk to NPC → learn what they want/offer
2. Determine if player has it OR knows someone who does
3. If not, find that person and learn their wants
4. Trace chain until player can fulfill a start-point
5. Execute trades in sequence → acquire target item/knowledge

**Core Mechanic**: The puzzle is mapping an implicit dependency graph. No NPC tells you the full network—you discover it through incremental interaction.

## Design Rationale

- Creates a "living world" feel—NPCs have relationships beyond serving the player
- Rewards exploration—finding *who* has what matters as much as *where* it is
- Generates multiple valid paths—different items can satisfy the same demand
- Integrates narrative—trades tell stories about the world's economics

## Why It's Effective

The satisfaction comes from the "mapping moment"—realizing how everything connects. This is distinct from linear item acquisition because the player must understand the network, not just follow steps.

## Mechanic Variations

| Variation | Trade Discovery | Network Complexity |
|-----------|-----------------|-------------------|
| Linear | Each NPC points to next | Simple chain (A→B→C) |
| Branching | Multiple NPCs can provide same item | Tree structure |
| Cyclic | Items flow in a circle | Must bootstrap from nothing |
| Hidden | Some trades only appear after certain events | Progressive revelation |

## Generic Example Structure

**Goal**: Acquire [Item] from [NPC Final]

**Information Flow**:
- NPC Final: "I'll give you [Item] for [Something]. Talk to [NPC A] about that."
- NPC A: "I need [Thing 1]. The only one who has it is [NPC B]."
- NPC B: "I'll trade [Thing 1] for [Thing 2]. Try the [Location]."
- Player finds [Thing 2] through exploration
- Returns to NPC B → gets [Thing 1]
- Returns to NPC A → gets [Something]
- Returns to NPC Final → gets [Item]

**The puzzle**: Mapping the trade dependency graph through incremental discovery.

## Adventure Game Implementation

The limited action set drives the mechanic:
- TALK to NPCs to learn what they want/offer
- GIVE/USE items on NPCs to attempt trades
- The network is discovered through failed attempts ("I don't want that")
- Player must remember what each NPC said—external note-taking often required

## Game Examples

### Monkey Island I: Prisoner Exchange Chain

**Network Structure**:
```
Player → [Breath Mints] → Otis (Prisoner) 
Otis → [Gopher Repellant] → Player  
Player → [Gopher Repellant] → Otis
Otis → [Cake with hidden File] → Player
Player → [File] → Escape rope underwater
```

**Discovery Process**:
1. Prison has "chronic halitosis" problem → player hypothesizes: what cures bad breath?
2. Shop sells Breath Mints → acquire for 1 Piece of Eight
3. Give mints to Otis → he trades Gopher Repellant (seemingly unrelated)
4. Player must infer repellant's purpose through word association ("gophers" + "piranhas guard mansion")
5. Use repellant on poodles earlier OR give back to Otis → he gives Cake containing File

**Why It's Brokerage**: Player doesn't directly buy the File from anyone; they facilitate a multi-step exchange chain by satisfying each NPC's needs in sequence.

### Monkey Island I: Meat/Poodle/Governor Mansion Chain

**Network Structure** (simplified):
```
Butcher → [Meat] → Player  
Player + Yellow Petal → [Meat with Condiment]  
[Meat with Condiment] → Piranha Poodles → Daze them  
Unblocked door → Access Governor's Mansion
```

**Discovery Process**:
1. Cook mentions "piranhas won't let me pass but they LOVE meat"
2. Player has raw meat from butcher earlier (seemingly useless at that time)
3. Yellow petal found on fork path → player experiments: What if meat + condiment = better bait?
4. Combination dazes poodles long enough to bypass

**Why It's Brokerage**: Requires understanding NPC "tastes" as part of the trade network—poodles won't accept raw meat but will for prepared dish. Information flows through overheard dialogue about character preferences.

### Monkey Island II: Map Piece Acquisition (Meta Network)

Each map piece requires completing a different sub-trade chain with the Antiques Dealer as hub:
- **Rapp Scallion**: Need key to Weenie Hut → need reanimated corpse → need ashes + Ash-2-Life recipe from library → voodoo lady forgot recipe → find book → return
- **Young Lindy**: Trade monkey head → locate shipwreck coordinates from library → charter Kate's boat (cost: 6000 gold) → earn money through spitting contest scam
- **Mister Rogers**: Need to bypass waterfall → need monkey to operate pump → need banana + metronome to distract parrot → enter tunnel

All branches converge at Wally the cartographer who assembles the final map.

### Indiana Jones: Fate of Atlantis - Algiers Trading Network (IJOA)

**Problem**: Indy and Sophia need to reach the desert dig site by camel, but the local contact Omar demands proof of authentication (the sunstone). Even with the sunstone, they must acquire a balloon ticket for the final leg of journey. The trade network spreads across multiple NPCs with interdependent wants/needs.

<small>Source: walkthroughking_ashley_walkthrough.html — "Let Sophia talk to Costa and then try it yourself. Costa seems to want a rare artifact in exchange for information..."</small>

**Primary Goal Chain**:
```
Balloon Ticket ← Beggars (squab-on-a-stick) ← Grocer (items via trade network)
```

<small>Source: walkthroughking_ashley_walkthrough.html — "You'll need to start trading with Omar and the grocer (you'll eventually get the squab-on-a-stick). Give the squab to the beggar in exchange for balloon tickets..."</small>

**Network Mapping Process**:
1. **Initial Contact - Beggars**: Talk to beggars → they want food (squab-on-a-stick) → offer balloon tickets in return
2. **Grocer Dependency**: Talk to grocer → wants payment for squab → player lacks currency/items initially
3. **Omar Authentication**: Sunstone from Monte Carlo seance required before Omar will cooperate with trade
4. **Trade Initiation**: After showing sunstone, begin trading loop between grocer/Omar/beggars

**Key Network Nodes**:
| NPC | Wants | Offers |
|-----|-------|--------|
| Beggar | Squab-on-a-stick | Balloon tickets |
| Grocer | Various goods (player inventory) | Squab-on-a-stick |
| Omar | Sunstone (authentication) | Trade network access, map via bamboo pole |
| Knife-thrower | Nothing explicit | Demonstrates skill; souvenir knife obtainable if Sophia volunteers and is pushed forward |

<small>Source: walkthroughking_ashley_walkthrough.html — "Talk to the beggar, and then the knife-thrower. Try to get Sophia to volunteer, and when she walks close to him, push her forward (you'll get a souvenir knife). Talk to the grocer, but you'll have to come back for that squab."</small>

**Why It's Information Brokerage**: Player doesn't receive explicit trade menu or item list. Must discover through incremental TALK/failed GIVE attempts:
- What each NPC wants → learned only when directly asked/offered something
- Trade network structure (who connects to whom) → discovered by attempting trades and hearing responses  
- Bootstrap solution (sunstone from separate Monte Carlo puzzle provides initial credential)

**Distinction from Multi-Faceted Plan**: While multiple items are gathered, here the focus is on *trade relationships* rather than independent requirement discovery. Each NPC's want must be satisfied to gain access to their offering—it's a dependency graph, not parallel gathering. The network structure itself (who trades with whom) IS the puzzle, not just item collection.

### King's Quest III: General Store Supply Chain

**Problem**: To survive Manannan's house and craft essential spells, Gwydion must purchase specific ingredients from the general store at Llewdor township. However, these items (Salt, Fish Oil, Lard, Empty Pouch) represent prerequisites for downstream spell-crafting puzzles rather than final solutions themselves—the player must understand what each stores will enable.

<small>Source: andrew-schulz-walkthrough.md, lines 30-49 — Lists STORE purchases: BUY FISH OIL, BUY LARD, BUY SALT, BUY EMPTY POUCH; Also lists spell requirements needing these items</small>

<small>Source: gamefaqs_9303.txt, lines 175-178 — "PET DOG to get the dog hair, BUY FISH OIL, BUY LARD, BUY SALT, and BUY EMPTY POUCH."</small>

**Simple Purchase Network**:
| Store Item | Cost | Enables Which Spell/Puzzle |
|------------|------|---------------------------|
| Salt | Gold coins (exact amount varies) | "Listen to Animals" spell ingredient |
| Fish Oil | Gold coins | Cat Cookie spell component |
| Lard | Gold coins → Empty Jar after use | Invisibility Ointment BASE ingredient |
| Empty Pouch | Gold coins | Unknown/Optional purpose (possibly collectable variety) |

**Gold Coins Acquisition Chain**:
```
PHASE 1 - INITIAL CURRENCY:
- Start with money gifted by Manannan at game beginning (amount varies)
- Alternatively, find gold in bandits' treehouse AFTER stealing their empty purse first

PHASE 2 - BANDIT PURSE THEFT EXCHANGE:
1. Approach acorn tree where bandits camp
2. Give gold coins to sleeping bandit → Empty Purse obtained (safe transport deal)
3. Later: Climb into treehouse, wait for bandit to sleep
4. Steal empty purse from treehouse interior
5. Wait for refill cycle or find alternative source

PHASE 3 - STORE PURCHASES COMPLETION:
- Return to general store with sufficient funds
- Purchase all required ingredients
- Also: PET DOG during visit → Dog Hair obtained (free, non-purchase item)
```

**Why It's Information Brokerage**:
1. **Trade Dependency Discovery**: Player must learn through spellbook consultation or experimentation what each stored ingredient enables—there's no in-game "item use guide"
2. **Multi-Step Exchange Required**: Empty Purse → Treehouse Heist → Gold Coins refill (if needed) → Purchase specific spells ingredients
3. **Free Item Embedded in Commerce**: Dog Hair requires neither purchase nor spell—obtained ONLY during store visit through PET action

**Distinction from Simple Fetch Quest**: The puzzle isn't "go buy these 4 items"—it's understanding *why* each item matters and that some spell branches become impossible without completing this exchange network first. Salt enables animal communication (optional points but aids treasure finding). Lard is the ONLY base for Invisibility Ointment (required for dragon fight). Missing either creates dead ends later.

**Simplified Network Comparison to Classic Brokerage**: Unlike Indy2's multi-NPC web or MI1's prisoner exchange chain, this is a SINGLE-VENDOR dependency chain—but still requires understanding the network structure: Store → Spells → Story Progression. Player discovers through spellbook reading that certain ingredients MUST come from store (can't craft alternatives), creating mandatory trade node in progression graph.

---

### The Longest Journey: Map Merchant Delivery Network (Chapter 2 - Through the Looking Glass)

**Problem**: After meeting Tobias in Marcuria temple, player learns about Brian Westhouse ("The Rolling Man"). To progress to finding him, must work for map merchant by delivering maps to various NPCs across multiple locations. Each delivery requires getting signature—but some recipients have SPECIAL REQUIREMENTS before signing.

<strong>Source: 02_outrider_complete_walkthrough.txt, lines 145-180 — "Ask him about a job and eventually he'll hire you...The first assignment is to deliver a map to Horatio Nebevay, the captain of the White Dragon...You'll learn that he won't sign it because of his religious beliefs. He'll tell you that in order for him to sign, you'll have to play music as he's doing it...Give him the list again and April will play for him."</strong>

<strong>Source: 03_walkthroughking_ashley_bennett.html, lines 62-69 — "Accept the job as the delivery person, and you will receive a list and a map. Head into the city, north from the stalls, then head out through the city gates and go right to the docks."</strong>

<strong>Source: 04_gameboomers_k_daleng.txt, lines 77-83 — "Deliver the map to Captain Nebeve at the boat by the docks and try to get him to sign. Go back to the city gate and buy a flute from the stand. Go back to Nebeve and give him your list again."</strong>

```
NETWORK STRUCTURE (Multi-Tier Dependencies):

TIER 1 - Map Merchant → Delivery List & First Map:
→ Talk to map merchant after Dolmari incident fires his hired help
→ Offer services → Receive first delivery assignment + map
→ OUTPUT: Physical delivery list with signature requirement


TIER 2 - Captain Nebevay (First Delivery - Special Requirement):

PROBLEM DISCOVERY THROUGH DIALOGUE:
Step A → Navigate to docks via city gates, find White Dragon ship at pier end
         
Step B → Give map AND delivery list to captain
         - Initial result: CAPTAIN REFUSES TO SIGN
         
Step C → Learn refusal reason through dialogue inquiry:
         "He won't sign it because of his religious beliefs"  
         "Music distracts the 'Mo-Jaal' [evil spirits] while writing"
         
TRADE SOLUTION CHAIN:
Step D → Return to city gates → Find musical instrument merchant stall (left side)
         
Step E → Trade AAREN coin to merchant for FLUTE
         - Note: Aaren obtained earlier in separate puzzle sequence
         
Step F → Return to Captain Nebevay with flute in inventory
         
Step G → Give delivery list AGAIN while having flute equipped/available
         - April automatically plays music during signature process
         - Signature granted → First delivery complete


TIER 3 - Brian Westhouse / The Rolling Man (Second Delivery):

Location Discovery:
Step H → Return to map merchant with signed first delivery list
         
Step I → Receive second delivery assignment + directions to bungalow
         - Complex multi-directional walking instructions given
         - Game helps by marking icon on world map automatically

Meeting Westhouse:
Step J → Navigate to bungalow using provided directions
         <small>Source: 02_outrider_complete_walkthrough.txt, lines 174-183 — "When you arrive, talk to Brian. Mention that you have a delivery and April will give him his map. Talk to him for a while...give Brian the delivery list"</small>
         
Step K → Give map AND signed list to Westhouse
         - He signs without special requirement (unlike captain)
          
Step L → Attempt to leave → Brian "remembers" something critical
         - REWARD: Gifts POCKET WATCH before April departs

NETWORK COMPLETION BENEFIT:
Pocket watch + pushpin (from note in Chapter 1) = Shift creation
→ Enables reality-crossing ability: Stark ↔ Arcadia


TRADE GRAPH REPRESENTATION:

Player Start
    ↓ [offer work]
Map Merchant → First Map + Delivery List
    ↓ [deliver to Captain]
Captain Nebevay ← REFUSAL ← (no music available)
    ↓ [learn requirement: music needed]
Music Merchant → Aaren Coin traded for Flute
    ↓ [return with flute]
Captain Nebevay → Signature granted
    ↓ [return signed list to Map Merchant]
Map Merchant → Second map + directions
    ↓ [navigate using directions]
Brian Westhouse → Signature + Pocket Watch gift


WHY IT'S INFORMATION BROKERAGE:

1. **Implicit Network Discovery**: No NPC provides full network map. Player discovers:
   - That captain needs music ONLY after failed delivery attempt + dialogue inquiry
   - That flute requires Aaren currency (learned from merchant when attempting purchase)
   - That second delivery unlocks critical plot advancement (pocket watch gift)

2. **Multi-Step Exchange Chains**: Cannot complete Captain delivery without:
   - Learning musical requirement (info from failed attempt)
   - Acquiring trading currency from elsewhere (aaren from different puzzle)
   - Finding correct vendor (instrument stall location not obvious)

3. **Converging Dependencies**: Multiple separate items must come together:
   - Aaren coin obtained independently in prior puzzle
   - Delivery list from map merchant
   - Flute purchased through trade
   → All required for single signature outcome


DISTINCTION FROM META-PUZZLE CONSTRUCTION:
While sequential steps exist within each delivery, the OVERALL structure is parallel network mapping. First AND second deliveries are independent requirements both feeding back to different plot branches. Could theoretically do Westhouse first (if directions known), then Captain—parallel gathering with separate sub-puzzles.


CROSS-REALM SIGNIFICANCE:
This puzzle operates EXCLUSIVELY in Arcadia dimension, using fantasy-world NPC interactions contrasting with Stark's tech-based logic. Same Information Brokerage framework but different aesthetic realization (merchant stalls vs vending machines/trade terminals). Pocket watch reward bridges both realms, enabling dimensional travel mechanic that drives rest of game.
```

---

### King's Quest III: Bandit Treehouse Currency Loop

**Problem**: To maximize gold coin supply for general store visits, player can exploit the bandits' purse replenishment cycle—a time-based exchange where initial payment yields reusable resource container. This represents a mini-brokerage economy with temporal dependency.

<small>Source: andrew-schulz-walkthrough.md, lines 82-87 — "GRAB HOLE and a rope ladder will come down... when the bandit is sleeping GET PURSE and get out of there."</small>

<small>Source: gamefaqs_9303.txt, lines 213-216 — When the bandit is sleeping GET PURSE</small>

**Exchange Cycle**:
```
ATTEMPT 1 (Setup):
- Give initial gold coins to bandits when asked about "safe transport"
- Receive Empty Purse as receipt/ticket for "protection service"
- Escape before robbery attempt occurs

ATTEMPT 2+ (Exploitation Loop):
- Return to acorn tree, enter hole → rope ladder drops
- Climb to treehouse interior (save point recommended)
- Wait for bandit character to fall asleep (timing varies)
- Steal PURSE (now contains coins again—refilled by game logic)
- Exit treehouse quickly before bandit wakes

FAILURE STATES:
- Attempting to enter when bandit awake = knocked unconscious, lose items/time
- Climb attempt during descent = fall damage
- Missing sleep window = must re-enter or reload save
```

**Why It's Brokerage with Timing Element**: This creates a renewable resource through understanding the exchange cycle: initial trade → receive container → wait cycle completes → recover currency. Unlike pure Information Brokerage where NPCs explicitly state wants, here player must DISCOVER through experimentation that:
1. Bandits can be stolen FROM after being paid
2. Purse REFILLS when taken during sleep (not permanent theft)
3. Timing is everything—wake up = game over for this attempt

**Connection to Main Supply Chain**: This loop enables unlimited general store visits without restarting, which may be necessary if player needs multiple spell crafting attempts or wants maximum point collection (buying Empty Pouch appears optional but scores points).

**Problem**: Player discovers multiple items throughout Chapters 1-3 that have trade value, but the mouse NPC at "Rare Curiosities" only opens his shop after a prerequisite exchange is completed. This creates a multi-visit brokerage chain spanning game chapters.

<small>Source: walkthroughking_kq7.html:67,83</small>

**Network Structure**:
```
CHAPT ER 1 (Initial Access):
Player → [Glasses] → Mouse (blind, can't trade)
Mouse → [Turquoise Bead] → Player (for gourd seed)

CHAPTER 3 (Secondary Access):  
Player → [Book] → Mouse (from Faux Shop chain)
Mouse → [Crook] → Player (for moon retrieval puzzle)
```

**Discovery Process**:
1. **First Visit - Prerequisite Help**: Knock on "Rare Curiosities" door → mouse appears visually impaired, cannot see or trade effectively
2. Player must gather glasses from nearby rabbit hole after using hunting horn twice
3. Return glasses to mouse → shop functionality unlocked; mouse can now evaluate and trade items
4. **Trade 1 (Chapter 1)**: Gourd seed obtained from earlier plant puzzle → turquoise bead required for next statue bowl puzzle
5. **Trade 2 (Chapter 3)**: After completing Faux Shop exchange chain, player has book → trades for crook needed for moon retrieval

**Why It's Information Brokerage**: The mouse NPC represents a central trade hub with multiple incoming items accepted across different chapters. Key brokerage elements:
- Initial access requires solving the NPC's sub-problem (blindness/glasses) BEFORE trading available
- Different items from completely separate puzzle chains have value here (gourd seed from Chapter 1 desert, book from Chapter 3 Faux Shop)
- Mouse functions as trade accumulator: accepts unrelated items because he independently values each one
- Without this hub, several other puzzles become blocked (turquoise bead needed for statue, crook needed for moon)

**Multi-Passage Design**: Unlike single-completion brokerages, this NPC can be revisited multiple times with different trade offers. The player must remember the mouse exists as a potential destination when acquiring items throughout chapters 1-3. This cross-chapter availability creates a "bank-like" brokerage that players return to after solving other puzzle chains.

---

### King's Quest VII: Bird Rescue and China Shop Exchange (KQVII)

**Problem**: Fernando at the China Shop has a missing pet bird. Players must locate and retrieve the bird to receive a trade reward essential for later puzzles.

<small>Source: walkthroughking_kq7.html:80</small>

**Simple Trade Chain**:
```
Fernando → [Missing Bird Information] → Player
Player → [Bird from Garden Cage] → Fernando
Fernando → [Masquerade Mask] → Player (enables Town Hall entry)
```

**Discovery Flow**:
1. Enter China Shop, talk to Fernando → he mentions his bird is lost (information about what's needed)
2. Leave shop, explore town → find covered birdcage in garden area
3. Remove cage cover, open it, collect bird inside
4. Return to Fernando with bird → he rewards player with decorative mask
5. Mask becomes required inventory item for Town Hall masquerade entrance later same chapter

**Why It's Information Brokerage**: Classic two-party exchange where NPC explicitly states their need, and satisfying that need produces game-progression item (mask). Unlike the mouse's multi-trade hub, this is a single-completion exchange but demonstrates the core mechanic: NPC with specific want → player discovers solution through exploration → return completes trade → reward enables progression.

**Connection to Chapter Flow**: The mask from this trade becomes essential for "Sensory Exploitation" entry puzzle at Town Hall—demonstrating how brokerage trades often feed into different puzzle types downstream.

---

### King's Quest VII: Graveyard Child/Cadaver Trade Loop (KQVII)

**Problem**: Children playing with jack-o-lantern entertainment want entertainment; Dr. Cadaver needs body parts for his collection. Player brokers between these two parties to obtain a rat needed back by the gravedigger.

<small>Source: walkthroughking_kq7.html:85</small>

**Three-Node Trade Loop**:
```
DR. CADAVER (Taker of bones, gives specimens):
Player → [Backbone from jack-o-lantern] → Dr. Cadaver  
Dr. Cadaver → [Weird Pet Specimen] → Player

CHILDREN AT JACK-O-LANTERN (Want entertainment, give items):
Player + [Weird Pet] → Show to children → they are impressed
Children → [Gravedigger's Rat] → Player (via elevator gift)

GRAVEDIGGER (Wants his rat back, gives functional item):
Player → [His Lost Rat] → Gravedigger  
Gravedigger → [Horn for Tomb Entrance] → Player
```

**Chain Execution**:
1. Climb rope into oversized jack-o-lantern attraction → pick up backbone from floor (also collect "foot in bag" from coffin, though not needed for this chain)
2. Visit nearby Dr. Cadaver's house, offer backbone → he trades preserved pet specimen in exchange
3. Return to children at jack-o-lantern, display the weird pet → they watch with delight
4. Place pet on small elevator mechanism attached to attraction → receive gravedigger's escaped rat as thanks
5. Locate gravedigger nearby (north from children's area), give him back his lost rat
6. He provides horn item needed for Chapter 4 tomb entrance puzzle

**Why It's Information Brokerage**: Three distinct NPCs with different valuation systems: Cadaver wants bones and gives specimens; children want entertainment and give gifts; gravedigger wants service (rat retrieval) and gives utility items. Player acts as broker connecting these independent desires into functional chain. Without understanding all three nodes, the horn cannot be obtained for tomb access.

**Distinction from Linear Brokerage**: Unlike "A wants X which B provides" chains, here player must:
- Obtain physical item (backbone) before ANY trade possible
- Understand that Cadaver's specimen has entertainment value to children
- Recognize that children's gift is actually gravedigger's lost property

This creates a circular dependency rather than simple linear path—each party's want connects to another party's capacity, not just player's initial inventory.

---

### King's Quest VII: Graveyard Child/Cadaver Trade Loop (KQVII)

<small>Source: andrew-schulz-walkthrough.md, lines 82-87 — "GRAB HOLE and a rope ladder will come down... when the bandit is sleeping GET PURSE and get out of there."</small>

<small>Source: gamefaqs_9303.txt, lines 213-216 — When the bandit is sleeping GET PURSE</small>

**Exchange Cycle**:
```
ATTEMPT 1 (Setup):
- Give initial gold coins to bandits when asked about "safe transport"
- Receive Empty Purse as receipt/ticket for "protection service"
- Escape before robbery attempt occurs

ATTEMPT 2+ (Exploitation Loop):
- Return to acorn tree, enter hole → rope ladder drops
- Climb to treehouse interior (save point recommended)
- Wait for bandit character to fall asleep (timing varies)
- Steal PURSE (now contains coins again—refilled by game logic)
- Exit treehouse quickly before bandit wakes

FAILURE STATES:
- Attempting to enter when bandit awake = knocked unconscious, lose items/time
- Climb attempt during descent = fall damage
- Missing sleep window = must re-enter or reload save
```

**Why It's Brokerage with Timing Element**: This creates a renewable resource through understanding the exchange cycle: initial trade → receive container → wait cycle completes → recover currency. Unlike pure Information Brokerage where NPCs explicitly state wants, here player must DISCOVER through experimentation that:
1. Bandits can be stolen FROM after being paid
2. Purse REFILLS when taken during sleep (not permanent theft)
3. Timing is everything—wake up = game over for this attempt

**Connection to Main Supply Chain**: This loop enables unlimited general store visits without restarting, which may be necessary if player needs multiple spell crafting attempts or wants maximum point collection (buying Empty Pouch appears optional but scores points).

---

### Indiana Jones: Fate of Atlantis - Eel/Bead for Information Trade (IJOA)

**Problem**: After visiting Iceland cave and Tikal pyramid, Indy has recovered an orichalcum bead from the eel trapped in ice at Iceland. Costa, a contact person in The Azores, claims he has information about Plato's Lost Dialogue location but refuses to share without receiving "a rare artifact" in exchange.

<small>Source: walkthroughking_ashley_walkthrough.html, line 71 — "Costa seems to want a rare artifact in exchange for information, so head back to Iceland. Put the orichalcum bead in the eel's head to free it from the ice. Go back and give the eel to Costa, for some info about the Lost Dialogue."</small>

**Trade Chain**:
```
Orichalcum Bead (Tikal) + Eel Trapped in Ice (Iceland) → Free Eel with Bead → Give Live Eel to Costa → Receive Information (Library location of Lost Dialogue)
```

**Why It's Information Brokerage**:
1. **Implicit Want Discovery**: Costa states he wants "a rare artifact" without specifying—which requires player to experiment or make educated guess based on prior context
2. **Item Transformation Required**: The orichalcum bead alone isn't acceptable. Must first use bead TO FREE the eel (bead placed in eel's frozen head), THEN give the freed EEL itself to Costa
3. **Information-as-Currency**: Trade outcome is LOCATIONAL INFORMATION, not physical item. This information unlocks next major puzzle segment (library exploration for Lost Dialogue)

<small>Source: gamefaqs_darth_maul_walkthrough.html, lines 620-628 — "Trade this eel to Costa and he'll give you the location of Plato's Lost Dialogue."</small>

**Network Structure**:
| NPC | Wants | Offers |
|-----|-------|--------|
| Costa | Rare artifact (specifically: live orichalcum-free'd eel) | Location information for Lost Dialogue (Barnett College Library) |

This is a simple two-node network but demonstrates the core mechanic: Player must understand what constitutes "rare artifact" in this context through failed attempts or careful examination of inventory item descriptions.

---

### SpaceQuest II: Monkey Distraction and Cartridge Acquisition (SQ2)

**Problem**: In the Xenon Orbital Station, a scientist needs the Astral Body data cartridge but is physically unable to retrieve it due to being trapped or incapacitated. The player must trade an action or item to trigger the retrieval mechanism.

<small>Source: gamerwalkthroughs.html - SpaceQuest II walkthrough</small>

**Trade Chain**:
```
Player → [Talk to Scientist / Provide Assistance] → Scientist Activates Cart Mechanism
Scientist → [Astral Body Cartridge Dispensed] → Player
Player → [Cartridge Inserted in Keronian Computer] → Star Generator Code (6858)
```

**Discovery Flow**:
1. Enter Data Archive room on Arcada/Xenon station
2. Scientist enters, collapses or is injured
3. Talk to scientist → he mentions "astral body" before dying/fading
4. Use terminal interface with command "astral body" → cartridge dispensed
5. Retrieve cartridge for later use on Keronian settlement computer

**Why It's Information Brokerage**: The scientist cannot directly give the item; player must understand the trade (assistance/inquiry for information which enables machine interaction). The "exchange" is conversational—player provides the request that triggers automated delivery system.

---

### SpaceQuest 1: Data Cartridge Purchase Chain (SQ1)

**Problem**: The dying scientist on Arcada mentions "astral body" as the critical cartridge needed to understand the Star Generator. Player must navigate the data archive's retrieval system to obtain it.

<small>Source: gamer_walkthroughs_sq1_walkthrough.html, lines 552-554 — "'Talk to man' and he will tell you what cartridge you need to retrieve. Move closer to the computer and type 'Look screen' when it asks you for the name of they cartridge type 'Astral Body'."</small>

<small>Source: cheatbook_walkthrough.html, lines 160-165 — "= Go to the console and use it (Command LOOK SCREEN). Type for title 'ASTRAL BODY'. The console will pick up the desired cartridge. Get the cartridge."</small>

**Simple Exchange Network**:
```
Player → [Talk to Dying Scientist] → Scientist Provides Cartridge Name
Player → [Type "astral body" at console] → Robot Dispenses Cartridge  
Player → [Take Cartridge] → Critical Item Acquired (worth 5 points)
```

**Discovery Flow**:
1. Exit broom closet, navigate west to data archive room (contains bookshelf and terminal)
2. Wait for scientist to enter—he's injured but functional briefly
3. **Talk to scientist** → he delivers dying message: ship is attacked, "Star Generator in danger"
4. Scientist weakly mentions "**astral body**" as the required cartridge name
5. Scientist collapses/dies after this information transfer
6. Player approaches console terminal at center of room
7. **Look screen** → terminal activates, asks for cartridge title
8. Input **"astral body"** (exactly as scientist mentioned) → robot arm retrieves from shelves
9. Cartridge dispensed into pickup slot
10. **Take cartridge** → item acquired, worth 5 points

**Why It's Information Brokerage**:
1. **Information-for-Action Exchange**: Scientist cannot PHYSICALLY give cartridge—he can only provide the NAME that enables retrieval
2. **Single-Vendor Dependency**: The console terminal is the ONLY source; no alternate locations or methods to obtain this specific cartridge
3. **Named Requirement Precision**: Must type EXACT name ("astral body")—fuzzy matching fails, demonstrating strict trade requirement

**Critical Path Significance**: This cartridge becomes ESSENTIAL in Chapter 2: After crash-landing on Kerona and gaining access to underground alien settlement, player must insert this cartridge into Keronian computer. The data reveals Star Generator self-destruct code (6858) required for game finale without it, impossible to complete game.

**Distinction from Simple Fetch**: Not just "go get item"—player receives a TRIGGER STRING ("astral body") from NPC that MUST be replicated exactly at different location/terminal. This creates two-node chain: NPC information source → machine interface execution. Classic brokerage pattern where one party provides the KEYWORD, another party (machine) provides the ITEM upon verification of that keyword.

---

## Related Types

- **Multi-Faceted Plan**: Both involve multiple requirements, but MFP is about parallel discovery (ingredient A AND B AND C) while Brokerage emphasizes chained dependencies (Item A gets you Thing B which trades for Target)
- **Pattern Learning/Knowledge Transfer**: KT teaches a reusable *system*; Brokerage is one-off network mapping per puzzle instance

### SpaceQuest 1: Bar Conversation Overhear for Sector Location (SQ1)

**Problem**: After escaping to Kerona and traveling via skimmer to Ulence Flats settlement, Roger needs to locate the Deltaur mothership. The bar contains drunk patrons who will reveal the location, but information unlocks only after sustained patronage—buying multiple beers creates social conditions for the critical intel exchange.

<small>Source: gamer_walkthroughs_sq1_walkthrough.html, lines 588-590</small>

**Information Brokerage Chain**:
```
PHASE 1 - SETUP (Economic Preparation):
Location: Ulence Flats bar interior (after skimmer trade for jetpack + money)

Player must first have sufficient capital:
- Play slot machine arcade game to accumulate 250+ buckazoids
- Walkthrough emphasizes: "Bet $3 at a time and save your game when you get a big win"
- Insufficient funds = cannot complete beer purchase sequence


PHASE 2 - BROKERAGE SEQUENCE (Incremental Information Unlock):
Location: Right side of bar, where barman NPC appears periodically

Step 1 → Approach barman when he appears at counter  
Step 2 → Type "buy beer" → transaction initiated
Step 3 → Type "drink beer" → consumption completes interaction cycle

CRITICAL LOOP: The first few purchases reveal NOTHING or only trivial chatter.
Player must recognize pattern: sustained purchase = eventual intel payoff.

Step 4-6 → Repeat buy/drink cycle multiple times (walkthrough: "Continue buying and drinking beer")

Step 7 → AFTER SEVERAL PURCHASES: Barman/patrons begin discussing Deltaur location
        Overheard dialogue reveals: "Deltaur in sector HH"
        
Step 8 → Information acquired, no longer need to purchase more


PHASE 3 - INFORMATION DEPLOYMENT (Deferred Application):
Later at ship with navigation droid loaded on board:
- Droid asks "What sector do you want to head for?"
- Type "HH" (memorized from bar conversation) → Deltaur coordinates accepted
- Ship navigates automatically to target location


WHY IT'S INFORMATION BROKERAGE:

INFORMATION-FOR-CURRENCY EXCHANGE STRUCTURE:
Player explicitly trades buckazoids (currency obtained through separate arcade puzzle) FOR navigational coordinates. The "vendor" here is the bar ecosystem—specific dialogue only becomes accessible after economic threshold met.

MULTI-NODE CHAIN EVIDENT:
1. Slot machine → generates buckazoids (currency acquisition via minigame)
2. Bar purchases → spend currency on beers (payment mechanism)  
3. Overheard conversation → information released after payment threshold
4. Droid navigation → information deployment at different location/time

This creates FOUR-NODE brokerage: Arcade→Bar→Dialogue→Droid, with each step transforming the asset (time effort → money → social access → intelligence data → ship destination capability).

TRICK ASPECT: The exact purchase count isn't specified—player must recognize pattern through repeated interaction. This differs from direct "talk to NPC once for info" puzzles because information gates require ECONOMIC ENGAGEMENT. Player synthesizes: "buying more beer = better conversation" from environmental feedback (trivial chatter gradually becomes substantive intel).


DISTINCTION FROM SIMPLE GATHERING:
The sector HH location isn't discoverable through EXAMINE or LOOK commands on bar environment. It's ONLY available through the economic transaction relationship with bar NPCs. This makes it Information Brokerage rather than passive discovery—player must PAY (via buckazoids) for information access.

---

### Broken Sword: Shadow of the Templars - Irish Pub Intelligence Network (Chapter 2)

**Problem**: Need information about Marquet and the package from evasive NPCs at MacDevitt's Bar. No single NPC will reveal complete information—player must navigate social trade network where intelligence flows through mutual benefit exchanges.

<small>Source: broken-sword-1/4_agh_peter_christiansen_walkthrough.html, lines 265-276</small>
<small>Source: broken-sword-1/1_walkthroughking_broken_sword.html, lines 94-98</small>

**Trade Network Structure**:
```
NPC DESIRES / OFFERINGS MAP:

| NPC              | Wants                        | Offers                    |
|------------------|------------------------------|---------------------------|
| Irish Pub Owner  | Conversation/attention       | Marquet sighting info     |
| Female Customer  | Entertainment/flirtation     | Package destination hints |
| Male Patrons     | Friendly chat                | Corroborating details     |

NETWORK DEPENDENCIES:
- Owner will only discuss Marquet after establishing rapport (initial TALKs)
- Female customer's full information requires multiple conversation cycles
- Some information only revealed when OTHER NPC conversations completed first
```

**Solution Chain**:
```
Step 1 - Initial Rapport Building:
→ Enter MacDevitt's Bar, examine environment for notable NPCs
→ Talk to pub owner repeatedly (2-3 dialogue exchanges)
→ Owner gradually reveals Marquet was a patron, gives partial information

Step 2 - Customer Intelligence Gathering:
→ Approach female customer at bar counter
→ Multiple conversation cycles needed—she withholds key details initially  
→ Each dialogue selection advances relationship stage
→ Eventually reveals package destination hint: "somewhere medical"

Step 3 - Corroboration Loop:
→ Return to owner with new information context
→ Owner's dialogue branches based on player's stated knowledge
→ Reveals additional Marquet connection when player mentions "medical" location

Step 4 - Synthesis of Network Intelligence:
→ Combine all NPC revelations into complete profile:
   - Marquet received package at bar
   - Package intended for medical facility recipient
   - Location narrowed to specific hospital area
→ Information enables Hospital Ward entry in Chapter 3
```

**Why It's Information Brokerage**: No explicit menu or checklist exists. Player must DISCOVER through incremental TALK attempts what each NPC offers and what they require in return (attention, repeated conversations, demonstrated knowledge). The network structure—who connects to whom, what unlocks what—is revealed through failed dialogue options that require different NPC relationships first. Classic brokerage pattern: multiple sources, interdependent information flow, synthesis required for progress.

---

### Broken Sword II: The Smoking Mirror - Quaramonte Marketplace Intelligence Gathering (Chapter 3)

**Problem**: George and Nico arrive in Quaramonte needing to free Miguel from prison and escape town. Multiple NPCs scattered across marketplace hold disconnected pieces of required actions—detonator, chart viewing access, prisoner key—but no single character has complete solution. Player must map intelligence network by talking repeatedly to each NPC, coordinating distractions, and timing information exchanges.

<small>Source: 2_the_spoiler_tom_hayes_walkthrough.html, lines 163-193 — "Talk to the band, and ask about Miguel... Ask about Duane. Ask about Duane. Ask about Duane."</small>

<small>Source: 4_kasagaming_walkthrough.html, lines 315-323 — "In short, talk to everyone outside, then enter the police station and talk to General Grasiento and Renaldo..."</small>

```
INTELLIGENCE NETWORK MAP:

| NPC           | Location        | Wants/Requires                          | Offers                    |
|---------------|-----------------|-----------------------------------------|---------------------------|
| Band          | Marketplace     | Talk about Miguel, music, mine accident | Mine/Detona tor context   |
| Pearl         | Marketplace     | Questions about Duane (x3)              | Background on Henderson   |
| General       | Police Station  | Nico as distraction                     | Chart access              |
| Renaldo       | Police Station  | Questions about ruins (x2)              | Will leave when distracted|
| Oubier        | Near truck      | Questions about himself                 | Brief context, then leaves|
| Duane         | By truck        | Detonator for escape                    | Mastermind, noose method  |
| Conchita      | Mine Co. Office | Good reason / proof of findings         | Detonator from cupboard   |
| Miguel        | Prison Cells    | Help escaping                           | Noose tool                |

INFORMATION DEPENDENCY CHAIN:

PHASE 1 - INITIAL MAPPING (multiple locations, parallel discovery):
→ Talk to Band → learn about Miguel's imprisonment, mine accident context  
→ Talk to Pearl (x3 about Duane) → understand Henderson's role and motivations
→ Enter Police Station → meet General and Renaldo; both block progress initially
→ Examine chart on wall → locked away; need authorization to view properly

PHASE 2 - NETWORK NAVIGATION (interdependent exchanges):
→ Talk to Oubier near truck → he needs detonator, provides brief context before departing
→ Return to Duane → explain needing detonator → learn he's the source
→ Enter Mine Co. Office → talk to Conchita about detonator  
  - She withholds it without "good reason"
  - Prompt: ask about chart in police station
  
PHASE 3 - DISTORTION COORDINATION (multi-NPC timing):
Step A → Ask Nico to distract General at marketplace entrance
Step B → Enter Police Station while General distracted by Nico
Step C → Talk to Renaldo, then Pearl about pyramid ruins expedition  
Step D → Renaldo leaves; access chart unimpeded
  
PHASE 4 - INTELLIGENCE SYNTHESIS:
→ Return to Conchita with chart findings (archeological survey data)
→ She grants detonator from cupboard based on proof of legitimate research
→ Duane receives detonator, reveals escape method using noose

PHASE 5 - FINAL ACQUISITION:
→ Prison cells: talk to Miguel about noose multiple times
→ Use rope on cell window → retrieve noose
→ Use noose with Duane for coordinated prison break
```

**Why It's Information Brokerage**: Six distinct NPCs hold fragments of required information/items. NO SINGLE SOURCE provides complete solution. The player must:
1. DISCOVER network through trial dialogue ("why won't Conchita give me detonator?")  
2. NAVIGATE dependencies (chart findings → Conchita permission)
3. COORDINATE across characters (Nico distracts General, which enables chart access, which enables Conchita to share detonator)
4. SYNTHESIZE scattered revelations into actionable plan

The key characteristic: information flows through SOCIAL EXCHANGES between NPCs and player. General won't leave unless Nico provides distraction; Renaldo blocks chart until pyramid expedition discussion; Conchita requires CHART EVIDENCE as trade-currency for detonator. This is NOT simple item collection—it's mapping an implicit intelligence network where each NPC's cooperation depends on specific conditions being met through OTHER NPC interactions.

**Distinction from Multi-Faceted Plan**: All items/gatherings serve one goal (escape prison), but MFP collects independent COMPONENTS that converge at end. Here, INFORMATION ABOUT THE SOLUTION flows through NPCs who won't cooperate without specific triggers from other NPC interactions. Conchita → detonator is gated by chart access → which requires General distraction → which requires Nico coordination. This creates CHAINED DEPENDENCIES rather than parallel collection.

---

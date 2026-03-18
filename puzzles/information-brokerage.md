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

---

## Related Types

- **Multi-Faceted Plan**: Both involve multiple requirements, but MFP is about parallel discovery (ingredient A AND B AND C) while Brokerage emphasizes chained dependencies (Item A gets you Thing B which trades for Target)
- **Pattern Learning/Knowledge Transfer**: KT teaches a reusable *system*; Brokerage is one-off network mapping per puzzle instance

This puzzle tests: "Can I map the implicit exchange network through incremental interaction?"

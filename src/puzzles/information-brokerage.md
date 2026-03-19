# Information Brokerage Chain

## Core Mechanic

The game world contains an implicit exchange network where NPCs trade items, services, and information—but the player must discover who trades what and navigate the dependencies between trades. The player acts as a broker: facilitating exchanges between parties who cannot or will not directly interact. No NPC tells you the full network—you discover it through incremental interaction.

## When to Use

When the puzzle solution requires mapping an implicit dependency graph where information about what someone wants comes from a different source than what they offer. Best when the "aha" moment comes from realizing how everything connects, and multiple valid paths exist through the network.

## Solution Chain

1. Talk to NPC → learn what they want/offer
2. Determine if player has it OR knows someone who does
3. If not, find that person and learn their wants
4. Trace chain until player can fulfill a start-point
5. Execute trades in sequence → acquire target item/knowledge

## Examples

### Monkey Island I: Prisoner Exchange Chain

**Problem**: Need to obtain a file hidden in cake from a prisoner, but cannot directly access the prisoner or the item.

**Why It's This Type**: Player discovers through incremental interaction that Otis the guard will trade gopher repellant for breath mints, and the prisoner will trade cake (containing file) for gopher repellant. No NPC states the full chain—player maps it through failed attempts and inference.

**Solution**:
1. Learn prison has "chronic halitosis" problem through environment examination
2. Buy Breath Mints from shop for 1 Piece of Eight
3. Give Mints to Otis → receive Gopher Repellant
4. Give Gopher Repellant to Otis → receive Cake with hidden File inside
5. Give File to prisoner underwater → receive Escape Rope

---

### Indiana Jones and the Fate of Atlantis: Algiers Trading Network

**Problem**: Indy and Sophia need a balloon ticket to reach the desert dig site, but the beggar who offers tickets wants squab-on-a-stick, and acquiring it requires navigating a trade chain across multiple NPCs.

**Why It's This Type**: No single NPC provides complete information. The player must discover through dialogue and trade attempts that sunstone authentication opens Omar's cooperation, grocer trades squab, and beggar exchanges squab for balloon tickets. Each NPC's want gates access to their offering.

**Solution**:
1. Talk to beggar → learn he wants squab-on-a-stick for balloon tickets
2. Talk to grocer → learn he offers squab but wants payment/goods
3. Show sunstone (from Monte Carlo seance) to Omar → unlocks trade network access
4. Trade items to grocer → obtain squab-on-a-stick
5. Give squab to beggar → receive balloon tickets
6. Use tickets for desert dig site access

---

### The Longest Journey: Map Merchant Delivery Network

**Problem**: To find Brian Westhouse, player must work for a map merchant delivering maps. The first delivery to Captain Nebevay requires getting his signature, but he refuses due to religious beliefs—music is required during signing.

**Why It's This Type**: The player discovers through failed delivery attempts that the captain needs music. This requirement is only learnable through incremental interaction—the merchant doesn't tell you, the captain doesn't volunteer it until directly asked. Multiple NPCs form dependencies across the network.

**Solution**:
1. Accept job from map merchant → receive delivery list and first map
2. Deliver to Captain Nebevay at docks → he refuses to sign
3. Ask why → learn he needs music due to religious beliefs ("Mo-Jaal spirits")
4. Return to city gates → buy flute from merchant stall using Aaren coin
5. Return to captain with flute → give list again, April plays music
6. Captain signs → return signed list to merchant
7. Receive second delivery → eventually get pocket watch (enables dimensional travel)

---

## Related Types

| Type | Similarity | Distinction |
|------|------------|-------------|
| [Multi-Faceted Plan](multi-faceted-plan.md) | Both involve multiple requirements | MFP = parallel gathering (A and B and C); Brokerage = chained dependencies through NPC trades |
| [Pattern Learning](pattern-learning.md) | May involve learning network rules | Brokerage = one-off network mapping; KT = reusable system transfer |
| [Sensory Exploitation](sensory-exploitation.md) | Both involve NPCs | SE = exploit NPC perception weakness directly; Brokerage = trade network navigation |

## Index

| Game | Puzzle | Section |
|------|--------|---------|
| MI1 | Prisoner Exchange Chain | Examples |
| IJOA | Algiers Trading Network | Examples |
| TLJ | Map Merchant Delivery | Examples |

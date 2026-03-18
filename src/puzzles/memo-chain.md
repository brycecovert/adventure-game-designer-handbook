# Environmental Memo Chain

**Information Architecture**: Written fragments (notes, memos, signs) distributed across multiple locations in the game world. Each fragment contains piece of larger narrative or set of instructions. Information is presented as background "worldbuilding" but collectively encodes puzzle solution.

**Player Action Pattern**: Collect scattered written items through exploration. Read/compare contents mentally or against notes taken while exploring. Synthesize connections between seemingly unrelated memos to deduce location, character motive, or required item/action.

**Core Mechanic**: Distributed text fragments → player-assembling narrative → puzzle answer revealed through reading comprehension + spatial mapping. No single memo contains full solution; meaning emerges from combination.

**Variations**:
- Comic interoffice memos between game characters (complaints about each other)
- Trail notes left by previous adventurers
- Scattered diary pages out of chronological order
- Cryptic signs/inscriptions requiring reordering or cross-referencing

**Adventure Game Implementation**:
- LOOK at scattered items across world (piles of paper, bulletin boards, ground litter)
- Text is collected as inventory or viewed in situ and remembered
- Player must map memo locations + connect content themes
- Standard exploration actions; puzzle is in reading comprehension + memory

**Example Structure**:

```
Discovery Phase:
→ Explore Location A: LOOK at note → "Don't leave key here - [CHAR_B] will find it"
→ Explore Location B (unrelated): LOOK at memo → "[CHAR_A], I stole your backdoor entrance!"
→ Explore Location C: LOUK at sign → "Restricted area: Monkey Head Base"

Synthesis Phase:
→ Compare all fragments mentally
→ Deduce relationship between characters, location hierarchy, item flow
→ Solution emerges: [KEY] was hidden in [MONKEY_HEAD] by [CHAR_A] to hide from [CHAR_B]
```

**King's Quest VI Parallel**: None identified in walkthrough.

**Monkey Island Example**:
- **LeChuck Base Discovery**: Three memos scattered across different screens:
  - Beach memo: "Please return our key to the Monkey Head" (Cannibals warning)
  - River Fork memo: Complaint about LeChuck's noisy activities in Sacred Monkey Head area, saw him taking woman with scarf there
  - Pond memo: LeChuck warns Cannibals not to enter Monkey Head, calls it his "secret base of operations"
  - **Synthesis**: Monkey Island = LeChuck's hideout; must investigate the Giant Monkey Head interior

---

## Game Examples

### SpaceQuest IV: Time Pod Code Synthesis (SQ4)

**Problem**: Roger needs to travel to SpaceQuest I's location (Ulence Flats), but the time pod requires a six-digit destination code. The complete code is split across THREE separate sources in different game worlds, acquired at different play times. No single source provides complete navigation data.

<small>Source: gamefaqs-tricrokra-archive.html, lines 436-438 — "Unfold this rag and you'll see the part of a time-pod code you need later."</small>

<small>Source: gamefaqs-tricrokra-archive.html, lines 497-503 — "You get the first three digits of the code to get in a new time sector, the three on the rag are the last three"</small>

<small>Source: adventuredoor-walkthrough.html, lines 458-459 — "Read the Space Quest IV hint book, page four about where to go with time pods. Check the wad of used chewing gum to complete the destination code."</small>

```
MEMO COLLECTION PHASE:

SOURCE 1 - Gum Wrapper (SpaceQuest X, Strange Planet):
Location: Nest, after dead Sequel Police drops from sky
Action: Search body → find "rag of paper" (gum wrapper)
Discovery: Unfolding reveals THREE SYMBOLS (last half of code)
Acquisition time: Early game, before mall sequence

SOURCE 2 - Hint Book Page 4 (SpaceQuest X, Galaxy Galleria Mall):
Location: Software Store, bargain bin purchase required  
Cost: Must earn money first (burger minigame) to afford
Discovery: Page 4 contains multiple time pod destinations
Critical data: THREE SYMBOLS for "Ulence Flats" destination
Acquisition time: Mid-game mall sequence (mandatory disguise/money puzzles first)

SOURCE 3 - Arcade Time Pod Display (SpaceQuest X):
Location: Game arcade, arrives with Sequel Police officers
Discovery: Current location encoding displayed on pod screen
Critical action: Must WRITE DOWN before leaving (game explicitly warns)
Consequence: Without this code, cannot return to mall after leaving

SYNTHESIS PHASE:
1. Player has gum wrapper (3 symbols) from SQX Planet
2. Player buys hint book, reads page 4 (3 more symbols for Ulence Flats)
3. Combined total = 6-symbol complete code
4. Player locates accessible time pod with displayed interface
5. Enter all six symbols in correct order → destination unlocked


WHY IT'S A MEMO CHAIN:

1. DISTRIBUTED FRAGMENTS: Code split across gum wrapper (physical note), hint book (documented text), and memory requirement (pod display text)

2. NO SINGLE SOURCE IS COMPLETE: 
   - Gum = 3/6 symbols
   - Hint Book = different 3/6 symbols  
   - Display = interface location reference
   
3. SYNTHESIS REQUIRED: Player must mentally combine "first three from book" + "last three from rag" into ordered six-symbol sequence

4. WORLD-BUILDING DISGUISE: Fragments presented as environmental details — gum wrapper felt optional, hint book seemed like easter egg
```

**Distinction from Multi-Faceted Plan**: MFP = gather independent ITEMS for synthesis. Memo Chain = gather INFORMATION fragments that collectively encode a solution. Here the code numbers are data, not physical components to combine.

---

## Related Types

| Type | Similarity | Distinction |
|------|------------|-------------|
| Multi-Faceted Plan | Both gather across sources | MFP collects items/actions; Memo Chain collects text fragments synthesizing into encoded solution |
| Environmental Storytelling | Info hidden in world details | Environmental Storytelling reveals lore; Memo Chain reveals puzzle solutions |
| Information Brokerage | All involve knowledge transfer | Brokerage = NPC exchanges; Memo Chain = environment-to-player data only |


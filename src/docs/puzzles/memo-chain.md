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

## Related Types

- **Environmental Storytelling**: Broader category; memo chains are text-specific subset
- **Multi-Faceted Plan**: Memo chains often INFORM multi-faceted plans, but the memo system itself is distinct in its distribution + synthesis mechanic
- **Information Brokerage**: Both involve information gathering, but memo chains are environmental (world-to-player) vs NPC-to-player exchanges

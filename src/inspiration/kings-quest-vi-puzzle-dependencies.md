# King's Quest VI: Puzzle Dependencies

This chart maps the critical puzzle dependencies in Sierra's King's Quest VI (1992), showing which puzzles unlock access to subsequent challenges. Dependencies follow strict necessity rules—a puzzle B depends on puzzle A only if solving A is a prerequisite for even attempting B.

## Puzzle Dependency Flowchart

```mermaid
flowchart TD
    %% Start node
    START(["START: Wake on Beach"]) --> P1

    %% Phase 1: Beach
    subgraph Phase1["Phase 1: Isle of the Crown - Beach"]
        P1["Problem: Need items to progress"]
        S1["Solution: Pick up Royal Ring & Copper Coin"]
    end

    P1 --> S1
    S1 --> P2

    %% Phase 2: Castle Introduction
    subgraph Phase2["Phase 2: Castle Entry"]
        P2["Problem: Guards won't let you into castle"]
        S2["Solution: Show Royal Ring to guards"]
    end

    P2 --> S2
    S2 --> C1["Castle: Meet Vizier, get kicked out"]
    C1 --> P3

    %% Phase 3: Village Setup
    subgraph Phase3["Phase 3: Isle of the Crown - Village"]
        P3["Problem: Need items and transportation"]
        S3["Solution: Trade coin for items at Pawn Shop<br/>- Nightingale, Mint, Flute, Tinderbox, Paintbrush"]
        S4["Solution: Trade Ring for Magic Map"]
        S5["Solution: Talk to Ferryman → get Rabbit Foot"]
        S6["Solution: Meet Jollo in Bookstore → show Ring"]
    end

    P3 --> S3
    P3 --> S4
    P3 --> S5
    P3 --> S6
    S3 & S4 & S5 & S6 --> P4

    %% Phase 4: Isle of Wonder - Five Senses
    subgraph Phase4["Phase 4: Isle of Wonder - Gnomes"]
        P4["Problem: Five gnomes block path north"]
        S7["Solution: Give stinky Flower to Smell gnome"]
        S8["Solution: Play Nightingale for Hearing gnome"]
        S9["Solution: Give Mint to Taste gnome"]
        S10["Solution: Give Rabbit Foot to Touch gnome"]
        S11["Solution: Use Invisible Ink on self for Sight gnome"]
        S12["Solution: Get Pearl from Oyster (from beach, independent of gnomes)"]
    end

    P4 --> S7
    P4 --> S8
    P4 --> S9
    P4 --> S10
    P4 --> S11
    S7 & S8 & S9 & S10 & S11 --> P5
    P4 --> S12

    %% Phase 5: Puzzle Chain on Wonder
    subgraph Phase5["Phase 5: Isle of Wonder - Garden & Chessboard"]
        P5["Problem: Need items for Beast's domain"]
        S13["Solution: Play Flute → get Hole-in-Wall from shy flowers"]
        S14["Solution: Get Iceberg Lettuce from garden"]
        S15["Solution: Get Red Scarf from Chessboard queens"]
    end

    P5 --> S13
    P5 --> S14
    P5 --> S15
    S13 & S14 & S15 --> P6

    %% Phase 6: Isle of the Beast (initial visit)
    subgraph Phase6["Phase 6: Isle of the Beast - Initial Visit"]
        P6["Problem: Boiling pool blocks path"]
        S16["Solution: Cool pool with Iceberg Lettuce"]
        S19["Problem: Need dangling participle for bookworm"]
        S20["Solution: Get from creature on Beast shore"]
        S21["Solution: Get Brick from garden"]
    end

    P6 --> S16
    S16 --> P7
    P6 --> S19
    P6 --> S21
    S19 --> S20

    %% Phase 7: Minotaur's Maze
    subgraph Phase7["Phase 7: Minotaur's Maze"]
        P7["Problem: Need items to survive maze"]
        S22["Solution: Collect Red Scarf, Tinderbox, Hole-in-Wall, Brick"]
        P8["Problem: Need Shield and Skull from maze"]
        S23["Solution: Navigate tile puzzle → get Shield"]
        S24["Solution: Find skull in skeleton room"]
        P9["Problem: Minotaur blocks exit"]
        S25["Solution: Lure Minotaur with Red Scarf → get Dagger"]
    end

    S16 & S21 --> P7
    P7 --> S22
    S22 --> P8
    P8 --> S23
    P8 --> S24
    S23 & S24 --> P9
    P9 --> S25
    S25 --> C2["Winged Ones give Sacred Water & Oracle Vial"]

    %% Phase 6b: Isle of the Beast - Return with Shield
    subgraph Phase6b["Phase 6b: Isle of the Beast - Return Visit"]
        P6b["Problem: Archer statue kills you"]
        S18["Solution: Use Shield to pass archer statue"]
        P10["Problem: Rose hedge blocks path to Beast"]
        S28["Solution: Cut hedge with Scythe (from Isle of Mists)"]
    end

    C2 --> P6b
    P6b --> S18
    S18 --> P10

    %% Phase 8: Logic Cliffs
    subgraph Phase8["Phase 8: Isle of Sacred Mountain - Cliffs"]
        P11["Problem: Copy protection puzzles block summit"]
        S26["Solution: Solve cliff puzzles using manual (5 puzzles)"]
        P12["Problem: Dark cave blocks path"]
        S27["Solution: Use Tinderbox to light way → get Mint Leaves"]
    end

    P10 --> S28
    S28 --> P11
    P11 --> S26
    S26 --> P12
    S27 --> C3["Winged Ones take you to Minotaur Maze"]

    %% Phase 9: Isle of Mists / Druids
    subgraph Phase9["Phase 9: Isle of the Mists - Druids"]
        P13["Problem: Druids will burn you without protection"]
        S29["Solution: Have Beauty's Dress + cast Rain Spell"]
        S30["Solution: Get Scythe from village"]
        S31["Solution: Get Coal from firepit"]
    end

    P13 --> S29
    S29 --> S30
    S30 --> P14

    %% Phase 10: Beast/Beauty Quest
    subgraph Phase10["Phase 10: Beast's Domain"]
        P14["Problem: Beast needs help to break curse"]
        S32["Solution: Give White Rose to Beauty"]
        S33["Solution: Give Beast's Ring to Beauty → get Mirror & Dress"]
        S34["Solution: Cut rose hedge with Scythe"]
    end

    P14 --> S32
    S32 --> S33
    S33 --> P13

    %% Phase 11: Realm of the Dead
    subgraph Phase11["Phase 11: Realm of the Dead"]
        P15["Problem: Need to reach Land of the Dead"]
        S35["Solution: Cast Charm Creatures of Night spell<br/>→ ride Nightmare horse"]
        P16["Problem: Zombies block path"]
        S36["Solution: Avoid them (or Rain Spell protects)"]
        P17["Problem: Need ticket for underworld"]
        S37["Solution: Talk to Cassima's parents → get Ticket"]
        P18["Problem: Need key to proceed"]
        S38["Solution: Play bone xylophone → skeletons dance, drop Key"]
        P19["Problem: Need coins for Charon"]
        S39["Solution: Take coins from skeleton's eyes"]
        P20["Problem: Gate blocks entry"]
        S40["Solution: Answer riddle with LOVE"]
        P21["Problem: Need gauntlet for Death"]
        S41["Solution: Get from dead knight"]
        P22["Problem: Make Death cry"]
        S42["Solution: Show Mirror → Death weeps → free parents"]
    end

    S35 --> P16
    P16 --> S36
    S36 --> P17
    P17 --> S37
    S37 --> P18
    P18 --> S38
    S38 --> P19
    P19 --> S39
    S39 --> P20
    P20 --> S40
    P21 --> S41
    S41 --> P22
    P22 --> S42
    S42 --> C4["Cassima's parents revived → return to Beach"]

    %% Phase 12: Castle Infiltration - Two Paths Converge
    subgraph Phase12["Phase 12: Castle Infiltration"]
        P23["Problem: Cannot enter castle normally"]
        S43["Solution (Long Path): Paint door with magic<br/>- Black Feather + Swamp Ooze + Styx Water<br/>- Paintbrush + Spellbook → door appears"]
        S44["Solution (Short Path): Disguise with Beauty's Dress"]
        P24["Problem: Guards patrol basement"]
        S45["Solution: Avoid or distract with Nightingale"]
        P25["Problem: Need to access vizier's secrets"]
        S46["Solution: Use Skeleton Key on chest → get Vizier's Letter"]
        P27["Problem: Cassima needs weapon"]
        S48["Solution: Give Dagger to Cassima"]
        P26["Problem: Need Jollo's help for best ending"]
        S47["Solution: Befriend Jollo → give lamp replica"]
    end

    C4 --> P23
    P23 --> S43
    P23 --> S44
    S43 --> P24
    S44 --> P24
    P24 --> S45
    S45 --> P25
    S45 --> P27
    P27 --> S48
    P26 --> S47
    S47 --> C5

    %% Phase 13: Final Confrontation
    subgraph Phase13["Phase 13: Final Confrontation"]
        P28["Problem: Genie attacks"]
        S49["Solution (Best): Use Genie Lamp (from Jollo)"]
        S50["Solution (Alt): Give Mint Leaves to genie"]
        P29["Problem: Vizier fights"]
        S51["Solution: Use Sword + Cassima's help"]
    end

    C5 --> P28
    P28 --> S49
    P28 --> S50
    S49 --> P29
    S50 --> P29
    P29 --> S51
    S51 --> END

    %% Styles
    classDef problem fill:#ffcccc,stroke:#333,stroke-width:2px
    classDef solution fill:#ccffcc,stroke:#333,stroke-width:2px
    classDef phase fill:#e6f3ff,stroke:#333,stroke-width:1px
    classDef start_end fill:#ffcc00,stroke:#333,stroke-width:3px

    class P1,P2,P3,P4,P5,P6,P6b,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29 problem
    class S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15,S16,S17,S18,S19,S20,S21,S22,S23,S24,S25,S26,S27,S28,S29,S30,S31,S32,S33,S34,S35,S36,S37,S38,S39,S40,S41,S42,S43,S44,S45,S46,S47,S48,S49,S50,S51 solution
    class START,END,C1,C2,C3,C4,C5 start_end
```

## Key Dependency Chains

### Long Path (Full Experience)
Magic Map → Isle of Wonder puzzles → Isle of the Beast (initial) → Minotaur's Maze → Isle of the Beast (return with Shield) → Logic Cliffs → Charm Spell → Realm of the Dead → Paint Door Castle Entry → Best Ending

### Short Path (Faster)
Magic Map → Isle of Wonder puzzles → Isle of the Beast (initial) → Minotaur's Maze → Isle of the Beast (return with Shield) → Disguise Entry → Castle → Standard Ending

## Critical Item Dependencies

| Item | Source | Required For |
|------|--------|--------------|
| Royal Ring | Beach | Castle entry, Jollo trust, Sing-Sing delivery |
| Magic Map | Pawn Shop (trade Ring) | Access to all other islands |
| Nightingale | Pawn Shop (trade coin) | Five senses gnomes, guard distraction |
| Tinderbox | Pawn Shop (trade flute) | Dark cave, catacombs level 2 |
| Hole-in-Wall | Isle of Wonder garden | Catacombs spying room |
| Red Scarf | Chessboard Land | Minotaur lure |
| Shield | Catacombs | Archer statue protection |
| Dagger | Minotaur maze | Cassima's defense |
| Beauty's Dress | Beast's domain | Druid ceremony survival, disguise |
| Mirror | Beast's domain | Death's challenge |
| Skeleton Key | Realm of the Dead | Vizier's chest |
| Vizier's Letter | Abdul's chest | Saladin persuasion |

## Parallel Puzzle Paths

The game features parallel paths at several points:

1. **Isle of Wonder exploration**: Five gnomes can be solved in any order
2. **Beast's domain**: Getting brick, meeting creature, and preparing for archers can overlap
3. **Castle entry**: Two distinct paths (paint door vs. disguise) converge at the finale

## Legend

- **Rectangles with sharp corners** (red tint): Problem nodes - obstacles or puzzles that must be solved
- **Rectangles with rounded corners** (green tint): Solution nodes - items collected or actions taken
- **Gold nodes**: START and END milestones
- **Arrows**: Dependency flow (solving A enables B)

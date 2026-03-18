# Environmental Storytelling Discovery

## Mechanic Definition

The puzzle solution is knowledge, not items. Information is hidden within the game environment—through object examination, eavesdropping, spatial observation, or noticing changes between visits. The player must actively seek information rather than receive it through dialogue.

## Information Architecture

**Conveyance Method**: Environmental traces
- Objects contain hints when examined closely
- Eavesdropping reveals hidden conversations
- Spatial patterns across locations reveal connections
- Changes in environment between visits indicate time passage

**Player Action Pattern**:
1. Notice something worth examining (LOOK, EXAMINE)
2. Discover information through close inspection
3. Synthesize information with other discovered facts
4. Use synthesized knowledge to determine next action

**Core Mechanic**: The puzzle is about finding information the game doesn't explicitly tell you. There's no dialogue that says "the password is X"—you must discover it through environmental interaction.

## Design Rationale

- Rewards observation—players who examine carefully are rewarded
- Creates detective feel—the player becomes an investigator
- Integrates story and gameplay—learning the story IS the puzzle
- Avoids exposition dumps—information emerges organically

## Why It's Effective

The satisfaction comes from "stumbling" onto information. Finding something unexpected feels like discovery, not task completion. The world feels "lived in"—containing traces of what happened before the player arrived.

## Mechanic Variations

| Variation | Information Location | Discovery Method |
|-----------|---------------------|-------------------|
| Object-based | Items, furniture, documents | Close examination |
| Eavesdrop-based | Through walls, behind doors | Hidden conversation listening |
| Spatial | Pattern of locations, accessible routes | Mapping environment |
| Temporal | Changes between visits | Returning at different times |
| Synthesis | Multiple sources | Combining partial facts |

## Generic Example Structure

**Goal**: Learn [Information]

**Information Flow**:
- Player notices locked door with no visible mechanism
- Player searches environment for how door might open
- Player finds secret passage through unusual interaction (examining object)
- In passage, player can eavesdrop on guards discussing half the information
- Player finds different location containing second half through examination
- Player synthesizes: [Half 1] + [Half 2] = [Complete Information]

**The puzzle**: Information is never given explicitly—always discovered through environmental interaction.

## Adventure Game Implementation

The limited action set drives this puzzle entirely:
- LOOK/EXAMINE objects to find hidden information
- LISTEN for overheard conversations
- The puzzle exists in the environmental interaction, not in UI
- Player must remember what they found—external note-taking often required

This puzzle tests: "Can I find information the game doesn't explicitly tell me?"

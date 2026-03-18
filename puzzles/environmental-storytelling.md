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

---

### Quest for Glory 1: Brigand Meeting Note & Archery Range Spy (QFG1)

**Problem**: The brigands are planning something at an undisclosed location, but no NPC will openly discuss their base or meeting schedule. Player must discover both the timing ("midday") AND location (archery range) through environmental clues that are NOT explicitly explained by dialogue.

<small>Source: qfg1-fandom-wiki.md, lines 35-36 — "Enter the tavern and pick up the note that is next to the middle barstool." Later at line 145: "Go to town, and enter the tavern. Pick up the new note."</small>

**Environmental Discovery Chain**:
```
CLUE 1: Tavern Note (Week 2+)  
Location: Aces & Eights Tavern, Spielburg tavern interior
Discovery Method: LOOK at middle barstool area, use pickup action on floor

Information Content (Second Note): "B- meet at target range at noon, urgent -B"
Critical Decoded Data: 
  - "target range" = archery practice location  
  - "noon" = specific meeting time (midday)

CLUE 2: Archery Range Surveillance Location
From Healer's hut: South twice, then West = archery training area
<small>Source: qfg1-loudking-gamefaqs.md, line 126 — "Go to side of archery range (south twice from healer then west) at midday."</small>

Discovery Method: Travel to coordinates, wait for specified time window
Environmental Observation Opportunity: Bruno and Brutus (traitor brigands) appear at noon
Eavesdrop Result: Dialogue reveals secret password "Hiden Goseke" used for cave entrance
```

<small>Source: qfg1-loudking-gamefaqs.md, lines 124-128 — "Spy on traitor brigands → learn secret key location and password: 'Hiden Goseke'."</small>

**Synthesis Phase**:
1. EXAMINE barstool in tavern → note found (no NPC mentions this exists)
2. READ note provides abstract clue: "meet at target range at noon"  
3. Player must INTERPRET "target range" = archery/training area (environmental vocabulary mapping)
4. Travel to described location, WAIT for midday time window
5. Overhear dialogue during position-based eavesdropping → password revealed

**Why It's Environmental Storytelling**:
- **No Explicit NPC Guidance**: No character says "go to archery range at noon and listen"—information exists ONLY in environmental documents (notes found on floor)
- **LOOK/EXAMINE Action Critical**: Finding the note requires examining barstools, not dialogue choice or menu option
- **Temporal Layer**: Second note only appears after game clock advances—environment changes based on time passage, teaching player that returning later reveals new information
- **Eavesdropping as Core Discovery Mechanism**: Password learned by PHYSICAL POSITIONING and listening, not through selectable dialogue trees

**Distinction from Memo Chain (MI1)**:
While both involve written documents, MI1's memo chain requires SYNTHESIZING multiple fragments into a larger narrative. Here, EACH note is self-contained actionable intelligence—"meet at target range at noon" is complete data, just hidden in environment rather than dialogued.

**Distinction from Information Brokerage**:
No NPC exchange network exists here. Player doesn't ask "who knows where brigands meet?" The notes are PHYSICAL OBJECTS discovered through examination, not knowledge obtained through dialogue trades. Tavern owner never mentions notes exist—they're pure environmental traces without social mediation.

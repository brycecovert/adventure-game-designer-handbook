# Hierarchical Puzzle Type Organization Proposal

## Proposed New Hierarchy

```
├── INFORMATION DISCOVERY [Parent Category]
│   ├── Multi-Faceted Plan (RENAMED: becomes "Parallel & Sequential Discovery")
│   │   ├── Parallel MFP (non-linear, independent requirements)
│   │   └── Sequential Construction (formerly Meta-Puzzle + Repair Chain subtypes)
│   │       ├── Linear Production Chains
│   │       └── Repair/Restoration Sequences
│   ├── Information Brokerage (trading network navigation)
│   ├── Environmental Storytelling Discovery (environment as information source)
│   ├── Memo Chain (distributed text fragments synthesis)
│   └── Truth Revelation (revealing hidden reality through item/action)
│
├── COGNITIVE TRANSFER [Parent Category]
│   ├── Pattern Learning / Knowledge Transfer (learn system → apply elsewhere)
│   │   ├── Combat/Dialogue Systems (MI swordfighting)
│   │   └── Extended Symbol Translation (The Dig rods, symbol matching)
│   ├── Metaphor-to-Literal Bridge (TOP LEVEL - see breakdown below)
│   │   ├── Visual Metaphor Transformation (painted tree = cherry tree)
│   │   ├── Wordplay Literalization (double-meaning as action)
│   │   └── Symbolic Identity Substitution (item represents concept → becomes that thing)
│   ├── Sensory Exploitation (exploitation of defined perceptual weakness)
│   └── Observation Replay (watch once → reproduce exactly)
│
├── SPATIAL & TEMPORAL COORDINATION [Parent Category]
│   ├── Cross-Temporal Causality (time-period causal chains)
│   │   ├── Past→Future Environmental Destruction
│   │   ├── Historical Document Alteration
│   │   └── Cross-Realm Logistics (dimensional variant as subtype, not sibling)
│   ├── Multi-Character Coordination (simultaneous action requirements)
│   │   ├── Position Lock + Action
│   │   └── Sequential Handoff with State Maintenance
│   └── Timed Consequence (urgency through narrative, not UI)
│
├── NPC INTERACTION [Parent Category]
│   ├── Comedy-Based Persuasion (humor/absurdity as solution mechanic)
│   │   ├── Escalating Absurdity Dialogue
│   │   └── Tone-Matching Character Negotiation
│   ├── Distraction + Environmental Manipulation (MERGED)
│   │   ├── NPC Distraction via Trigger Actions
│   │   └── Physical Obstruction/Environment Engineering
│   │   └── Predator Chase / Escape (as DISTRACTION variant, not separate type!)
│   └── Class-Specific Challenge (class-dependent solution paths)
│       ├── Ritual Trials
│       ├── Dueling Mechanics
│       └── Multi-Faction Diplomacy (as diplomatic subclass of ritual/trial structure)
│
├── SYSTEMS & LOGIC [Parent Category]
│   ├── Robot Programming / Logic Sequencing
│   └── Escalating Combat Progression (combat as puzzle chain, not action)
│
└── NON-STANDARD LOGIC DOMAINS [Parent Category - for edge cases]
    ├── Surreal Logic Bridge (cartoon/comedy physics)
    ├── Corporate Infiltration (MERGED: becomes Distraction + NPC Interaction combination, NOT separate type!)
        └── Rationale: SQ3 ScummSoft = disguise acquisition + stealth timing + credential theft
                  This is DISTRACTION PHYSICS (avoiding guards) + COMEDY PERSUASION (role-playing as janitor)
    └── Multi-Faction Diplomacy (moved to NPC Interaction - it's diplomatic negotiation, not "non-standard")

```

## Changes Required

### 1. **Corporate Infiltration → MERGE into Distributed Types**
   - Corporate intrusion is NOT a distinct mechanic—it's an application context combining:
     - Distraction Physics (avoiding guards through environment)
     - Comedy-Based Persuasion ("maintain janitor role")
     - Sequential Construction (credential gathering chain)
   - **Action**: Delete `corporate-infiltration.md`, move examples to appropriate parent types:
     - SQ3 ScummSoft Janitor Disguise → NPC Distraction Physics (under stealth variant)
     - Credential theft chain → Sequential Construction (parallel subtype)

### 2. **Predator Chase Escape → MERGE into Distraction + Timed Consequence Combination**
   - Predator chase is the URGENCY FRAME, not the solution mechanic
   - Players solve through: Distraction Physics (rerouting predator) OR Combat OR Environmental manipulation
   - **Action**: Delete `predator-chase-escape.md`:
     - G1 Cop Chase example → NPC Distraction Physics + Timed Consequence
     - QFG3 Leopardman Fight → Escalating Combat Progression (if appropriate) or delete if pure action

### 3. **Meta-Puzzle Construction & Repair Chain → Sequential Subtype of Multi-Faceted Plan**
   - Both are linear requirement chains where step N feeds step N+1
   - Current distinction artificial: Repair is just Meta with "broken object" theme
   - **Action**: Rename and restructure:
     - `meta-puzzle-construction.md` → `sequential-construction.md` (becomes parent)
       - Add subsections for Linear Production (MI2 water filtration)
       - Add subsections for Repair/Restoration Chains (SQ3 escape pod repair)
     - Merge `repair-chain-construction.md` content INTO sequential-construction
     - Delete separate repair file

### 4. **Multi-Faceted Plan → Split into Two Variations Clearly**
   - Current MFP conflates parallel gathering AND sequential construction (which is Meta-Puzzle!)
   - **Action**: Restructure `multi-faceted-plan.md` to clearly define:
     - **Parallel MFP** (traditional, non-linear requirement gathering)
       - MI1 Voodoo Doll (4 components independently gathered)
       - SMHTR Bigfoot Totem (4 offerings from separate locations)
     - Add clear distinction section explaining why Sequential Construction is now SEPARATE type
     - Update "Related Types" to reference Sequential Construction as sibling, not variation

### 5. **Metaphor-to-Literal → Promote to Top-Level with Subtype Breakdown**
   - Currently buried in Translation & Decoding with Symbol Code (too narrow placement)
   - This is COGNITIVE TRANSFER of abstract→concrete reasoning, fundamental to adventure games
   - Examines suggest at least 2-3 distinct subtypes worth documenting separately:
     - Visual Metaphor Transformation (MI2 painted tree = cherry tree metaphor made literal)
     - Wordplay as Action (SMHTR "Bumpus vegetable" as identity proxy)
     - Symbolic Substitution (general framework for abstract→concrete bridges)
   - **Action**: Restructure `metaphor-literal.md`:
     - Promote to top-level category under COGNITIVE TRANSFER
     - Document each subtype explicitly with examples
     - Keep Symbol Code Translation as separate but RELATED type (visual matching, not metaphorical reasoning)

### 6. **Cross-Realm Logistics → Subtype of Cross-Temporal Causality**
   - "Realms" can include time periods, dimensions, or states—same underlying mechanic: causal action across separated contexts
   - TLJ Stark↔Arcadia shifts = dimensional variant of DOTT past↔present mechanics
   - OR: Keep as sibling but clarify relationship (both are "cross-boundary logistics")
   - **Action** (Option A): Make Cross-Realm Logistics a SECTION within `cross-temporal-causality.md` labeled "Dimensional Variants"
   - **Action** (Option B, if too distinct): Move to separate category but clarify in Related Types section that CTC and CRL share same underlying logic

### 7. **Pattern Learning / Extended Structure**
   - Symbol Code Translation currently duplicates Pattern Learning's core premise (learn rules → apply elsewhere)
   - Key distinction: SymbCode adds VISUAL SYMBOL RECOGNITION layer
   - **Action**: Consider merging `symbol-code-translation.md` INTO `pattern-learning.md` as "Extended Visual Translation" subsection
     - OR keep separate but document clear dependency: "extends Pattern Learning by adding visual mapping layer"

### 8. **Comedy-Based Persuasion + Surreal Logic Bridge relationship**
   - Both involve non-standard causality (humor/comedy logic)
   - Comedy Persuasion = dialogue tree choices based on tonal matching
   - Surreal Bridge = inventory actions that violate physics but follow cartoon logic
   - **Action**: Keep separate but document relationship in "Related Types" sections—both are NON-STANDARD DOMAINS

## Summary of Structural Changes

| Current File | New Status | Notes |
|-------------|-----------|-------|
| `meta-puzzle-construction.md` | Rename to `sequential-construction.md`, expand | Absorbs repair-chain content |
| `repair-chain-construction.md` | DELETE (merge into sequential) | Redundant with meta-construction |
| `multi-faceted-plan.md` | Restructure | Split into Parallel vs Sequential clearly |
| `corporate-infiltration.md` | DELETE (distribute examples) | Not distinct mechanic |
| `predator-chase-escape.md` | DELETE (distribute examples) | Frame, not mechanic |
| `metaphor-literal.md` | Promote to top-level, expand subtypes | Fundamental cognitive transfer type |
| `cross-realm-logistics.md` | Move to CTC section OR clarify relation | Same mechanics across different boundary types |
| All other files | Keep current, update summaries | Link changes in Related Types sections |

## SUMMARY.md Updates Required

Current flat structure needs reorganization into:

```markdown
# Puzzle Taxonomy

## Information Discovery Puzzles
- [Parallel Multi-Faceted Plans](puzzles/multi-faceted-plan.md) ← renamed section
- [Sequential Construction](puzzles/sequential-construction.md) ← new parent
- [Information Brokerage Chains](puzzles/information-brokerage.md)
- [Environmental Storytelling Discovery](puzzles/environmental-storytelling.md)
- [Memo Chain Fragments](puzzles/memo-chain.md)
- [Truth Revelation Mechanic](puzzles/truth-revelation.md)

## Cognitive Transfer Puzzles
- [Pattern Learning / Knowledge Transfer](puzzles/pattern-learning.md)
- [Symbol Code Translation](puzzles/symbol-code-translation.md) ← extended pattern learning
- [Metaphor-to-Literal Bridges](puzzles/metaphor-literal.md)
- [Sensory Exploitation](puzzles/sensory-exploitation.md)
- [Observation Replay](puzzles/observation-replay.md)

## Spatial & Temporal Coordination
- [Cross-Temporal Causality](puzzles/cross-temporal-causality.md) ← includes cross-realm section
- [Multi-Character Coordination](puzzles/multi-character-coordination.md)
- [Timed Consequence](puzzles/timed-consequence.md)

## NPC Interaction & Social Puzzles
- [Comedy-Based Persuasion](puzzles/comedy-based-persuasion.md)
- [Distraction & Environmental Manipulation](puzzles/distraction-physics.md) ← expanded name
- [Class-Specific Challenges](puzzles/class-specific-ritual.md)
- [Multi-Faction Diplomacy](puzzles/multi-faction-diplomacy.md)

## Systems & Logic Puzzles
- [Robot Programming / Color-Encoded Sequences](puzzles/robot-programming.md)
- [Escalating Combat Progression](puzzles/escalating-combat-progression.md)

## Non-Standard Logic Domains
- [Surreal Logic Bridges](puzzles/surreal-logic-bridge.md)

```

## Cross-Reference Update Checklist

1. **Remove "Related Types" references to deleted files**:
   - Any mentions of `corporate-infiltration` → redirect to Distraction + Sequential combo
   - Any mentions of `predator-chase-escape` → redirect to Timed Consequence or Combat
   
2. **Update Multi-Faceted Plan internal references**:
   - Remove claim that Sequential Construction is "variation" (now separate type)
   - Clarify distinction in Related Types table

3. **Expand Metaphor-to-Literal Related Types section**:
   - Add connections to Comedy Persuasion and Surreal Logic Bridge
   - Document relationship with Pattern Learning (both are cognitive transfer, different directions)

4. **Cross-Temporal Causality section on Cross-Realm**:
   - Either integrate examples OR document that CRL exists for dimensional variants specifically
   - Clarify in Related Types section

5. **Update all Inspiration game pages**:
   - Link references to `corporate-infiltration` → new appropriate types
   - Link references to `meta-puzzle-construction` → `sequential-construction`
   - Verify all puzzle examples link to correct hierarchy position

## Recommended Implementation Order

1. **Create** `sequential-construction.md` (rename meta-puzzle, merge repair-chain content)
2. **Delete** `repair-chain-construction.md` (after verification of merge)
3. **Restructure** `multi-faceted-plan.md` with Parallel vs Sequential distinction
4. **Delete** `corporate-infiltration.md` (distribute SQ3 example to Distraction + Sequential sections)
5. **Delete** `predator-chase-escape.md` (distribute examples to Timed Consequence / Combat)
6. **Restructure** `metaphor-literal.md` with explicit subtype breakdowns
7. **Decide on Cross-Realm Logistics**: Integrate or separate but clarify relationship
8. **Update all Related Types sections** across remaining files
9. **Update SUMMARY.md** with new hierarchical structure
10. **Audit Inspiration pages** to fix any broken links

## Questions Before Proceeding

1. Should Cross-Realm Logistics be FULLY integrated into CTC as a section, or kept separate but clarified?
2. Is Symbol Code Translation worth keeping separate from Pattern Learning, or merge them?
3. Should I propose new parent category files with overview content (like "Information Discovery" explaining the domain)?

# NPC Interaction & Social Puzzles

Social puzzles center on **manipulating non-player characters** rather than objects or environments. Success comes through dialogue choices, behavioral observation, deception, timing, or understanding character-specific rules—mechanics that treat NPCs not as obstacles but as systems to be mastered.

The core distinction: solutions require reading NPC motivations, exploiting personality traits, or triggering specific character behaviors. Unlike inventory puzzles where you combine Item A + Item B, social puzzles demand Player Action → NPC Reaction → New State.

## Child Types

| Type | Social Mechanic | When to Use This Pattern |
|------|-----------------|--------------------------|
| [Comedy-Based Persuasion](puzzles/comedy-based-persuasion.md) | Humor/absurdity unlocks dialogue branches | Guard or authority figure has rigid but exploitable sense of propriety |
| [Distraction & Environmental Manipulation](puzzles/distraction-physics.md) | Physical triggers divert NPC attention | NPC follows predictable patrol or sensory pathing logic |
| [Class-Specific Challenges](puzzles/class-specific-ritual.md) | Character class determines ritual solutions | Multiple entry paths exist, but each requires specific role-based trials |
| [Multi-Faction Diplomacy](puzzles/multi-faction-diplomacy.md) | Conflicting faction rules create negotiation space | Multiple stakeholders with incompatible demands must be appeased |

## Design Space Boundaries

**Not a Social Puzzle If:**
- The NPC merely blocks access until an item is retrieved elsewhere (that's a [Fetch Quest](puzzles/fetch-quest.md))
- Dialogue reveals hint text but the actual solution involves physical manipulation
- Character personality is flavor-only with no mechanical impact on outcomes

**Is a Social Puzzle When:**
- NPC has internal state that dialogue or observed behavior can modify
- Multiple approaches exist because the character responds differently based on player strategy
- Understanding the character's rules matters more than finding the "correct" answer

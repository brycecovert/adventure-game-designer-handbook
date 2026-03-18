# Documentation Structure

Each puzzle type document contains:

- **Information Architecture**: How information is conveyed to the player
- **Player Action Pattern**: What the player does with that information
- **Core Mechanic**: The underlying puzzle logic
- **Variations**: Different ways this type can manifest  
- **Adventure Game Implementation**: How limited actions (LOOK, TALK, USE, WALK) map to the puzzle
- **Example Structure**: Generic template showing how the puzzle works
- **Game Examples**: Concrete instances from walkthroughs
- **Related Types**: Cross-references to similar puzzle mechanics

## Template Format

```markdown
# [Type Name]

**Information Architecture**: How player discovers puzzle structure.

**Player Action Pattern**:
1. Step one
2. Step two
3. Solution

**Core Mechanic**: Single sentence explaining underlying logic.

**Variations**: Brief list of possible manifestations

---

## Game Examples

### [Game]: [Puzzle Name]

**Setup**: Brief context description.

**Solution Chain**:
1-5. Actions with discoveries...

**Why It's This Type**: Explicit connection to core mechanic above.

---

## Related Types

| Type | Similarity | Distinction |
```

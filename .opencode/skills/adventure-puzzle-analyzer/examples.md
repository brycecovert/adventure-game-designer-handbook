# Examples

## Adding Example to Existing Type

In `puzzles/metaphor-literal.md`, under "## Game Examples":

```markdown
### Monkey Island II: Bone Maze Navigation Song

**Metaphor from dream**: "The HEAD bone is connected to the RIB bone, the RIB bone to the LEG bone..."

**Translation Chain**:
1. Player hears song during dream state
2. Later encounters maze with Ugly Bone Thing wall panels
3. Recognizes song describes physical connections; first 3 bones per verse = passages
4. Push HEAD→RIB→LEG for each room, ignoring 4th bone (noise)

**Why It's This Type**: Poetic encoding must be decoded into literal mechanical solution.
```

## Creating New Type Document

File: `puzzles/kebab-case-name.md`

```markdown
# [Type Name]

**Information Architecture**: How player discovers puzzle structure.

**Player Action Pattern**: 
1. Step one
2. Step two
3. Solution

**Core Mechanic**: One sentence only.

---

## Game Examples

### [Game]: [Puzzle]

**Setup**: Brief context.

**Solution Chain**:
1-5. Actions and discoveries...

**Why It's This Type**: Explicit link to core mechanic.

---

## Related Types

| Type | Similarity | Distinction |
```

Then update `/README.md` table of contents with new row.

## README Update Format

```markdown
| 14 | [New Type](./puzzles/new-type.md) | One-line core mechanic | MI2 |
```

- Increment number sequentially
- Link uses kebab-case matching filename
- Game Source = KQVI, MI1, MI2, or "TBD"
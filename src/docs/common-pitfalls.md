# Common Pitfalls

This section catalogs the most common mistakes in adventure game puzzle design, organized as a checklist for self-editing.

---

## Puzzle Design Anti-Patterns

### The 14 Deadly Sins (Expanded from Jimmy Maher's Classic Catalog)

These are the most severe violations of the adventure game design contract:

#### 1. Pixel Hunting
Hiding essential items in indistinguishable pixels.

**How to avoid:** Make interactive elements visually distinct. Use consistent visual language for clickable objects.

#### 2. Guess-the-Verb
Interface opacity requiring specific verb prediction.

**How to avoid:** Accept equivalent actions. "Use X on Y" should work whether player types "use," "apply," or "combine."

#### 3. Unconnected Events
Random events that gate progress without logical connection.

**How to avoid:** Every gate should follow from rules established earlier in the game.

#### 4. Backwards Puzzles
Solution must be discovered before problem is encountered.

**How to avoid:** Work backwards from solution. (See [Working Backwards](../design-process/working-backwards.md))

#### 5. "I Forgot to Pick It Up"
Critical items required but unretrievable after passing them.

**How to avoid:** Don't make critical items optional, or provide alternatives.

#### 6. Leap of Logic
Missing intermediate steps in solution chain.

**How to avoid:** Test every chain with playtesters. (See [Playtesting Methodology](../design-process/playtesting-methodology.md))

#### 7. Non-Sensical Solutions
Solutions violating established internal logic.

**How to avoid:** All solutions must follow from rules you've shown the player. (See [Internal Logic & Fairness](../design-process/internal-logic-fairness.md))

#### 8. Locked-Out Victory
Dead ends with no recovery path.

**How to avoid:** Design alternative paths. Add recovery mechanisms. Test for unrecoverable states.

#### 9. Constant Death
Punishment that doesn't teach.

**How to avoid:** Death should only occur with warning and learning opportunity. (See [Why Adventure Games](../parts/why-adventure-games.md))

#### 10. Inventory Clutter
Too many items obscure the solution.

**How to avoid:** Prune inventory. Make solution items visually or contextually distinct.

#### 11. Dynamic Events Required But Never Seen
Timing-sensitive events players missed.

**How to avoid:** Avoid time-sensitive events, or make them repeatable/not required for completion.

#### 12. Padding
Story-irrelevant puzzles extending playtime.

**How to avoid:** Every puzzle should advance narrative or character. Ask: "What does this puzzle reveal?"

#### 13. Context Clueless
Unclear when something IS a puzzle.

**How to avoid:** Make interactive elements visually distinct. Use consistent clickable indicators.

#### 14. Misleading Information
False clues leading players astray.

**How to avoid:** Clues should narrow possibility space, not expand it. Never mislead without making it recoverable.

---

## Pattern Confusion Pitfalls

### Pattern Learning vs Observation Replay

**Pattern Learning**: Teaches a *system* with reusable rules that can be applied to novel situations.
- Example: Learn bell sequence rules, then compose original melodies

**Observation Replay**: Memorizes a *sequence* to reproduce verbatim when opportunity arises.
- Example: Watch guard patrol pattern, then follow exact same timing/path

### Multi-Faceted Plan vs Meta-Construction

**Multi-Faceted Plan**: Multiple requirements gathered in any order across independent sources, synthesized at the end.
- All three key fragments can be found in any order
- Final combination happens once all pieces collected

**Meta-Construction**: Sequential chain where step N's output enables step N+1.
- Cannot proceed to step 2 without completing step 1
- Each repair enables next system functionality

### Brokerage vs Sensory Exploitation

**Brokerage**: Trade network requiring intermediate steps (item for item, information for action).
- "I'll give you the map if you fetch me the artifact"
- Maps to explicit exchange mechanics

**Sensory Exploitation**: Exploit NPC perception weakness directly.
- Distract sleeping guard with noise elsewhere
- No negotiation or trade involved

---

## Timing Pitfalls

### Timed Consequence Misuse

The term "timed" refers to *narrative* urgency, not mechanical countdown:
- **NOT**: 5-minute timer visible on screen
- **IS**: If you don't stop ritual before cutscene ends, permanent story change occurs

### Class-Specific vs Multi-Faction Confusion

**Class-Specific Ritual Challenge**: Same obstacle, mechanically distinct implementations based on player character class.
- Knight uses combat; Monk uses meditation; both achieve same narrative goal

**Multi-Faction Diplomacy Puzzle**: Multiple independent factions must all be satisfied before unified conflict resolution.
- Cannot bypass any faction
- Each has separate requirements chain

---

## Source Material

These pitfalls are documented in detail in:
- [The 14 Deadly Sins](../resources/criticism/14-deadly-sins-graphic-adventure-design-filfre.md)
- [Seven Deadly Sins of Adventure Games](../resources/criticism/seven-deadly-sins-adventure-games.md)
- [10 Things I Hate About Adventure Games](../resources/criticism/10-things-hate-adventure-games.md)

# FAQ

Common questions about adventure game puzzle design, answered with reference to this handbook's principles and patterns.

---

## How do I prevent players from getting stuck?

**Problem:** Players reach an impassable point with no clear path forward, leading to frustration, walkthrough consultation, or game abandonment.

**Solution:** Apply bushy branching and fail-forward design principles from the start:

1. **Never design a single chain of puzzles.** Create parallel paths so players always have alternatives (see [Bushy Branching](design-process/bushy-branching.md)).
2. **Design failure as feedback.** Every failed attempt should narrow the possibility space, not expand it (see [Core Principles: Failure as Feedback](core-principles.md)). If "use key on door" fails, the failure should hint that a different approach exists.
3. **Telegraph objectives clearly.** Players should always know their ultimate goal and immediate next step (see [Core Principles: Clarity of Objective](core-principles.md)).
4. **Implement progressive hint systems.** Detect stuckness through time-based or behavior-based triggers and offer graduated hints before frustration sets in (see [Hint System Design](design-process/hint-systems.md)).
5. **Ensure multiple solution paths.** If there's only one way to open a door, players who miss that way are permanently stuck (see [Information Discovery Overview](puzzles/information-discovery-overview.md) for Multi-Faceted Plans).

**Examples:** Monkey Island 2's parallel map-piece chains give players 3-5 simultaneous objectives. When one chain stalls, others remain available. Thimbleweed Park's hint line detects prolonged interaction with the same puzzle and offers graduated nudges before players rage-quit.

---

## How do I make puzzles that feel fair but challenging?

**Problem:** Puzzles that are too easy feel pointless; puzzles that are too hard feel unfair. Finding the balance between challenge and solvability is elusive.

**Solution:** Fairness comes from internal logic and logical necessity:

1. **Establish rules before requiring them.** The Rule Introduction Pattern: show how the world works through a non-puzzle example, reinforce with a simple puzzle, then escalate to complex application (see [Internal Logic & Fairness](design-process/internal-logic-fairness.md)).
2. **Make solutions logical consequences, not arbitrary requirements.** "You need acid because earlier you found a still that makes acid" is fair. "You need a rubber chicken with no prior establishment" is not.
3. **Plant solutions through inception, not extraction.** Earlier puzzles should teach patterns that later puzzles require. Players who "figure it out" feel clever; players who guess randomly feel lucky (see [Player Psychology: Inception vs. Extraction](design-process/player-psychology.md)).
4. **Apply the Hollywood time principle.** Players will accept improbable scenarios if they're cinematic. They'll reject probable ones if they're mundane. The puzzle's drama should justify its difficulty.
5. **Respect the possibility space.** Good puzzles narrow what players try; bad puzzles expand confusion. Every failed attempt should teach something (see [Core Principles: Failure as Feedback](core-principles.md)).

**Examples:** Monkey Island's voodoo doll sequence: voodoo is established as real, demonstrated on Murray, then required on LeChuck. Each step follows logically. King's Quest VI's bird cage puzzle: you learn the bird fears cats, then must apply that fear to solve a later problem.

---

## How do I balance difficulty across parallel puzzle paths?

**Problem:** When puzzles branch in parallel, some paths become easier or faster than others. Players naturally gravitate to the path of least resistance, breaking difficulty curves.

**Solution:** Balance parallel paths using these techniques:

1. **Set minimum and maximum length targets.** Bushy branching works best when branches have similar difficulty and similar length (see [Bushy Branching](design-process/bushy-branching.md)). Use dependency charts to visualize and compare paths (see [Dependency Charts](design-process/dependency-charts.md)).
2. **Distinguish gate keys from branch keys.** Gate keys block progression until found; branch keys let players choose between paths. Use gate keys for critical story beats; use branch keys for optional content.
3. **Balance by adding, not just removing.** If one branch is too easy, add a wrinkle (a sub-puzzle, a timed element, an NPC interaction) rather than removing obstacles from harder branches.
4. **Monitor convergence points.** If branches converge too early, players who chose the harder path feel punished. If they never converge, pacing collapses. Use dependency charts to identify bottlenecks (see [Dependency Charts](design-process/dependency-charts.md)).
5. **Test with blind players.** Quantitative balancing requires playtest data. Watch which branches players choose first and where they get stuck (see [Playtesting Methodology](design-process/playtesting-methodology.md)).

**Examples:** Monkey Island 2's four map-piece chains are designed to take similar time. Broken Sword's parallel investigation paths (interviewing witnesses vs. examining evidence) should offer comparable puzzle density.

---

## When should I use linear vs. parallel puzzle structures?

**Problem:** Designers default to linear chains because they're easier to write, but players get stuck with no alternatives. Parallel structures are better but harder to balance.

**Solution:** Match structure to purpose:

**Use linear when:**
- Teaching core mechanics (tutorials need controlled progression)
- Building toward climactic moments (convergence creates dramatic tension)
- Introducing a new system (parallel learning contexts confuse more than they help)
- Pacing toward emotional beats (linearity creates momentum)

**Use parallel when:**
- Player agency matters (letting players choose their path)
- Preventing stuckness is critical (alternatives exist for every bottleneck)
- Mid-game variety is needed (prevents repetitive puzzle patterns)
- Multiple factions or locations exist (natural parallel tracks)

**Design approach:** Start linear for tutorial/trial areas, then expand into bushy branching once players understand core systems. Use dependency charts to identify where single-path bottlenecks create stuckness risks (see [Dependency Charts](design-process/dependency-charts.md)).

**Examples:** Loom's opening is strictly linear (teaches the weaving mechanic). Monkey Island 2's Scabbard Island is highly parallel (multiple map pieces, multiple locations). The Legend of Kyrandia alternates between linear story beats and open exploration.

---

## How do I create good hint systems?

**Problem:** Players get stuck but hint systems either spoil solutions or provide uselessly vague guidance.

**Solution:** Design hints that preserve the "aha" moment while unblocking stuck players:

1. **Use graduated hint levels.** Offer 3-5 levels from vague nudge to specific direction. Let players choose how much help they want (see [Hint System Design](design-process/hint-systems.md)).
2. **Detect stuckness through behavior.** Trigger hints based on: no forward progress for N seconds, repeated failed attempts on same puzzle, excessive revisiting of completed areas. Quantitative triggers (time-based) work; qualitative triggers (behavioral patterns) work better.
3. **Make hints specific and actionable.** "Have you tried looking in the basement?" narrows possibility space. "The key is behind the barrels" preserves the discovery.
4. **Consider in-world vs. external hints.** In-world hint characters integrate with narrative but require dialogue writing. External hint systems (hint lines, help menus) are easier to implement but can break immersion.
5. **Calibrate through playtesting.** Where blind testers get stuck becomes your hint trigger. Watch for the "dead air" signal—10-15 seconds of no interaction means hint time (see [Playtesting Methodology](design-process/playtesting-methodology.md)).

**Examples:** Thimbleweed Park's hint line offers progressively specific suggestions. Gabriel Knight 3's hint character provides diegetic guidance. Many LucasArts games used context-sensitive hints that triggered only when players had the right items but hadn't tried the right combination.

---

## How many puzzles should my game have?

**Problem:** Designers worry about too few puzzles (game feels short) or too many (game feels padded). Quantity vs. quality tension is constant.

**Solution:** Prioritize synthesis over collection:

1. **Quality over quantity.** Players remember elegant puzzles, not puzzle counts. A 10-puzzle game with tight design beats a 50-puzzle game with padding.
2. **Density matters more than length.** Short, meaningful puzzles integrated with story create better pacing than long, isolated puzzle sequences.
3. **Variety over volume.** Include different puzzle types (information discovery, cognitive transfer, spatial coordination, NPC interaction) rather than repeating similar mechanics.
4. **Every puzzle should advance something.** If a puzzle doesn't advance story, reveal character, or teach a mechanic needed later, it's padding (see [Failure Modes: Sin #12 Padding](design-process/failure-modes.md)).
5. **Use reference targets cautiously.** Monkey Island 2 has ~9-10 items per puzzle chain, 3-5 parallel chains. These are reference points, not requirements. Your game may need more or fewer depending on complexity.

**Examples:** Day of the Tentacle has fewer puzzles than most adventure games but each puzzle is tightly integrated with the time-travel mechanic. Broken Sword has many puzzles but they're distributed across a world map, preventing puzzle fatigue.

---

## How do I test puzzles without playtesters?

**Problem:** Solo developers or small teams lack access to blind playtesters. Puzzle design feedback seems impossible without a testing pool.

**Solution:** Self-testing techniques and remote playtesting:

1. **Think-aloud protocol.** Play your own game narrating your thoughts aloud. Where you hesitate, you noticed a puzzle. Where you express confusion, you found a gap.
2. **Sleep on it.** Test tomorrow what you designed today. Fresh eyes catch problems familiar minds miss.
3. **Segmented testing.** Test one puzzle chain in isolation, disconnected from the full game. This reveals whether the puzzle teaches its own solution.
4. **Remote playtesting.** Upload builds to itch.io with open beta. Discord communities, Reddit threads, and game jam feedback channels all provide testers. Watch Let's Plays to see where players actually get stuck.
5. **Analytics implementation.** Even simple telemetry (which puzzles completed, in what order, how many attempts) reveals problem areas. Analytics shows aggregate stuckness; videos show specific moments.
6. **The 24-hour rule.** If you can't remember how to solve your own puzzle after 24 hours, the puzzle is too complex or poorly telegraphed.

**Examples:** Many indie developers use itch.io beta testing with Discord feedback channels. Ron Gilbert streamed Thimbleweed Park development, gathering real-time feedback. Small teams like Wadjet Eye use Kickstarter backers as playtesters.

---

## How do I handle "moon logic" complaints?

**Problem:** Players encounter solutions that feel arbitrary or illogical, violating their mental model of how the game world works.

**Solution:** Moon logic is a symptom of internal logic violations:

1. **Verify rule establishment.** Before requiring a solution, establish the underlying rule. If voodoo works on LeChuck, players need to understand voodoo is real and affects ghosts (see [Internal Logic & Fairness](design-process/internal-logic-fairness.md)).
2. **Test every logical step.** Missing intermediate steps create "leap of logic" failures (Sin #6 in [Failure Modes](design-process/failure-modes.md)). Each link in the chain must be individually solvable.
3. **Playtest for surprises.** Moon logic is revealed when testers express "I never would have tried that." Every surprise that isn't preceded by learning is moon logic.
4. **Reward intent.** When players have the right idea but execute it slightly wrong, let them succeed. Interface punishment for near-correct actions creates moon logic perception (see [Core Principles: Reward Intent](core-principles.md)).
5. **Use the fairness checklist.** Did I establish the rule earlier? Is the solution logical given the rule? Could a player predict this? Does it feel earned? (See [Internal Logic & Fairness](design-process/internal-logic-fairness.md))

**Examples:** "Use fish on piranha" makes sense once you know piranhas are trained to fear fish-shaped boats. "Use rubber chicken on door" makes no sense unless rubber chickens were established as multipurpose tools earlier.

---

## How do I make puzzles that teach without being obvious?

**Problem:** Tutorials that explain mechanics explicitly feel patronizing. But puzzles that assume knowledge players haven't learned feel unfair.

**Solution:** Teach through doing, not explaining:

1. **Use cognitive transfer structures.** Players learn a system's rules by observing them in context, then apply those rules to new situations (see [Cognitive Transfer Overview](puzzles/cognitive-transfer-overview.md)).
2. **Apply the Rule Introduction Pattern.** First: demonstrate the rule non-puzzles (show it working). Second: let players use the rule in simple context. Third: require the rule in complex puzzle (see [Internal Logic & Fairness](design-process/internal-logic-fairness.md)).
3. **Make teaching moments safe to fail.** Early puzzles using a new mechanic should have no punishment for failure. Players experiment, learn, and build confidence before stakes rise.
4. **Create pattern recognition opportunities.** Earlier puzzles plant patterns that later puzzles activate. Players feel they "figured it out" rather than being "told the answer" (see [Player Psychology: Inception vs. Extraction](design-process/player-psychology.md)).
5. **Vary transfer distance.** Learning context and application context should be different enough that players must abstract, not just recognize. Too similar = boring; too different = unfair.

**Examples:** In Pattern Learning puzzles, players observe that glowing mushrooms in area A light up when you whistle, then must apply whistling to glowing mushrooms in area B. In Metaphor-to-Literal puzzles, players learn that "the bigger the cage, the longer the wait" is a spatial concept, then must apply that logic to an abstract problem.

---

## How do I integrate puzzles with story?

**Problem:** Puzzles feel like interruptions to narrative, or narrative feels like padding between puzzles. The two seem fundamentally separate.

**Solution:** Make puzzles serve narrative functions:

1. **Puzzle as character moment.** The solution reveals character. A puzzle solved through compassion shows the protagonist as empathetic; a puzzle solved through cunning shows them as clever (see [Comedy-Based Persuasion](puzzles/comedy-based-persuasion.md) for NPC interaction examples).
2. **Earned victories.** Puzzles should make triumphant moments feel earned. The climactic confrontation lands harder when preparation involved genuine problem-solving.
3. **Information as narrative.** What players discover through puzzle-solving advances their understanding of the story world. Truth Revelation puzzles reveal backstory; Environmental Storytelling puzzles convey history through discovery (see [Truth Revelation](puzzles/truth-revelation.md), [Environmental Storytelling](puzzles/environmental-storytelling.md)).
4. **Stakes through puzzle consequences.** Failure should have narrative weight, not just restart. Timed Consequence puzzles create urgency that pure narrative cannot (see [Timed Consequence](puzzles/timed-consequence.md)).
5. **Character-specific challenges.** NPCs with distinct capabilities create natural puzzle variation that also reveals character through class-specific approaches (see [Class-Specific Challenges](puzzles/class-specific-ritual.md)).

**Examples:** Gabriel Knight's puzzles investigate crimes, making the player feel like a detective. King's Quest VI's puzzles explore the kingdom, reinforcing themes of discovery and loss. Broken Sword's puzzles uncover conspiracy history, making revelations feel personally meaningful.

---

## Still Have Questions?

If this FAQ doesn't address your specific challenge, try:

- **[Common Pitfalls](common-pitfalls.md)** — The 14 Deadly Sins and how to avoid them
- **[Validation Checklist](validation-checklist.md)** — Pre-release verification for puzzle design
- **[Quick-Start Worksheet](quick-start-worksheet.md)** — Design exercises for new puzzle types
- **[Inspiration Index](../inspiration/cross-reference-index.md)** — 30+ games analyzed with puzzle patterns identified

For deeper dives into specific topics, consult the Design Process chapters on [Dependency Charts](design-process/dependency-charts.md), [Player Psychology](design-process/player-psychology.md), and [Failure Modes](design-process/failure-modes.md).

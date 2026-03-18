# Introduction

## Feeling Smart

Near the end of *Monkey Island 2: LeChuck's Revenge*, you face LeChuck's ghost blocking your path. You've just spent hours constructing a voodoo doll of his henchman Largo—figuring out that you needed thread, a head, some body material, and something dead. Each piece required its own sub-puzzle scattered across the game world.

Now here's LeChuck's floating, invincible specter. The game doesn't explain anything. It doesn't need to.

*Oh*, you think. *Another voodoo doll.*

The rules transfer. You already know how this works. Thread from the laundromat. Head—maybe a lock of his hair? Body material. Something dead (tricky, he's already undead). You've played this game before, and it feels like the designer handed you a genuine challenge instead of a roadblock. When it clicks and LeChuck dissolves, you feel smart—not because the puzzle was easy, but because the game respected your ability to learn.

## Feeling Stuck

Years earlier, I sat on my grandfather's couch playing *King's Quest V*. We'd reached what seemed like progress when we hit a wall: a cat blocking our path, perched on a ledge inside an inn. The game gave us no indication we were stuck. No dialogue hint, no failed attempt that taught us something new.

When the solution finally came—after consulting a guide, not through gameplay—it was throw a random object that happens to interest cats. The *only* telegraphing existed in death: when Graham died in the innkeeper's cellar, an animation showed a small mouse hole, suggesting perhaps rats roamed this space. A rat might attract a cat. Maybe.

That's all the information the game offered. This wasn't a puzzle; it was a checkpoint behind a guess. We weren't problem-solvers—we were code-breakers with no cipher. The experience wasn't challenging in the right way. It was disempowering, and our session ended not with triumph but with the glow of a walkthrough on a monitor.

## Why This Handbook Exists

Those two moments defined my relationship with games. *King's Quest* series played with my grandfather introduced me to interactive storytelling. The frustration of bad puzzles and the satisfaction of good ones showed me that design mattered—that there was actual craft happening beneath the graphics and dialogue.

That realization made me want to be a programmer. More specifically, it made me want to make games where players feel smart, not stuck.

Adventure game puzzle design is fundamentally undertaught. The golden age produced masterworks like *Monkey Island*, *Quest for Glory*, *Grim Fandango*, and *The Longest Journey*—games built by designers who learned through practice and iteration. But nobody wrote the handbook. Nobody documented what made those puzzles work so that the next generation could build on it instead of rediscovering it.

This changes everything. A designer doesn't need to play thirty adventure games to understand why information brokerage chains create meaningful trade relationships, or how pattern learning lets you teach mechanics in low-stakes domains before applying them under pressure. The patterns are reproducible. They're mechanical, not narrative—so they work regardless of setting, era, or story context.

**This handbook documents those patterns.**

## What's Inside

### The Playbook

The core of this book catalogs puzzle types from thirty-plus classic adventure games. Each entry explains:

- **Core Mechanic**: Three sentences maximum on what this pattern achieves
- **Solution Chain**: The specific player actions required to solve it
- **Game Examples**: Three concrete implementations with explicit analysis of why each fits the pattern
- **Related Types**: How this differs from similar mechanics you might confuse it with

The Playbook covers everything from multi-source discovery (gathering requirements across disparate locations) to sequential construction (where step N's output enables step N+1) to NPC interaction patterns that turn characters into gameplay systems rather than story devices.

### A Sampling of Puzzles

After the Playbook, you'll find detailed analyses of memorable puzzles from games like *Monkey Island 1 & 2*, *King's Quest VI*, *Quest for Glory III & IV*, *The Dig*, *Full Throttle*, and many others. Every example links back to its puzzle type in the Playbook, so you can see patterns in action across different contexts.

### FAQ: Solving Design Problems

The final section addresses common design challenges with actionable solutions grounded in documented patterns. "My puzzle feels like fetch quest" becomes "Here's how to add synthesis." "Players are stuck with no feedback" becomes "Use failure-as-information mechanics from these examples."

---

The difference between a voodoo doll puzzle and a cat on a ledge is whether the designer trusts players to learn, adapt, and solve problems using information the game actually provided. One creates advocates who talk about that game for decades. The other creates walkthrough readers.

This handbook exists because adventure games deserve better, and the next generation of designers deserves the craft knowledge that created them.

Let's build more puzzles where the "aha" moment is genuinely earned.

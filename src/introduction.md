# Introduction

## Feeling Smart

Near the end of *Monkey Island 2: LeChuck's Revenge*, you face LeChuck's ghost terrorizing you. No matter what you do, LeChuck finds Guybrush and torchers him. You've gone through the entire game just to be stuck in an endless loop, seemingly. But then, the elevator closes on his beard. That's weird. After harvesting his beard, it gives you, the player a flashback. Days earlier, you had  spent hours constructing a voodoo doll of his henchman Largo—figuring out that you needed thread, a head, some body material, and something dead. Each piece required its own sub-puzzle scattered across the game world.

Now here's LeChuck's floating, invincible specter. The game doesn't explain anything. It doesn't need to.

*Oh*, you think. *Another voodoo doll.*

The rules transfer. You already know how this works. Something of the head, Something of of the Therad, something of the body, something of the dead - the same recipe, not laid out for you, but you get to put the puzzle pieces together. That gentle nudge, when fulfilled, makes you feel smart.

## Feeling Stuck

Years earlier, I sat on my grandfather's desk playing *King's Quest V*. We'd reached what seemed like progress when we hit a wall: sitting in the innkeeper's jail cell, tied up, and game over. This is a classic example of a "dead end" or a "dead man walking" problem, where there is no path forward but to load an old save file and play everything out again. Hours prior, a seemingly unimportant event occured, several screens away from this. A cat was chasing a mouse, caught it, and carried it away. It'd be easy to dismiss this as game flavor, but it turns out that this was important. The player needed to throw a boot at the cat in the nick of time. Nothing tells you this. If the player does this, then a mouse will come and chew through Graham's ropes, saving him.

The only clue about this is that there is a mousehole in the wall in the cellar. This wasn't a puzzle; it was a checkpoint behind a guess.  The experience wasn't challenging in the right way. It was disempowering, and our session ended not with triumph but with the glow of a walkthrough on a monitor.

## Why This Handbook Exists

Those two moments defined my relationship with adventure games. *King's Quest* series played with my grandfather introduced me to interactive storytelling. The frustration of bad puzzles and the satisfaction of good ones showed me that design mattered—that there was actual craft happening beneath the graphics and dialogue.

That realization made me want to be a programmer. More specifically, it made me want to make games where players feel smart, not stuck.

Adventure game puzzle design is fundamentally undertaught. The golden age produced masterworks like *Monkey Island*, *Quest for Glory*, *Grim Fandango*, and *The Longest Journey*—games built by designers who learned through practice and iteration. But nobody wrote the handbook. Nobody documented what made those puzzles work so that the next generation could build on it instead of rediscovering it. I've written on the topic periodically, but far more material explains what not to do than what to do. I hope to aim that


### A note on LLMs

I am a huge advocate of AI powered tools. In fact, this book was written over many sessions of interaction with Qwen3.5-27B. I took this as a specific challenge in authoring this book, for several reasons:

1. LLMs -- event SOTA from OpenAI and Anthropic -- absolutely suck at adventure game design. Ask for advice and you'll get the most generic slop game design recommendation. This handbook should be usable by an LLM to help brainstorm ideas with designers.
2. Qwen3.5-27B is a model that hits way above its weight class. As an open-weight model, and relatively low parameter, if an LLM can help author and use this handbook, then so can the larger models.

This book is not meant to automate the process of adventure game design.  If anything, I think the systems in adventure games *need* a human touch, more than any other game type. But I believe that good games can be made great with the help of this handbook in the hands of an AI practitioner

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

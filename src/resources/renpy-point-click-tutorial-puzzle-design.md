---
source: https://westofentropy.wordpress.com/2020/11/22/renpy-point-click-tutorial-2-puzzle-design/
---

# Renpy Point & Click Tutorial 2: Puzzle Design

Let's take a step to the side on our Point & Click tutorial to discuss what is arguably the most important element of the game genre: Puzzles. Games from practically every genre utilize puzzles in at least some form or another, so puzzle design is not exclusive to Point & Click or its related genres. However, for every puzzle remembered by the fans for its delightful genius, there are ten more that are notorious for the amount of rage and frustration they induce; in fact, the Point & Click / Adventure Game genre is quite infamous for its seemingly asinine puzzles.

# Readings

In my own research for this article, I came across several sources of inspiration. Would it surprise you that some of these are almost 30 years old, and yet modern games still make the same mistakes?

- "Why Adventure Games Suck and What We Can Do About It" by Ron Gilbert, 1989
- "Craft of Adventure" by Graham Nelson, 1995
- "Four-Step Puzzle Design" by Asher Einhorn, 2015
- "The 14 Deadly Sins of Graphic-Adventure Design" by Jimmy Maher, 2015
- "The Philosophy of Puzzle Design" by Josh Bycer, 2020

One thing that should be painfully clear is that what makes "good" design is nowhere near settled, but the lessons from our game-dev predecessors are nonetheless indispensable.

# Fairness, Challenge, & Difficulty

A lot of what goes into "good" puzzle design is understanding the psychology of your players and anticipating how they will attempt your puzzles. If your understanding of your audience is poor, the puzzles you design will likely end up being criticized as unfair or too difficult.

Playtesters are thus essential in puzzle design. It should go without saying, but if you get feedback, heed it. The worst thing you can do is believe that your tester was "just playing the game wrong."

A big part of ensuring that a game is perceived as fair is by ensuring clarity in all aspects. Goals and objectives should be clear. Potentially perilous actions should be indicated as such. An observant player should not be surprised when they make a mistake. Solutions should have breadcrumbs leading to them. Anticipate that any information you give to the player is potentially actionable – have a response ready.

As a designer, your relationship to the player is NOT supposed to be adversarial. Even in well-regarded games notorious for their hostile narrators or punishing challenges, the designers understood how to successfully direct player progression.

# Possibility Space

There are various types of logic and strategies required for puzzle-solving, but they all generally draw on making the possibility space as small as possible. For example, Sudoku relies on deduction – eliminating the possible digits 1 through 9 that a particular square can be, until only 1 digit is left. Inductive reasoning also functions to reduce the possibility space; oftentimes in games, this is accomplished by supplying information to the player, and "suggesting" a connection between the supplied information and the puzzle, thereby reducing the amount of actions the player considers reasonable.

In narrative games, there is a danger of overloading the player with too much information that is either misleading or superfluous. The more backstory you give to your Guard NPC, the more strategies your players will find reasonable in their attempts to get past them.

Of course, not all backstory will be actionable – just because an NPC says that they like hamburgers doesn't mean that the player will obsess over trying to find a non-existent hamburger to give them. However, players are primed to act upon the information you give them.

# Creativity & Fun

Part of the fun of puzzles is solving them in unusual or creative ways. I typically speak of "designing exploits" when discussing unusual puzzle design, since they can feel like the player is pulling a fast one in particularly difficult games.

Oftentimes, you can account for these "exploits" by studying what actions your playtesters try to take, and then choosing to allow the ones that are consistent with the fundamentals of your game. However, I would suggest using these creative solutions in conjunction with the standard "dull" solution, rather than making the creative solution the *single* solution.

Note, too, the creative ways in which players may use puzzle pieces outside of solving the puzzle they were originally intended for. A bucket can be used to hold water, yes, but it can also be used to hold golf balls, or be swung around as a weapon. If your game contains a shotgun and a saw, give the player the ability to make a sawed-off shotgun – if for no other purpose than just because you can!

# Comprehensibility

It should go without saying that puzzles that are incomprehensible are just, well, bad… In general, puzzle comprehensibility is fundamentally linked to understanding your players. If your target audience is mostly children, puzzles involving high-level math or vocabulary will probably be too difficult. Similarly, puzzles relying on culture-specific knowledge may be inaccessible.

Beyond the knowledge-base that you must assume your players are starting with, there is also the need to educate your players on the rules and mechanics specific to the puzzles in your game. As with all onboarding processes, difficulty increases with the complexity of information being given. If your game introduces unique mechanics (such as portals or weird physics), it is critical that players are given proper direction early on.

# Actually Designing the Puzzles

While plenty of material exists to help guide you, there is no definitive process for puzzle design. At a minimum, I recommend bringing your ideas out of your head and putting them on paper or a digital document.

An important thing to note in your brainstorming process is that your puzzles won't exist in a vacuum – each puzzle you design exists alongside every other puzzle that you make available to the player. So, it is generally most effective to design on the macro scale, with all the micro connections between puzzle elements. You can think of these connections as flow (from the player perspective) or dependencies (from the designer perspective).

Many designers prefer to work backwards, coming up with a problem and then laying out the puzzle pieces that need to come together to solve the problem. I tend to take the forward approach by first creating my puzzle pieces, and then coming up with interesting ways for them to be used. Both approaches have their advantages and disadvantages – you generally want to avoid situations where the problem or the solutions feel contrived.

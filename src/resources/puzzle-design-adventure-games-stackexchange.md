---
source: https://gamedev.stackexchange.com/questions/5447/puzzle-design-in-adventure-games
---

# Puzzle design in Adventure games

Creating interesting, original, logical, thoughtful puzzles is an art.

What techniques and methods do you use to create good puzzles?

Do you write storyline before designing puzzles or combine these 2 processes?

# Answers

## Approach 1: Puzzle Classifications and Creative Thinking

Some general inspiring approaches to create puzzles:

1. **Use puzzle classifications** - Various classification systems can stimulate creativity and brainstorming:
   - Adventure UML (Visual representation)
   - Adventure UML (Source article)
   - Mark Newheiser's classification
   - "Making Better Puzzles" by Stephen Granade

2. **TRIZ** - "a problem-solving, analysis and forecasting tool derived from the study of patterns of invention in the global patent literature". It was developed by Soviet engineer and researcher Genrich Altshuller and his colleagues. In English the name is typically rendered as "the theory of inventive problem solving".

3. **Edward de Bono's methods of creative thinking**

## Approach 2: Design Situations, Not Puzzles

I prefer to design a situation, model it as accurately as I can, and allow as many standard manipulations as I can, and let problems and solutions emerge intrinsically and appropriately.

Early examples included Infocom's Suspended and FTL's Dungeon Master, though they were a mix of scripted puzzle logic and semi-realistic game systems.

## Approach 3: Abstraction and Everyday Objects

An interesting way to design puzzles is through abstraction - look at objects around your home or elsewhere and think about how they interact with each other, how they can be manipulated and how they could benefit a goal or aim.

Don't forget to think in three dimensions, as this will help with the design of the puzzle space.

Puzzles can be about a whole variety of things applicable to simple day-to-day living. Some examples: shape, colour, memory, logic, primitive maths (addition, subtraction, multiplication and division), sound, depth, light, interaction of lifeforms.

Be sure to tie your puzzles in with the game world and the immersion of the game itself and you will have some thoroughly engaging mind-bogglers.

## Approach 4: Working Backwards

Experiment. Think about puzzle games you have played that come packaged with a level editor. How would you create a new puzzle using their tool?

Usually by experimenting you can find interesting interactions between puzzle elements.

**Working backwards is also a very intuitive way to create puzzles of any sort.** I would imagine this is the most common technique. When you know the answer it is easy to build complexity on top of it.

Think of IQ puzzle designers. If I give you a sequence 1,9,25,49,_ and ask you what is next you have to use logic to determine what is going on. Where as from the designers point of view it is just matter of making something up that takes no logic at all: ((n*2)-1)^2

So, I would suggest building a tool to edit levels / elements / etc in your game. Experiment yourself, and allow other designers to experiment. You will see interesting patterns emerge.

## Approach 5: Story and the Gap

Adventure games rely heavily on the same motivations as readers or viewers of books or film. For this reason I'd recommend taking a look at the chapters on the section on the inciting incident and the principle of closing the action-expectation gap in Robert McKee's book Story.

The basic premise is that there is something that sets up a disparity between the expected outcome of an action of the hero, and the actual outcome of that action. This is the gap that needs to be closed by the hero during his adventure. This applies to Adventure game puzzle design by being the technique by which you reveal the new puzzles to be solved: If you know you need A, then you first need to find A, or find someone that can tell you where A is.

An important part of any long sequence of actions is that the player should know when they are about to finish the game, make sure it's obvious that they are, otherwise the game will feel like they're being short changed at the end.

## Approach 6: Know Your Audience

As an adventure game developer I've found that adventure gamers are generally split into 2 camps: Those who play for puzzles and those who play for interaction and story. Of course there is some overlap but it might be a good idea to establish your audience before thinking about puzzle design.

Those who play for story generally prefer 'puzzles', in a broad sense, with a heavy grounding in reality. This include the more modern post-adventure games like Heavy Rain and Dreamfall. The key with games like this is not to break the immersion and to consider your 'puzzles' as 'challenges' instead.

On the flip side, the old school adventure gamers tend to want hardcore puzzles like they saw in maniac mansion. The best way to design puzzles like this is to start at the solution and work backwards. This allows you to create multi-faceted solutions like those seen in Day of the Tentacle and the other classic Lucas Arts games.

The biggest advice I can give is to play a lot of adventure games. All puzzles generally fall within 1 of several specific categories with well established tropes. Just observe and imitate, then try to branch your puzzles into something new.

## Approach 7: Brainstorm Unique Interactions

If we are talking about adventure games, then there are some things you can do in puzzles there that you can't do with puzzles in other games. However, puzzles in games have a lot in common. Personally, I find it best to brainstorm, and come up with a unique setup or interaction with npcs or item such, and figure out the best way to make the interaction feel natural.

A puzzle should be designed in a way that if you were to look up the solution, you would think that that totally makes sense within the rules of the universe you've created, and that you could have actually figured it out without just brute-forcing it and using every item on every thing.

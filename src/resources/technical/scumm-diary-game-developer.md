---
source: https://www.gamedeveloper.com/design/the-scumm-diary-stories-behind-one-of-the-greatest-game-engines-ever-made
---

# The SCUMM Diary: Stories behind one of the greatest game engines ever made

It's rare that the mention of a video game engine can elicit emotions nearly as strong as the games that it powers, but SCUMM is special in a lot of ways. SCUMM co-creator Aric Wilmunder tells the stories behind the well-regarded engine.

SCUMM might "just" be a video game engine -- but it's a video game engine that can elicit emotions nearly as strong as the games that it powers. 

When you talk about of the heyday of LucasArts adventure games, you have to talk about SCUMM, the "Script Creation Utility for Maniac Mansion" that powers some of the most memorable games ever made, such as Full Throttle, Day of the Tentacle and Sam & Max Hit the Road, and, of course, Maniac Mansion.

Aric Wilmunder, along with famed game designer Ron Gilbert, built SCUMM, in effect providing a way for games like these to exist. Wilmunder and journalist Mike Bevan recently got together over email, discussing SCUMM and the stories around it. Here are choice pieces of that conversation, all in the words of Wilmunder.

# On the evolution of the engine

One of the capabilities that distinguished LucasArts from most other developers was that many of us came from a mainframe background and so we developed tools and compilers on Sun workstations and then created hardware that allowed us to download the code and data to our target machines. This started with the Atari 800 and when Ron [Gilbert] was hired to do C64 work a similar system was developed for that platform as well.

The key benefit was that we could develop tools in C, or in the case of SCUMM using YACC, to process and then tokenize the code. Most developers were using the same machine to write and run their code, so their tools could only be as powerful as their target machine.

The evolution of features started very early. I was the first internal developer to work on PCs and at the time the existing tools and compilers were very crude. For example, the C compilers that we had been using would give very detailed messages if an error was encountered. On the PC you would get a message like "File: walk.c Line:409 Error: 4004" and your options at this point were to look at the line of code and try to figure out the problem or get out the manual to convert the error code into something meaningful.

# Speaking in SCUMM

SCUMM was a language that was compiled into a tokenized form. For example, the command 'walk dr-fred to laboratory-door' would convert the Walk command into a single byte command. The next byte was which actor or character the command was for, and then the object 'laboratory-door' was converted into a 2-byte number so the entire command was reduced into 4 bytes of data. As you can see, the tokenized language was very efficient and the interpreter never had any understanding that one actor or another was "dr-fred" he was simply an actor-number, so we always tried to avoid hard-coding any specific information about a game directly into the interpreter.

# SCUMM's multi-tasking

Probably the most distinctive part of SCUMM was that it was multi-tasking. This meant that multiple scripts could effectively run simultaneously. You might create a clock on the wall in Zak McKracken's office and have it animate. There would be a single, very simple script just for the clock that would tell the animation engine to change from one image of the clock to the next, tell the sound engine to play the "tick" sound, and then tell the script to "sleep-for 1 second" and then repeat. The Sleep commands were deceptively simple commands that told the system that the script was complete, and to come back some period of time later and keep running the script from where you left off.

# Learning SCUMM

At the time, all of the designers were also programmers and SCUMM, while unique in many aspects, was also pretty easy to learn and code. There was no manual for Maniac or Zak but before Monkey a group of 6-8 new scripters were hired and a manual was created and a one-week training class ("Scumm University") was organized. For the training, Ron would take the most recent game and simply delete all but one room and put objects in that room that represented a range of capabilities. 

New scripters, or "Scummlets," would start in that room and learn the fundamentals and within a few days they were taught how to add more rooms, create walk boxes, some had artistic talent and would create their own animations, others would focus on writing dialog.

# SCUMM's longevity

I don't think that any of us thought that SCUMM games would be around this long. I worked on the system for about 12 years and I tried really hard to 'future proof' my code by testing across as many computers as I could. When developing under Windows, I would test it under Windows NT, even if that wasn't one of the target machines, but NT required stricter coding standards. So if it ran under NT, chances were improved that it would run under other future Windows operating systems.

# Advantages of interpreted languages

Ron had worked with interpreters for some time. He developed a series of new commands that could be added to Commodore Basic so he had reverse engineered that system. When developing Maniac, he thought that this was the best approach, and Chip Morningstar had a background in language compilers so the language grew mostly out of their collaboration. 

Another advantage of interpreted languages is that they migrate from machine to machine very easily. The interpreter was written in very portable C code and would simply parse through the series of command tokens. One huge benefit was that since the entire game was data, when developing for new machines, you knew that your data was correct, so you could eliminate that entire portion when looking for bugs and simply focus on the small amount of code needed to get a particular machine working.

# The SCUMM advantage

One of the great benefits of SCUMM was how quickly a game could be prototyped. The designer would have ideas for rooms and locations and the lead background artist could start doing sketches. When enough of the sketches were done, they would get scanned in and you could very quickly add and connect them up using SCUMM. Usually within just a few weeks of the start of the design process, there would be many dozens of rooms, often drawn as simple pencil sketches, and we would usually take the actors from another game and start wiring them up.

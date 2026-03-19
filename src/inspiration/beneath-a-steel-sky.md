# Beneath a Steel Sky (1994)

Beneath a Steel Sky is a 1994 Revolution Software point-and-click adventure featuring an inventory-free interface where player character Max and floating robot companion Joey solve puzzles through dialogue, exploration, and LINC-space navigation. The game's innovative touch-screen-style control scheme and non-lethal design eliminated dead ends entirely—information gathering always progressed forward—and introduced pattern-based digital puzzles alongside traditional environmental manipulation that would influence later LucasArts titles like Grim Fandango [Mitch Shaw].

## At a Glance

| | |
|---|---|
| **Release Year** | 19994 |
| **Developer** | Revolution Software |
| **Core Mechanic** | Dialogue-driven companion coordination; LINC-space pattern mini-games |
| **What players found enjoyable** | "The game has no false steps. If it seems logical to try something, you can do it" [Mitch Shaw]. The companion-based design where Joey acts independently creates multi-character puzzles without complex switching mechanics. One walkthrough notes: "I can't think of anywhere in the game where you suffer any ill effects from saying everything you can to someone"—dialogue exhaustiveness is rewarded, never punished |

---

## Puzzle 1: Dr. Burke's Holographic Receptionist

### Problem

The player must enter Dr. Burke's office for a Schriebmann Port installation but faces a holographic receptionist who refuses entry, stating she cannot let "people" in without appointments. Max has no special credentials—only Joey, the floating robot companion with dialogue options including "Natural Charm" [Mitch Shaw].

![Holographic receptionist at Dr. Burke's office entrance](./beneath-a-steel-sky-receptionist.png)

### What Makes It Rewarding

This is a comedy-based sensory exploitation puzzle where the blocking NPC has a perception limitation—she cannot see Joey as human, making him invisible to her access control system. The player discovers this limitation through exhaustive dialogue: after being refused entry, they learn the receptionist's specific criteria (only refuses "people"), then exploit it by having Joey use his NATURAL CHARM dialogue option. Unlike typical Sensory Exploitation puzzles where items match NPC weaknesses, this uses a companion's inherent trait—non-human status—as the bypass method. The tone-shifting from bureaucratic denial to mechanical vulnerability exemplifies BAS's humorous approach: "Ask JOEY to talk to her. Tell him to use his NATURAL CHARM" [Mitch Shaw].

### Solution

The player has Joey use Natural Charm on the holographic receptionist; she allows both companions entry, unaware a robot bypassed her authority.

### Steps

1. Talk to the holographic receptionist until she refuses entry (citing no appointment)
2. Note her specific refusal criteria: she blocks "people" only
3. Ask Joey to talk to the receptionist using his Natural Charm option
4. The door opens automatically after Joey's dialogue succeeds
5. Enter Dr. Burke's office while receptionist remains unaware of being bypassed

[Sensory Exploitation](../puzzles/sensory-exploitation.md) — The holographic receptionist has a perceptual blind spot (non-human entities). This differs from Distraction Physics where environmental manipulation creates the opportunity; here, the NPC's sensory weakness is directly targeted by companion action.

---

## Puzzle 2: LINC-Space Password System

### Problem

After gaining entry to LINC-Space through various interfaces, the player encounters a restricted door guarded by an eye-scanner interface. To unlock it, two password documents must be used in sequence. The passwords are visually represented as colored swirling patterns (green and red) obtained from decrypted documents throughout earlier progression [Mitch Shaw].

![LINC-Space password interface showing eye scanner](./beneath-a-steel-sky-linc-password.png)

### What Makes It Rewarding

This is the first adventure game implementation of abstract symbol-to-interface action translation where visual patterns directly map to menu sequence actions. The player learns a system—each document represents a discrete input value—then applies it exhaustively: using PASSWORDS "to get to the DOOR on the NORTH side" requires selecting both green and red swirls in correct order from an on-screen palette [Mitch Shaw]. Unlike pure Pattern Learning where rules are discovered through trial, here the visual symbols on documents clearly correspond to interface options (same swirling color patterns appear as clickable icons). This establishes a direct, non-arbitrary connection between information gathered and action required—no guesswork, only pattern matching across domains (physical documents → LINC-Space interface).

### Solution

The player uses two password documents displaying colored swirls by selecting matching colors on the door interface in correct sequence.

### Steps

1. Enter LINC-Space through an interface terminal
2. Navigate north until reaching a locked door with eye-scanner interface
3. Use DECRYPT program on previously collected documents revealing password patterns
4. The passwords appear as green swirl and red swirl colored symbols
5. Select the two colors in correct order on the door's interface menu bar
6. Door unlocks, granting access to restricted area containing VIRUS

[Symbol Code Translation](../puzzles/symbol-code-translation.md) — Visual symbols on decrypted documents (colored swirls) translate to interface actions via shape/color matching and order. Each password represents discrete input values applied exhaustively. This distinguishes from Pattern Learning: the rule is one-shot application of discovered codes, not learning a system to apply in multiple contexts.

---

## Puzzle 3: St. James Club Entry

### Problem

The player must infiltrate the exclusive St. James Club to rescue captive Anita but faces three independent barriers: (1) Doorman requiring sponsorship from Mrs. Piermont, (2) Guard Officer Blunt patrolling constantly during band performance, and (3) Dog Spunky barking if food is left unattended outside. Each obstacle requires separate information gathering from different NPCs (Gardener/Eduardo on dandelions, Piermont on club access requirements, Band Colston on fingerprints) before synthesis [Mitch Shaw].

![St. James Club entrance with doorman and pool area](./beneath-a-steel-sky-st-james.png)

### What Makes It Rewarding

This is a canonical Multi-Faceted Plan puzzle where independent requirements must be gathered from disparate sources then combined in precise coordination. The "Gardener" admits he isn't one after the player asks the local boy about dandelions (he claimed they should be blue, but boy says yellow), revealing Eduardo and his information on Anita's capture location [Mitch Shaw]. Independently, the player learns Mrs. Piermont needs to sponsor entry, her dog Spunky responds to Dog Biscuits found in her apartment after VIDEOTAPE triggers monitor barking, and Officer Blunt leaves his post when Spunky is rope-launched into the pool. The synthesis moment—"put the DOG BISCUITS on the PLANK" [Mitch Shaw]—requires all threads: bait placement timing, BLUNT's distraction window, and previously-obtained SPUNKY rope action. Unlike Meta-Puzzle Construction where each step enables the next, all requirements here can theoretically gather in any order; coordination only matters at execution.

### Solution

The player creates a multi-stage distraction using dog biscuits as bait, launches Spunky into the pool with the rope to draw Officer Blunt away, then enters the club during his absence to find Anita.

### Steps

1. Talk to Mrs. Piermont about club sponsorship requirements; schedule her endorsement
2. Obtain Videotape from Lamb's apartment earlier in game
3. Return to Piermont's apartment; insert Videotape in VCR while she calls club
4. When Spunky barks at monitor, examine his bowl and take Dog Biscuits
5. Locate bricks and plank near club area (from construction work)
6. Place Dog Biscuits on the Plank as bait for distraction setup
7. Enter St. James Club while band plays; talk to Colston then leave
8. When BLUNT abandons post to help Piermont with Spunky incident, enter Cathedral through unguarded entrance
9. Access locker room and find Anita behind middle door

[Multi-Faceted Plan](../puzzles/multi-faceted-plan.md) — Independent requirements gathered from different sources (sponsorship, biscuits, plank placement, timing) synthesized at execution. The Distraction Physics element—using dog's food response to break guard pattern—is a component within the larger multi-faceted plan rather than the complete solution.

---

## Other Puzzles

| Name | Problem & Solution | Pattern Type |
|------|-------------------|--------------|
| Joey Robot Shell Repair | "Put the welder shell on him" using WRENCH from machine + disabled FUSE BOX stores access to give Joey functional body [Mitch Shaw] | [Meta-Puzzle Construction](../puzzles/meta-puzzle-construction.md) |
| Anchor Grappling Hook | Cable cut from power plant elevator combined with anchor statue (welded loose by Joey) forms escape tool to adjacent building: "Use the ANCHOR with the CABLE to form a GRAPPLING HOOK" [Mitch Shaw] | [Meta-Puzzle Construction](../puzzles/meta-puzzle-construction.md) |
| Lamb Factory Tour Trap | Ticket from travel agency obtained via magazine; tour ends when machine broken (earlier by player), Lamb leaves, assets frozen through LINC-Space D-Linc security system for cat/room access | [Meta-Puzzle Construction](../puzzles/meta-puzzle-construction.md) |
| Hologram Charm Entry | "Ask JOEY to talk to her. Tell him to use his NATURAL CHARM" bypasses receptionist who blocks only humans | [Sensory Exploitation](../puzzles/sensory-exploitation.md) |
| Power Plant Button Chaos | Joey pushes first button, player pushes second simultaneously; "A PIPE will burst, and the OLD MAN will leave"—enables cable and light bulb collection | [Distraction Physics](../puzzles/distraction-physics.md) |
| LINC-Space Blind Eye Hack | BLIND program applied to security eyes temporarily disables surveillance; timing-dependent acquisition of TUNING FORK while eyes remain blinded (white state) | [Timed Consequence](./timed-consequence.md) |
| Reactor Linc Card Retrieval | Radiation suit from Anita's death scene locker worn before entering reactor lobby; enables accessing otherwise lethal environment for secondary LINC card | [Cross-Realm Logistics](../puzzles/cross-realm-logistics.md) |
| Vein/Plaster Brute Force | Crowbar drives into plaster behind swelling vein, brickwork exposed, crowbar levered again with brick as hammer—"Use the BRICK on the CROWBAR" to breach wall [Mitch Shaw] | [Meta-Puzzle Construction](../puzzles/meta-puzzle-construction.md) |
| Temperature Tank Room Escape | Control unit reduces temperature; player stands on aperature while pulling metal bar loosens grate enough to collapse for android distraction | [Multi-Character Coordination](../puzzles/multi-character-coordination.md) |
| Android Character Data Download | Circuit board retrieved from destroyed medical robot placed in cabinet; console DOWNLOAD CHARACTER DATA transfers Joey's data, RUN STARTUP PROGRAM transforms him into Ken | [Meta-Puzzle Construction](../puzzles/meta-puzzle-construction.md) |

---

### References

[Mitch Shaw] Mitch Shaw, Preter Human Walkthrough (1994). https://docs.preterhuman.net/BENEATH_A_STEEL_SKY_WALKTHROUGH

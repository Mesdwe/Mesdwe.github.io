# Down Current

<p class="lede">A 3D narrative game developed in Unreal Engine 4.</p>

![Down Current](https://static.wixstatic.com/media/57c5d6_5d1b8a87177642bfa15576777680a7bd~mv2.png/v1/fill/w_930,h_927,q_90,enc_avif,quality_auto/57c5d6_5d1b8a87177642bfa15576777680a7bd~mv2.png){ .project-hero }

<div class="hero-actions">
  <a class="button button-primary" href="https://ap17.itch.io/downcurrent">Download Here</a>
</div>

**June 2022 - August 2022**

Down Current is a 3D narrative game created as part of the final assessment of the MProf in Games Development at Abertay University.

It was developed within 12 weeks using Unreal Engine 4, under mentorship from The Chinese Room.

I was the lead programmer in a team of nine Master's students. My work included implementing player logic, a custom spell system, UI implementation, and related gameplay systems.

## Contributions

### Player Climbing

I implemented climbing mechanics for a flexible first-person climbing experience, expanding player movement vertically. The system lets the player move horizontally and vertically, rotate the camera while climbing, and automatically climb up when reaching the top of a surface.

### Spell Casting System

This is the player's primary mechanic. By inputting the correct button sequence, the player can direct Genhu to purify toxic sludge areas and assist exploration. I implemented the system structure and the player input side, leaving Genhu's specific behavior decoupled for another programmer.

### Input Device Update

Down Current was designed for both PC and console. Players can use keyboard and mouse or a controller. I created an event listener for input device updates so UI icons and text could change when a new controller is connected during play.

### Interaction System

Implemented the interaction system, allowing the player to interact with objects in the scene and unlock corresponding entries in the journal.

### Linear Dialogue System

Implemented short dialogue lines that appear when the player interacts with the Parched NPCs. Each Parched character has different moods and triggers different dialogue categories depending on their mood.

### Level Streaming

Implemented level streaming to load and unload maps asynchronously during splash and loading screens.

## Credits

- Production: [John Venters](https://www.johnventers.com/)
- Level and gameplay design: [Neve O'Neill](https://noneill45.wixsite.com/portfolio)
- Narrative and sound design: [Jak Knowles](https://knowlesjak.wixsite.com/jaksite)
- Character art: [Emily Blane](https://www.artstation.com/emilyblane)
- Environment art: [Aaron Petherbridge](https://www.artstation.com/aaronpetherbridge) and [Elena Severson](https://www.artstation.com/altmoon)
- Technical art and visual effects: [Innes White](https://innesthetic.com/)
- Programming and engineering: Linxiao "Damien" He and [Mingyang "Morgan" Wang](https://wangmy25.wixsite.com/wangmy25)
- Audio consultants and contractors: [Avery Mullen](https://www.averymullendev.com/), [Robbie Peden](https://www.robbiepeden.com/), and Jan Huss

# Florere Memoriae

<p class="lede">A Victorian flower-language game developed in Unreal Engine 4.</p>

![Florere Memoriae](https://static.wixstatic.com/media/57c5d6_6f2523c2863c421fbadf7a90c7d2eb75~mv2.png/v1/fill/w_786,h_783,q_90,enc_avif,quality_auto/57c5d6_6f2523c2863c421fbadf7a90c7d2eb75~mv2.png){ .project-hero }

<div class="hero-actions">
  <a class="button button-primary" href="https://baileys.itch.io/flor">Download Here</a>
</div>

**March 2022 - June 2022**

Inspired by the Victorian era, Florere Memoriae creates a journey of nostalgia and love using Victorian flower language in a forest painted before the player's eyes. With each discovery, the forest reveals more of its colors, and each relieved memory makes new flowers bloom in the world.

It was developed within ten weeks using Unreal Engine 4. I was the only programmer in a team of six students and oversaw the implementation of all gameplay mechanics.

## Contributions

### Interactable Items

There are two types of interactable items in the game: objects that the player collects during the game and flowers. I implemented the base class structure that other interactable items derive from.

### Logbook System

The logbook gives players more information about flowers collected during the game. I designed a data structure for plant data so each logbook slot could store the needed images, names, descriptions, and categories.

### Visual Effects

Implemented a dynamic material transition effect to make state changes feel more natural. The effect uses pixel depth to calculate the distance between rendered mesh pixels and the camera, allowing generation speed to vary by distance.

## Credits

- Production: [Mathew Lornie](https://mathewl8.wixsite.com/mathewlornie-games)
- Level and narrative design: [Bailey Sabin](https://baileyasabin.wixsite.com/website)
- Gameplay design: Yuxi Chen
- UI design: Harry McGuigan
- 3D artist: [Elena Severson](https://elenatexturesandmore.weebly.com/)
- Programming: Damien He

# 3D Action RPG, final project

The finished project from [Godot GameDev Tutorial: 3D RPG Game](https://www.youtube.com/watch?v=ouqgx1qKSdY), the free course by CodingQuests on the freeCodeCamp YouTube channel.

It has a third-person player with a camera controller, a skeleton monster run by a state machine and an AnimationTree, combat in both directions, a custom UI theme and game-over screen, an inventory with equipment and a profile, item pickups, a shop, level ups, and VFX.

Built with **Godot 4.2**, Forward Plus renderer. Newer Godot 4 versions open it too.

## Quick start

1. Clone or download this repository.
2. Open Godot 4, click Import, and pick the `project.godot` file.
3. Press F5.

Starting from scratch instead? The starter project is here:
https://github.com/CodingQuests/3D-Action-RPG-Starter-Project

## Sounds and font

The course uses two assets whose licenses do not allow sharing the files, so this repository ships stand-ins. The project runs as it is.

- **Sound effects.** `Assets/SFX/` holds three simple placeholder sounds made for this repository, free to use for anything. The course uses the free [Minifantasy Dungeon SFX pack](https://leohpaz.itch.io/minifantasy-dungeon-sfx-pack) by Leohpaz. To hear it: download the pack, copy its sound files into `Assets/Minifantasy_Dungeon_SFX/`, then drag `07_human_atk_sword_1.wav` and `26_sword_hit_1.wav` onto the Stream of the player's `damage` and `hit` nodes, and `04_sack_open_1.wav` onto the item object's `pickup` node.
- **UI font.** The theme uses [Pixel Operator 8](https://www.dafont.com/pixel-operator.font) (CC0) from `Assets/fonts/`. The course uses [Joystix](https://www.1001fonts.com/joystix-font.html) by Typodermic Fonts. Its free license does not cover shipping the font inside a game, so read it before you swap it in.

## Credits

| Asset | Author | License |
|---|---|---|
| [KayKit Adventurers](https://kaylousberg.itch.io/kaykit-adventurers), [Dungeon Remastered](https://kaylousberg.itch.io/kaykit-dungeon-remastered), [Skeletons](https://kaylousberg.itch.io/kaykit-skeletons) | [Kay Lousberg](https://www.kaylousberg.com) | CC0 |
| [16x16 RPG Item Pack](https://alexs-assets.itch.io/16x16-rpg-item-pack) (`Assets/16x16 RPG Item Pack/`) | Alex's Assets | CC0 |
| [Golden UI: Bigger Than Ever Edition](https://opengameart.org/content/golden-ui-bigger-than-ever-edition) (`Assets/ui_big_pieces.png`) | [Buch](https://opengameart.org/users/buch) | [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/). Changes to this image must be shared under the same license. |
| [Pixel Operator 8](https://www.dafont.com/pixel-operator.font) (`Assets/fonts/PixelOperator8.ttf`) | Jayvee Enaguas | [CC0](https://creativecommons.org/publicdomain/zero/1.0/) |
| Hit and impact VFX (`VFX/`), following [GODOT 4: Hits and Impact Effects Tutorial](https://www.youtube.com/watch?v=GeParYI2J6I) | [Le Lu](https://www.youtube.com/@Le_x_Lu) | See the original tutorial |

## Build the controller yourself

Weighty 3D movement, a dodge roll and lock-on, written a step at a time in the browser with your code checked as you go:

https://codingquests.io/quests/3d-roguelike-controller?utm_source=github&utm_medium=readme&utm_campaign=3d-action-rpg-final

Built by [Coding Quests](https://codingquests.io?utm_source=github&utm_medium=readme&utm_campaign=3d-action-rpg-final), where you learn Godot by building games instead of watching someone else build one.

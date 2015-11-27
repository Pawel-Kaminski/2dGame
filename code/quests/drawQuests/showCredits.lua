function showCredits()
    local credits =
[[Pomysł i realizacja
Paweł Kamiński

Gra wykonana z wykorzystaniem frameworka LÖVE w języku Lua.
Wykorzystano biblioteki: Simple Tiled Implementation, HUMP oraz TLfres.
Mapy tworzone z wykorzystaniem programu Tiled Map Editor.

Wykorzystano grafiki:
Vivi Warrior Vector
Sprite Vector art in Inkscape in Ubuntu
Autor: Anderson dos Santos
http://opengameart.org/content/vivi-warrior-vector
Na licencji CC-BY-SA 3.0

Arrow_0.png
Autor: Michael J Pierce
FoxTango.Tumblr.com
http://opengameart.org/content/arrow-0

army.png, army_small.png
zw_tilesets
Autorzy: darian, elara, ghoulsblade, hagish, isha
http://opengameart.org/content/zwischenwelt-tileset
Na licencji CC Zero

background.png, bg.png
Hatfield Forest
This file is licensed under the Creative Commons Attribution-Share Alike 3.0 Unported license.
Autor: RicDod

background2.png, bg2.png
Autor: David Revoy / Blender Foundation
https://commons.wikimedia.org/wiki/File:Environments-21-cave.png
This file is licensed under the Creative Commons Attribution-Share Alike 3.0 Unported license.

grass.bmp
Autor: Kevin Cherry
http://protohacks.net/textures.php5
These textures are FREE to use however you like in personal and/or profitable projects.

house_9.png
Autor: PepperRacoon
http://opengameart.org/content/hut
Na licencji CC-BY 3.0

tree-1.png, tree-2.png
Autor: domsson
http://opengameart.org/content/two-pixelish-tree-sprites
Na licencji CC Zero

teleporter_active_scaled.gif
Autor: Clint Bellanger
http://opengameart.org/content/teleporter-circle
Na licencji CC-BY 3.0

daisies.png
© 2005-2013 Julien Jorge <julien.jorge@stuff-o-matic.com>
http://opengameart.org/content/daisies
na licencji CC-BY-SA 3.0

explosion2.png
Free to use in any commercial or non-commercial project!
Credits for http://wrathgames.com/blog [WrathGames Studio]

dirt.png
dirt1_brown_qubodup_Lamoot_ccby3.png by qubodup <http://opengameart.org/users/qubodup> licensed under ccby3 <http://creativecommons.org/licenses/by/3.0/> based on <http://opengameart.org/node/7805> by Lamoot <http://opengameart.org/users/lamoot>

Warlock's Gauntlet artists - rAum, jackFlower, DrZoliparia, Neil2D

CC-BY 3.0 by Robert Brooks
http://opengameart.org/content/thorn-bushes
www.gamedeveloperstudio.com

Dorver
Autorzy: Manveru, Dorimen
http://opengameart.org/content/dorver-monster
Na licencjach CC-BY 3.0, CC-BY-SA 3.0, GPL 3.0, GPL 2.0

by Pepper Racoon
CC-BY 3.0
http://opengameart.org/content/forest-spirit-0

CC0 by bevouliin
http://opengameart.org/content/free-game-obstacles-spiky-monster-bevouliin-game-asset
Get more game assets (game characters, backgrounds, game kits, and other game arts) at:
http://bevouliin.com

CC0 by TinyWorlds
http://opengameart.org/content/slime-0

CC0 by virgatetomb
http://opengameart.org/content/baby-dragon-concept-vectorized

CC-BY 3.0
http://opengameart.org/content/painted-sara
Painted by laetissima, inspired by Mandi Paugh's Sara (http://opengameart.org/content/sara-wizard)

Flamelings CC-BY 3.0, GPL 3.0, GPL 2.0 by surt
http://opengameart.org/content/flamelings
Sprites made by leeor_net CC-BY 3.0
http://opengameart.org/content/flamelings-sprites

golems.png CC-BY 3.0, CC-BY-SA 3.0 by umask007
http://opengameart.org/content/fireicestone-golem
The textures used to bake the normal and diffuse map are by user yughues.
The original model can be found on: http://www.blendswap.com/blends/view/68618

sdw.png
CC0 by killyoverdrive
http://opengameart.org/content/wizard-warrior

Wykorzystano czcionki:
Droid Sans Mono oraz Century Schoolbook L Medium - na wolnych licencjach oraz
DJB I Love a Ginger - bezpłatne wykorzystanie w celu niekomercyjnym.

Wykorzystano muzykę:
Bury My Visions - Unleashed, CC-BY-SA 3.0 by Trevor Lentz
Bury My Visions - Flicker, CC-BY-SA 3.0 by Trevor Lentz
A Singular Perversion - w domenie publicznej
El Postre.ogg, CC-BY 3.0 by Patrick de Arteaga
Otto Halmén - Sylvan Waltz
Utwór na licencji CC-BY 3.0 lub OGA-BY 3.0 (do wyboru)
Dostępny na stronie: http://opengameart.org/content/sylvan-waltz-standard-looped-version"]]

    love.graphics.setColor(255, 255, 255)
    love.graphics.printf(
        credits,
        100, 50, 2000, "left", 0)
end
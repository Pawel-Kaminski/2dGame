    local creditsPart1 =
[[POMYSŁ I REALIZACJA
Paweł Kamiński

Gra stworzona w ramach pracy inżynierskiej:
"Stworzenie gry RPG z wykorzystaniem grafiki 2D" /
"Creation of an RPG game using 2D graphics"

Gra wykonana z wykorzystaniem frameworka LÖVE w wersji 0.9.2 w języku Lua.
Wykorzystano biblioteki: Simple Tiled Implementation, HUMP oraz TLfres.
Mapy tworzone z wykorzystaniem programu Tiled Map Editor.

GRAFIKA
Przeciwnicy:
_MAP.png - zw-tilesets, CC0 by darian, elara, ghoulsblade, hagish, isha,
http://opengameart.org/content/zwischenwelt-tileset
thornbush_used.png - CC-BY 3.0 by Robert Brooks,
http://opengameart.org/content/thorn-bushes, www.gamedeveloperstudio.com
creature.png - CC-BY 3.0, CC-BY-SA 3.0, GPL 3.0, GPL 2.0 by Manveru, Dorimen
http://opengameart.org/content/dorver-monster
forest_guardian.png - CC-BY 3.0 by Pepper Racoon,
http://opengameart.org/content/forest-spirit-0
cactus_scaled.png - CC0 by bevouliin,
http://opengameart.org/content/free-game-obstacles-spiky-monster-bevouliin-game-asset,
Get more game assets (game characters, backgrounds, game kits, and other game 
arts) at: http://bevouliin.com
forest_creature.png - CC0 by TinyWorlds, http://opengameart.org/content/slime-0
dragon.png - CC0 by virgatetomb,
http://opengameart.org/content/baby-dragon-concept-vectorized
air_guardian.png - CC-BY 3.0 Painted by laetissima,
inspired by Mandi Paugh's Sara (http://opengameart.org/content/sara-wizard),
http://opengameart.org/content/painted-sara
fire_guardian_scaled.png - Flamelings CC-BY 3.0, GPL 3.0, GPL 2.0 by surt,
http://opengameart.org/content/flamelings,
Sprites made by leeor_net CC-BY 3.0,
http://opengameart.org/content/flamelings-sprites
iceGolem.png - CC-BY 3.0, CC-BY-SA 3.0 by umask007,
http://opengameart.org/content/fireicestone-golem,
The textures used to bake the normal and diffuse map are by user yughues.
The original model can be found on: http://www.blendswap.com/blends/view/68618
Neil.png - CC0 by killyoverdrive, http://opengameart.org/content/wizard-warrior]]

    local creditsPart2 =
[[Przedmioty:
pt1_scaled.png, pt4_scaled.png, pt3_scaled.png - CC0 by Rafaelchm,
http://opengameart.org/content/potion-bottles
health_potion_scaled.png, mana_potion_scaled.png - CC-BY 3.0 by Clint Bellanger,
http://opengameart.org/content/health-and-mana-potion
mais_scaled.png - CC-BY-SA 3.0 GPL 3.0 GPL 2.0 by Onsemeliot,
http://opengameart.org/content/corn-resp-maize
scroll_scaled.png - CC-BY-SA 3.0 by Endymian, www.gamersuniversity.com,
http://opengameart.org/content/burnt-scroll
earth.png, fire.png, ice.png, wind.png - CC-BY 3.0 by prdatur,
http://opengameart.org/content/basic-gems-icon-set-remix

Postaci:
ViviM.png - CC-BY-SA 3.0 by Anderson dos Santos,
http://opengameart.org/content/vivi-warrior-vector
Base2_used.png, Lidenon.png - CC-BY 3.0, CC-BY-SA 3.0, OGA-BY 3.0
by Stephen Challener (Redshrike), hosted by OpenGameArt.org,
http://opengameart.org/content/first-person-dungeon-crawl-protagonist
118053.png - CC-BY 3.0 by Josh Thompson,
http://opengameart.org/content/wesnoth-imperial-warden,
Deatlana.png - CC-BY-SA 3.0, GPL 3.0,
http://opengameart.org/content/lpc-heroine-2
scaled.png - CC-BY 3.0 by Tracy, http://opengameart.org/content/animated-witch]]

    local creditsPart3 =
[[Pozostałe:
background.jpg - CC-BY-SA 2.0 by Ishtaure Dawn,
Fantasy-Flowers-Forest-Lamps-Nature-Night-Red-Roses-River,
https://www.flickr.com/photos/ishtaure-dawn/16035509857
Arrow_0.png - CC-BY 3.0 by Michael J Pierce, FoxTango.Tumblr.com,
http://opengameart.org/content/arrow-0
bg2.png - CC-BY 3.0 by David Revoy / Blender Foundation,
https://commons.wikimedia.org/wiki/File:Environments-21-cave.png
daisies.png - CC-BY-SA 3.0 © 2005-2013 Julien Jorge 
<julien.jorge@stuff-o-matic.com>, http://opengameart.org/content/daisies
dirt.png - CC-BY 3.0 by qubodup, http://opengameart.org/users/qubodup, based on
http://opengameart.org/node/7805 by Lamoot <http://opengameart.org/users/lamoot>
electrostatics.png, firestream.png, hellfire.png, icearrow.png, icecircle.png -
CC-BY 3.0 by Warlock's Gauntlet artists - rAum, jackFlower, DrZoliparia, Neil2D
explosion.png - Free to use in any commercial or non-commercial project!
Credits for http://wrathgames.com/blog [WrathGames Studio]
fire.png, fireball.png - CC-BY 3.0 by Pow Studios,
http://powstudios.com/content/fire-animation-pack-1
grass.bmp - by Kevin Cherry, http://protohacks.net/textures.php5,
These textures are FREE to use however you like in personal and/or profitable projects.
teleporter_active_scaled.gif - CC-BY 3.0 by Clint Bellanger,
http://opengameart.org/content/teleporter-circle
tree-1.png, tree-2.png - CC0 by domsson,
http://opengameart.org/content/two-pixelish-tree-sprites

Czcionki:
DroidSansMono.ttf - Apache License, Version 2.0
ILoveAGinger.ttf - dostępna bezpłatnie do użytku niekomercyjnego,
http://darcybaldwin.com/

MUZYKA
Bury My Visions - Unleashed, Flicker, CC-BY-SA 3.0 by Trevor Lentz
A Singular Perversion, utwór w domenie publicznej
ElPostre, CC-BY 3.0 by Patrick de Arteaga
Otto Halmen - Sylvan Waltz, CC-BY 3.0 OGA-BY 3.0
Victory Theme, Divine Madness, Raindrops of a Dream, An Adventure Awaits - 
CC0 by HalconicFalconX, open.commonly.cc
Battle Theme A by cynicmusic.com pixelsphere.org
Flaming Soul, Metal Ages, Small Epic CC-BY 4.0 International
by Marcelo Fernandez http://www.marcelofernandezmusic.com
Blackmoor Colossus Loop, The Last Encounter Long Loop - Music by Matthew Pablo
http://www.matthewpablo.com]]

function showCreditsPart1()
    love.graphics.setColor(255, 255, 255)
    love.graphics.printf(
        creditsPart1,
        100, 50, 2000, "left", 0)
end

function showCreditsPart2()
    love.graphics.setColor(255, 255, 255)
    love.graphics.printf(
        creditsPart2,
        100, 50, 2000, "left", 0)
end

function showCreditsPart3()
    love.graphics.setColor(255, 255, 255)
    love.graphics.printf(
        creditsPart3,
        100, 50, 2000, "left", 0)
end

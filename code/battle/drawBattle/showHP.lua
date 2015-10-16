--WARNING: This file uses global variables:
--Player, battleSpriteLayer
require "battle.drawBattle.showHP.showEnemiesHP"
require "battle.drawBattle.showHP.showPlayerHP"

function showHP()
    showPlayerHP()
    showEnemiesHP()
end
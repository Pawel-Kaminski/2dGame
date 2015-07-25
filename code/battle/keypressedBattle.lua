--WARNING: This file uses global variables:
--selectingEnemy, displayingMenu, displayingActions, victory, defeat

require "battle.keypressedBattle.displayActions"
require "battle.keypressedBattle.displayMenu"
require "battle.keypressedBattle.lose"
require "battle.keypressedBattle.selectEnemy"

function keypressedBattle(key)
    if selectingEnemy then
        selectEnemy(key)
        return
    elseif displayingMenu then
        displayMenu(key)
    elseif displayingActions then
        displayActions(key)
    elseif victory then
        if key == "return" then
        love.audio.stop()
        Gamestate.switch(mapState)
    end
    elseif defeat then
        lose(key, arrowY)
    end
end
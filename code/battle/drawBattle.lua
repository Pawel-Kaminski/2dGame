--WARNING: This file uses global variables:
--battleArena, displayTurnInfo, victory, defeat, displayingMenu,
--displayingActions, displayItems, escapeBattle

require "battle.drawBattle.showTurnInfo"
require "battle.drawBattle.showActions"
require "battle.drawBattle.showHP"
require "battle.drawBattle.showItems"
require "battle.drawBattle.showDescription"
require "battle.drawBattle.showVictoryMessage"
require "battle.drawBattle.showDefeatMessage"
require "battle.drawBattle.showBattleMenu"

function color(expectedValue)
    if arrowY == expectedValue then
        love.graphics.setColor(255, 0, 0) --red colour
    else
        love.graphics.setColor(255, 255, 255) --white colour
    end
end

function drawBattle(selected)
    battleArena:draw()
    love.graphics.setColor(0, 0, 0)
    showHP()
    showDescription()
    if displayTurnInfo then
        showTurnInfo()
    elseif victory then
        showVictoryMessage()
    elseif defeat then
        showDefeatMessage()
    end
    
    if displayingMenu then
        showBattleMenu()
    end    
    
    function displayAction(actionName, actionPositionY)
        local x = 150
        local y = actionPositionY
        if y == 1065 then
            x = 400
            y = 915
        end
        if y == 1095 then
            x = 400
            y = 945
        end
        love.graphics.printf(
            actionName,
            x, y, 500, "left", 0)
    end

    if displayingActions then
        showActions(selected)
    elseif displayingItems then
        showItems()
    elseif escapeBattle then
        love.audio.stop()
        escapeBattle = false
        Gamestate.switch(mapState)
        if playerPositionX >= 120 then
            playerPositionX = playerPositionX - 120
        else playerPositionX = 0
        end
    end
end
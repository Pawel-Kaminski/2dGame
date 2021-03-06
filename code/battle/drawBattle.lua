require "battle.drawBattle.showTurnInfo"
require "battle.drawBattle.showActions"
require "battle.drawBattle.showHP"
require "battle.drawBattle.showItems"
require "battle.drawBattle.showDescription"
require "battle.drawBattle.showVictoryMessage"
require "battle.drawBattle.showDefeatMessage"
require "battle.drawBattle.showBattleMenu"

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
    
    function displayAction(actionName, actionPositionX, actionPositionY)
        local x = actionPositionX
        local y = actionPositionY
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
        if playerPositionX >= 180 then
            playerPositionX = playerPositionX - 180
        else playerPositionX = 0
        end
        Gamestate.switch(mapState)
    end
end
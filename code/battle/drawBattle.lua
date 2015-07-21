require "battle.drawBattle.showTurnInfo"
require "battle.drawBattle.showActions"
require "battle.drawBattle.showHP"

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

    love.graphics.setColor(255,255,255)
    if displayTurnInfo then
        showTurnInfo()
    elseif victory then
        love.graphics.printf(
        "Zwycięstwo!!! Naciśnij ENTER, aby przejść dalej",
        150, 745, 1000, "left", 0)
    elseif defeat then
        love.graphics.printf(
        "Porażka...",
        150, 745, 500, "left", 0)
        color(790)
        love.graphics.printf(
        "Spróbuj ponownie",
        150, 805, 1000, "left", 0)
        color(820)
        love.graphics.printf(
        "Wyjdź z gry",
        150, 835, 1000, "left", 0)
    end
    
    if displayingMenu then
        color(900)
        love.graphics.printf(
            "Akcja",
            150, 915, 500, "left", 0)
        color(930)
        love.graphics.printf(
            "Przedmiot",
            150, 945, 500, "left", 0)
        color(960)
        love.graphics.printf(
            "Ucieczka",
            150, 975, 500, "left", 0)
    end    
    
    function displayAction(actionName, actionPositionY)
        love.graphics.printf(
            actionName,
            150, actionPositionY, 500, "left", 0)
    end

    countActions = 0
    if displayingActions then
        showActions(selected)
    end

    if displayItems then
        --TODO: Implement displaying items
    end

    if escapeBattle then
        love.audio.stop()
        escapeBattle = false
        Gamestate.switch(mapState)
        if playerPositionX >= 120 then
            playerPositionX = playerPositionX - 120
        else playerPositionX = 0
        end
    end
end
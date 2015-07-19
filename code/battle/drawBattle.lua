require "battle.drawBattle.showTurnInfo"
require "battle.drawBattle.showActions"

function color(expectedValue)
    if arrowY == expectedValue then
        love.graphics.setColor(255, 0, 0) --red colour
    else
        love.graphics.setColor(255, 255, 255) --white colour
    end
end

function drawBattle()
    battleArena:draw()
    love.graphics.setColor(0, 0, 0)
    love.graphics.printf(Player.healthPoints.."/"..Player.maxHealth, 153, 23, 200, "left", 0)
    love.graphics.printf(Player.magicPoints.."/"..Player.maxMagic, 173, 58, 200, "left", 0)

    if battleSpriteLayer.sprites.enemy1.active then
        love.graphics.printf(firstEnemy.healthPoints.."/"..firstEnemy.maxHealth, 1213, 23, 200, "left", 0)
        love.graphics.printf(firstEnemy.magicPoints.."/"..firstEnemy.maxMagic, 1233, 58, 200, "left", 0)
        love.graphics.printf(firstEnemy.name, 1090, 80, 1000, "left", 0)
    end
    if battleSpriteLayer.sprites.enemy2.active then
        love.graphics.printf(secondEnemy.healthPoints.."/"..secondEnemy.maxHealth, 1513, 23, 200, "left", 0)
        love.graphics.printf(secondEnemy.magicPoints.."/"..secondEnemy.maxMagic, 1533, 58, 200, "left", 0)
        love.graphics.printf(secondEnemy.name, 1390, 80, 1000, "left", 0)
    end
    if battleSpriteLayer.sprites.enemy3.active then
        love.graphics.printf(thirdEnemy.healthPoints.."/"..thirdEnemy.maxHealth, 1813, 23, 200, "left", 0)
        love.graphics.printf(thirdEnemy.magicPoints.."/"..thirdEnemy.maxMagic, 1833, 58, 200, "left", 0)
        love.graphics.printf(thirdEnemy.name, 1690, 80, 1000, "left", 0)
    end
    love.graphics.setColor(255,255,255)

    if displayTurnInfo then
        showTurnInfo()
    elseif victory then
        love.graphics.printf("Zwycięstwo!!! Naciśnij ENTER, aby przejść dalej", 150, 745, 1000, "left", 0)
    elseif defeat then
        love.graphics.printf("Porażka...", 150, 745, 500, "left", 0)
        color(790)
        love.graphics.printf("Spróbuj ponownie", 150, 805, 1000, "left", 0)
        color(820)
        love.graphics.printf("Wyjdź z gry", 150, 835, 1000, "left", 0)
    end
    
    if displayingMenu then
        color(900)
        love.graphics.printf("Akcja", 150, 915, 500, "left", 0)
        color(930)
        love.graphics.printf("Przedmiot", 150, 945, 500, "left", 0)
        color(960)
        love.graphics.printf("Ucieczka", 150, 975, 500, "left", 0)
    end    
    
    function displayAction(actionName, actionPositionY)
        love.graphics.printf(actionName, 150, actionPositionY, 500, "left", 0)
    end

    countActions = 0
    if displayingActions then
        showActions()
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
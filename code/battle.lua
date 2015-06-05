battleState = {}
--All code to draw enemies is in battleLoading.lua
require "battleLoading"
dtotal = 0 --time after calling fight(enemy) function
dtotalPause = 0
function battleState:update(dt)
    battleArena:update(dt)
    if countingActive then
        dtotal = dtotal + dt
        if dtotal >= 0.1 then
            fight(Enemy1, Enemy1_Second, Enemy1_Third)
            dtotal = 0
        end
    elseif pause then
        dtotalPause = dtotalPause + dt
        if dtotalPause > 2 then
            pause = false
            dtotalPause = 0
            resetCounter(Enemy1, Enemy1_Second, Enemy1_Third)
            countingActive = true
        end
    end
end

function resetCounter(o1, o2, o3)
    if o1.remainingWaitingTime == 0 then o1.remainingWaitingTime = o1.waitingTime end
    if o2.remainingWaitingTime == 0 then o2.remainingWaitingTime = o2.waitingTime end
    if o3.remainingWaitingTime == 0 then o3.remainingWaitingTime = o3.waitingTime end
end

function colourIfNeeded(expectedValue)
    if arrowY == expectedValue then
        love.graphics.setColor(255, 0, 0) --red colour
    else
        love.graphics.setColor(255, 255, 255) --white colour
    end
end

function battleState:draw()
    battleArena:draw()
    love.graphics.setColor(0, 0, 0)
    --love.graphics.setFont(twenty)
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
        love.graphics.printf("Tura gracza za: "..Player.remainingWaitingTime, 150, 715, 500, "left", 0)
        if battleSpriteLayer.sprites.enemy1.active then
            love.graphics.printf("Tura przeciwnika - "..firstEnemy.name.." za: "..firstEnemy.remainingWaitingTime, 150, 745, 1000, "left", 0)
        end
        if battleSpriteLayer.sprites.enemy2.active then
            love.graphics.printf("Tura przeciwnika - "..secondEnemy.name.." za: "..secondEnemy.remainingWaitingTime, 150, 775, 1000, "left", 0)
        end
        if battleSpriteLayer.sprites.enemy3.active then
            love.graphics.printf("Tura przeciwnika - "..thirdEnemy.name.." za: "..thirdEnemy.remainingWaitingTime, 150, 805, 1000, "left", 0)
        end
    elseif victory then
        love.graphics.printf("Zwycięstwo!!! Naciśnij ENTER, aby przejść dalej", 150, 745, 1000, "left", 0)
    elseif defeat then
        love.graphics.printf("Porażka...", 150, 745, 500, "left", 0)
        colourIfNeeded(790)
        love.graphics.printf("Spróbuj ponownie", 150, 805, 1000, "left", 0)
        colourIfNeeded(820)
        love.graphics.printf("Wyjdź z gry", 150, 835, 1000, "left", 0)
    end
    
    if displayMenu then
        colourIfNeeded(900)
        love.graphics.printf("Akcja", 150, 915, 500, "left", 0)
        colourIfNeeded(930)
        love.graphics.printf("Przedmiot", 150, 945, 500, "left", 0)
        colourIfNeeded(960)
        love.graphics.printf("Ucieczka", 150, 975, 500, "left", 0)
    end    
    
    function displayAction(actionName, actionPositionY)
        --love.graphics.printf(text, x, y, limit, align)
        love.graphics.printf(actionName, 150, actionPositionY, 500, "left", 0)
        --love.graphics.setColor(255, 255, 255)
    end

    function displayActionDescription()
        love.graphics.printf(actions[selectedAction][4], 1000, 915, 900, "left", 0)
    end

    countActions = 0
    if displayActions then
        displayActionDescription()
        displayMenu = false
        lastPositionY = 915
        for _, action in pairs(actions) do
            countActions = countActions + 1
        end
        for i=1, countActions do
            colourIfNeeded(lastPositionY - 15)
            displayAction(actions[i][1], lastPositionY)
            if (selectedAction == null) then selectedAction = 1 end
            lastPositionY = lastPositionY + 30
        end
    end

    --if selectingEnemy then
        --displayActions = false
        --arrowY = 330
    --end
end
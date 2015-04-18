battleState = {}
require "battleLoading"
dtotal = 0 --time after calling fight(enemy) function
function battleState:update(dt)
    battleArena:update(dt)
    if countingActive then
        dtotal = dtotal + dt
        if dtotal >= 0.1 then
            fight(Enemy1, Enemy1_Second, Enemy1_Third)
            dtotal = 0
        end
    end
end

function colourIfNeeded(expectedValue)
    if arrowY == expectedValue then
        love.graphics.setColor(255, 0, 0)
    else
        love.graphics.setColor(255, 255, 255)
    end
end

function battleState:draw()
    battleArena:draw()
    love.graphics.setColor(0, 0, 0)
    --love.graphics.setFont(twenty)
    love.graphics.printf(Player.healthPoints.."/"..Player.maxHealth, 153, 23, 200, "left", 0)
    love.graphics.printf(Player.magicPoints.."/"..Player.maxMagic, 173, 58, 200, "left", 0)
    love.graphics.printf(Enemy1.healthPoints.."/"..Enemy1.maxHealth, 1813, 23, 200, "left", 0)
    love.graphics.printf(Enemy1.magicPoints.."/"..Enemy1.maxMagic, 1833, 58, 200, "left", 0)
    love.graphics.setColor(255,255,255)

    if displayTurnInfo then
        love.graphics.printf("Tura gracza za: "..Player.remainingWaitingTime, 150, 715, 500, "left", 0)
        love.graphics.printf("Tura przeciwnika - "..firstEnemy.name.." za: "..firstEnemy.remainingWaitingTime, 150, 745, 1000, "left", 0)
        love.graphics.printf("Tura przeciwnika - "..secondEnemy.name.." za: "..secondEnemy.remainingWaitingTime, 150, 775, 1000, "left", 0)
        love.graphics.printf("Tura przeciwnika - "..thirdEnemy.name.." za: "..thirdEnemy.remainingWaitingTime, 150, 805, 1000, "left", 0)
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
        love.graphics.printf(actionName, 150, actionPositionY, 500, "left", 0)
    end

    countActions = 0
    if displayActions then
        displayMenu = false
        lastPositionY = 915
        for _, action in pairs(actions) do
            countActions = countActions + 1
        end
        for i=1, countActions do
            colourIfNeeded(lastPositionY - 15)
            displayAction(actions[i][1], lastPositionY)
            lastPositionY = lastPositionY + 30
        end
    end
end
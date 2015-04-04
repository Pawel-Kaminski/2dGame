battleState = {}
require "battleLoading"

dtotal = 0
countingActive = true
function battleState:update(dt)
    battleArena:update(dt)
    if countingActive then
        dtotal = dtotal + dt
        if dtotal >= 0.25 then
            fight(Enemy1)
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
    love.graphics.setFont(twenty)
    love.graphics.printf(Player.healthPoints.."/"..Player.maxHealth, 153, 23, 200, "left", 0)
    love.graphics.printf(Player.magicPoints.."/"..Player.maxMagic, 173, 58, 200, "left", 0)
    love.graphics.printf(Enemy1.healthPoints.."/"..Enemy1.maxHealth, 1813, 23, 200, "left", 0)
    love.graphics.printf(Enemy1.magicPoints.."/"..Enemy1.maxMagic, 1833, 58, 200, "left", 0)
    love.graphics.setColor(255,255,255)
    love.graphics.printf("Tura gracza za: "..Player.remainingWaitingTime, 150, 715, 500, "left", 0)
    love.graphics.printf("Tura "..Enemy1.name.." za: "..Enemy1.remainingWaitingTime, 150, 745, 500, "left", 0)
    
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

function fight(o1, o2, o3)
    if Player.remainingWaitingTime > 0 then
        Player.remainingWaitingTime = Player.remainingWaitingTime - 1
    else
        countingActive = false
        playerTurn()
        return
    end

    if o1.remainingWaitingTime > 0 then
        o1.remainingWaitingTime = o1.remainingWaitingTime - 1
    else
        countingActive = false
        enemyTurn()
        return
    end
end

function playerTurn()
    displayMenu = true
end

function enemyTurn()
    Player.healthPoints = Player.healthPoints - (15 * (100 - Player.defence)/100)
    if Player.healthPoints < 0 then
        Player.healthPoints = 0    
    end
    Enemy1.remainingWaitingTime = Enemy1.waitingTime
    if isDead(Player) then
        --TODO: Implement Enemy's victory
    else
        countingActive = true
    end
end

function displayItems()
end

function escapeBattle()
end

function makeAction(selectedAction)
    if selectedAction == 1 then
        attack(Enemy1)
    elseif selectedAction == 2 then
        magicAttack(Enemy1)
    elseif selectedAction == 4 then
        heal()
    elseif selectedAction == 5 then
        defend()
    end
    Player.remainingWaitingTime = Player.waitingTime
    if isDead(Enemy1) then
        --TODO: Implement Player's victory
    else
        countingActive = true
        displayActions = false
        arrowY = 900
    end
end

function isDead(o1)
    if o1.healthPoints == 0 then
        return true
    else
        return false
    end
end
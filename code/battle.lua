require "player"
require "enemy1"
battleState = {}

function battleState:enter()
    twenty = love.graphics.newFont(20)
    love.audio.play(sound2)
end

dtotal = 0
countingActive = true
function battleState:update(dt)
    if countingActive then
        dtotal = dtotal + dt
        if dtotal >= 0.25 then
            fight(Enemy1)
            dtotal = 0
        end
    end
end

MenuOption = 1
function battleState:draw()
    battleArena:draw()
    love.graphics.setColor(0, 0, 0)
    love.graphics.setFont(twenty)
    love.graphics.printf(Player.healthPoints.."/"..Player.maxHealth, 153, 23, 200, "left", 0)
    love.graphics.printf(Player.magicPoints.."/"..Player.maxMagic, 173, 58, 200, "left", 0)
    love.graphics.setColor(255,255,255)
    love.graphics.printf("Tura gracza za: "..Player.remainingWaitingTime, 150, 715, 500, "left", 0)
    love.graphics.printf("Tura "..Enemy1.name.." za: "..Enemy1.remainingWaitingTime, 150, 745, 500, "left", 0)
    if displayMenu then
        love.graphics.printf("Akcja", 150, 915, 500, "left", 0)
        love.graphics.printf("Przedmiot", 150, 945, 500, "left", 0)
        love.graphics.printf("Ucieczka", 150, 975, 500, "left", 0)
        love.graphics.printf(battleSpriteLayer.sprites.arrow.y, 150, 1005, 500, "left", 0)
        love.graphics.printf(arrowY, 150, 1035, 500, "left", 0)
    end
end

function fight(o1, o2, o3)
    if Player.remainingWaitingTime > 0 then
        Player.remainingWaitingTime = Player.remainingWaitingTime - 1
    else
        countingActive = false
        playerTurn()
    end

    if o1.remainingWaitingTime > 0 then
        o1.remainingWaitingTime = o1.remainingWaitingTime - 1
    else
        countingActive = false
        enemyTurn()
    end
end

function playerTurn()
    displayMenu = true
end

function enemyTurn()
    
end
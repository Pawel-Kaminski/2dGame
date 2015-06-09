require "battleDraw"
mapState = {} --STI: creates new state called "mapState"
require "mapEnterState"

--"active" variables describe if we should display certain enemy or not
active1 = true
active2 = true
active3 = true
timeCounter = 0
doNotDisplay = false

function mapState:update(dt)
    map:update(dt)
    for _, sprite in pairs(enemies.sprites) do
        if spriteLayer.sprites.player.x == sprite.x then
            if spriteLayer.sprites.player.y == sprite.y and sprite.active then
                --when player is in the same position as one of enemies
                firstEnemy = EnemyDorver_First
                secondEnemy = EnemyDorver_Second
                thirdEnemy = EnemyDorver_Third
                stats = EnemyDorverStatistics
                love.audio.stop()
                activeEnemySprite = sprite
                --this enemy should not be displayed anymore
                if sprite.y == 120 then active1 = false end
                if sprite.y == 300 then active2 = false end
                if sprite.y == 360 then active3 = false end
                Gamestate.switch(battleState)
            end
        end
    end
    playerIsTalking = false
    Talking.sprites.dialogBackground.active = false
    for _, sprite in pairs(NPCs.sprites) do
        if spriteLayer.sprites.player.x >= sprite.x - 60
        and spriteLayer.sprites.player.x <= sprite.x + 60
        and spriteLayer.sprites.player.y >= sprite.y - 60
        and spriteLayer.sprites.player.y <= sprite.y + 60 then
                selectedNPC = sprite
                playerIsTalking = true
                Talking.sprites.dialogBackground.active = true
        end
    end
    if selectedNPC ~= null and selectedNPC.important and not playerIsTalking and not doNotDisplay then
        Talking.sprites.quest.active = true
    end
    if Talking.sprites.quest.active then
        timeCounter = timeCounter + dt
        if timeCounter > 8 then
            Talking.sprites.quest.active = false
            timeCounter = 0
            doNotDisplay = true
        end
    end
end

function mapState:draw()
    map:draw()
    if playerIsTalking then
        love.graphics.setColor(255, 255, 255)
        love.graphics.printf(selectedNPC.dialog, 510, 130, 900, "left", 0)
    elseif Talking.sprites.quest.active then
        love.graphics.setColor(0, 0, 0)
        love.graphics.printf(selectedNPC.quest, 620, 440, 600, "left", 0)
    end
end

function mapState:keypressed(key)
    if key == "right" then
        --player should not be able to go beyond the end of the screen
        if playerPositionX < 1860 then
            playerPositionX = playerPositionX + 60
        end
    elseif key == "left" then
        if playerPositionX > 0 then
            playerPositionX = playerPositionX - 60
        end
    elseif key == "down" then
        if playerPositionY < 1020 then
            playerPositionY = playerPositionY + 60
        end
    elseif key == "up" then
        if playerPositionY > 0 then
            playerPositionY = playerPositionY - 60
        end
    end
end
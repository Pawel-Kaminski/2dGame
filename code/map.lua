require "battleDraw"
mapState = {} --STI: creates new state called "mapState"
require "mapEnterState"

active1 = true
active2 = true
active3 = true

function mapState:update(dt)
    map:update(dt)
    for _, sprite in pairs(enemies.sprites) do
        if spriteLayer.sprites.player.x == sprite.x then
            if spriteLayer.sprites.player.y == sprite.y and sprite.active then
                firstEnemy = Enemy1
                secondEnemy = Enemy1_Second
                thirdEnemy = Enemy1_Third
                love.audio.stop()
                activeEnemySprite = sprite
                if sprite.y == 120 then active1 = false end
                if sprite.y == 300 then active2 = false end
                if sprite.y == 360 then active3 = false end
                Gamestate.switch(battleState)
            end
        end
    end
end

function mapState:draw()
    map:draw()
end

function mapState:keypressed(key)
    if key == "right" then
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
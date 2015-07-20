require "map.updateMap.enemies.dorver"
require "map.updateMap.enemies.thornbush"

function updateMap()
    map:update(dt)
    for _, sprite in pairs(enemies.sprites) do
        if spriteLayer.sprites.player.x == sprite.x then
            if spriteLayer.sprites.player.y == sprite.y and sprite.active then
                --when player is in the same position as one of enemies
                --code here determines what kind of enemy attacks the player
                if sprite.x == 300 and sprite.y == 660 then
                    firstEnemy = EnemyThornbush_First
                    secondEnemy = EnemyThornbush_Second
                    thirdEnemy = EnemyThornbush_Third
                    stats = EnemyThornbushStatistics
                else
                    firstEnemy = EnemyDorver_First
                    secondEnemy = EnemyDorver_Second
                    thirdEnemy = EnemyDorver_Third
                    stats = EnemyDorverStatistics
                end
                love.audio.stop()
                activeEnemySprite = sprite
                --this enemy should not be displayed anymore
                if sprite.y == enemies.sprites.enemy.y then active1 = false end
                if sprite.y == enemies.sprites.enemy2.y then active2 = false end
                if sprite.y == enemies.sprites.enemy3.y then active3 = false end
                Gamestate.switch(battleState)
            end
        end
    end
    Talking.sprites.dialogBackground.active = false
    for _, sprite in pairs(NPC.sprites) do
        if spriteLayer.sprites.player.x >= sprite.x - 60
        and spriteLayer.sprites.player.x <= sprite.x + 60
        and spriteLayer.sprites.player.y >= sprite.y - 60
        and spriteLayer.sprites.player.y <= sprite.y + 60 then
            selectedNPC = sprite
            playerIsTalking = true
            Talking.sprites.dialogBackground.active = true
        end
    end
    if selectedNPC ~= null and selectedNPC.quest and not playerIsTalking and not doNotDisplay then
        Talking.sprites.quest.active = true
    end
end
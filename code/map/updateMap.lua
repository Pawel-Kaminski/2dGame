--TODO: remove firstEnemy, ... variables

--WARNING: This file uses global variables:
--spriteLayer, stats, activeEnemySprite, firstEnemy, secondEnemy, thirdEnemy
--enemies, Talking, selectedNPC, playerIsTalking, doNotDisplay

require "map.updateMap.enemies.actionsOfEnemies"
require "map.updateMap.enemies.dorver"
require "map.updateMap.enemies.thornbush"
require "map.updateMap.enemies.airGuardian"
require "map.updateMap.enemies.cactus"
require "map.updateMap.enemies.dragon"
require "map.updateMap.enemies.fireGuardian"
require "map.updateMap.enemies.forestCreature"
require "map.updateMap.enemies.forestGuardian"
require "map.updateMap.enemies.iceGuardian"
require "map.updateMap.enemies.boss"
require "map.updateMap.setVariablesBeforeFight"
require "map.updateMap.removeEnemyFromMap"
require "map.updateMap.newQuestMessage"

--Function that updates state of the map
function updateMap()
    map:update()
    --This part is responsible for launching battle state when necessary
    for _, sprite in pairs(enemies.sprites) do
        if spriteLayer.sprites.player.x >= sprite.x - 60
        and spriteLayer.sprites.player.x <= sprite.x + 60
        and spriteLayer.sprites.player.y >= sprite.y - 60
        and spriteLayer.sprites.player.y <= sprite.y + 60
        and sprite.active then
            --when player is close to enemy
            --code here determines what kind of enemy attacks the player
            setVariablesBeforeFight(sprite)
            --prepare for leaving map state
            love.audio.stop()
            activeEnemySprite = sprite
            --this enemy should not be displayed anymore
            removeEnemyFromMap(sprite)
            Gamestate.switch(battleState)
        end
    end

--This part is responsible for displaying dialog background
    Talking.sprites.dialogBackground.active = false
    for _, sprite in pairs(NPC.sprites) do
        --If player is close to NPC
        if (spriteLayer.sprites.player.x >= sprite.x - 60
        and spriteLayer.sprites.player.x <= sprite.x + 60
        and spriteLayer.sprites.player.y == sprite.y) or
        (spriteLayer.sprites.player.y >= sprite.y - 60
        and spriteLayer.sprites.player.y <= sprite.y + 60
        and spriteLayer.sprites.player.x == sprite.x) then
            selectedNPC = sprite    --Save sprite in global variable
            playerIsTalking = true  --Activate talking mode
            --Display background for dialogues
            Talking.sprites.dialogBackground.active = true
            --Set doNotDisplay to false ???
            --If this is not present here,
            --player is unable to receive second quest
            doNotDisplay = false        
        end
    end

    --This part is responsible for displaying quest pop-up
    newQuestMessage()
end
--TODO: remove firstEnemy, ... variables

--WARNING: This file uses global variables:
--spriteLayer, stats, activeEnemySprite, firstEnemy, secondEnemy, thirdEnemy
--enemies, Talking, selectedNPC, playerIsTalking, doNotDisplay

require "map.updateMap.enemies.dorver"
require "map.updateMap.enemies.thornbush"

--Function that updates state of the map
function updateMap()
    map:update()

--This part is responsible for launching battle state when necessary
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
                --prepare for leaving map state
                love.audio.stop()
                activeEnemySprite = sprite
                --this enemy should not be displayed anymore
                if sprite.y == enemies.sprites.enemy.y then active1 = false end
                if sprite.y == enemies.sprites.enemy2.y then active2 = false end
                if sprite.y == enemies.sprites.enemy3.y then
                    active3 = false
                    finishQuest(1)
                    --to prevent from displaying quest pop-up more than once
                    doNotDisplay = true
                end
                Gamestate.switch(battleState)
            end
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
--1. selectedNPC ~= null prevents game from crashing
-----if variable selectedNPC is null while checking 2
--2. selectedNPC.quest - quest pop-up should be display only when NPC has a quest
--3. not playerIsTalking - pop-up shouldn't collide with NPC's dialogues
--4. not doNotDisplay - this lets me hide pop-up when it's not needed anymore
--THIS FUNCTION MUST BE UPDATED AFTER CREATING NEW QUESTS
    if selectedNPC ~= null and selectedNPC.quest
    and not playerIsTalking and not doNotDisplay then
        if selectedNPC == NPC.sprites.Afedia and not isQuestDisplayed(1) then
            Talking.sprites.quest.active = true
            activateQuest(1)
        elseif selectedNPC == NPC.sprites.Osigold and isQuestFinished(1) --then
            and not isQuestDisplayed(2) then
                Talking.sprites.quest.active = true
                activateQuest(2)
        elseif selectedNPC == NPC.sprites.Osigold and isQuestFinished(2)
            and not isQuestDisplayed(3) then
                Talking.sprites.quest.active = true
                activateQuest(3)
        elseif selectedNPC == NPC.sprites.Afedia and isQuestFinished(3)
            and not isQuestDisplayed(4) then
                Talking.sprites.quest.active = true
                activateQuest(4)
                if items[8][2] == 0 then items[8][2] = 1 end
                map2locked = false
        elseif selectedNPC == NPC.sprites.Tinaldina and isQuestFinished(4)
            and not isQuestDisplayed(5) then
                Talking.sprites.quest.active = true
                activateQuest(5)
        elseif selectedNPC == NPC.sprites.Tinaldina and isQuestFinished(5)
            and not isQuestDisplayed(6) then
                Talking.sprites.quest.active = true
                activateQuest(6)
        elseif selectedNPC == NPC.sprites.Tinaldina and isQuestFinished(6)
            and not isQuestDisplayed(7) then
                Talking.sprites.quest.active = true
                activateQuest(7)
                map3locked = false
        elseif selectedNPC == NPC.sprites.Lidenon and isQuestFinished(7)
            and not isQuestDisplayed(8) then
                Talking.sprites.quest.active = true
                activateQuest(8)
        elseif selectedNPC == NPC.sprites.Lidenon and isQuestFinished(8)
            and not isQuestDisplayed(9) then
                Talking.sprites.quest.active = true
                activateQuest(9)
        elseif selectedNPC == NPC.sprites.Lidenon and isQuestFinished(9)
            and not isQuestDisplayed(10) then
                Talking.sprites.quest.active = true
                activateQuest(10)
                map4locked = false
        end
    end
end
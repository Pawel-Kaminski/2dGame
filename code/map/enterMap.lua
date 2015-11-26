--WARNING: This file uses global variables: activeEnemySprite, sound

require "map.enterMap.createLayers"
function enterMap(mapId)  
    --activeEnemySprite contains sprite of enemy on which player entered
    if activeEnemySprite ~= null and not escapeBattle then
        removeEnemyFromMap(activeEnemySprite)
        if isQuestFinished(10) then
            Gamestate.switch(questsState)
        end
    end

    escapeBattle = false
    activeEnemySprite = null

    if mapId == 1 then
        if changeMusic then
            sound = love.audio.newSource("music/Otto_Halmen_Sylvan_Waltz_1.mp3")
            love.audio.stop()
            love.audio.play(sound)
        else
            changeMusic = true
        end
    elseif mapId == 2 then
        if changeMusic then
            sound = love.audio.newSource("music/06Flicker.mp3")
            love.audio.stop()
            love.audio.play(sound)
        else
            changeMusic = true
        end
    elseif mapId == 3 then
        if changeMusic then
            sound = love.audio.newSource("music/03_Unleashed.mp3")
            love.audio.stop()
            love.audio.play(sound)
        else
            changeMusic = true
        end
    elseif mapId == 4 then
        if changeMusic then
            sound = love.audio.newSource("music/03_Unleashed.mp3")
            love.audio.stop()
            love.audio.play(sound)
        else
            changeMusic = true
        end
    end
    sound:setLooping(true)
    createLayers(mapId)
end
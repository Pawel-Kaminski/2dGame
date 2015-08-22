--WARNING: This file uses global variables: activeEnemySprite, sound

require "map.enterMap.createLayers"
function enterMap(mapId)
    --activeEnemySprite contains sprite of enemy on which player entered
    activeEnemySprite = null
    if mapId == 1 then
        sound = love.audio.newSource("music/Otto_Halmen_Sylvan_Waltz_1.mp3")
    elseif mapId == 2 then
        sound = love.audio.newSource("music/06Flicker.mp3")
    elseif mapId == 3 then
        sound = love.audio.newSource("music/03_Unleashed.mp3")
    elseif mapId == 4 then
        sound = love.audio.newSource("music/BlackmoorColossusLoop.wav")
    end
    love.audio.stop()
    love.audio.play(sound)
    sound:setLooping(true)
    createLayers()
end
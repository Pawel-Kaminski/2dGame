require "map.enterMap.createLayers"
function enterMap()
    --activeEnemySprite contains sprite of enemy on which player entered
    activeEnemySprite = null
    sound = love.audio.newSource("music/Otto_Halmen_Sylvan_Waltz_1.mp3")
    love.audio.play(sound)
    sound:setLooping(true)
    createLayers()
end
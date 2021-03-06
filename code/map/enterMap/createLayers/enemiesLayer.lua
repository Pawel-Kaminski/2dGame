require "map.enterMap.createLayers.enemiesLayer.firstMapEnemies"
require "map.enterMap.createLayers.enemiesLayer.secondMapEnemies"
require "map.enterMap.createLayers.enemiesLayer.thirdMapEnemies"
require "map.enterMap.createLayers.enemiesLayer.fourthMapEnemies"

function createEnemiesLayer(mapId)
    if mapId == 1 then
        map:addCustomLayer("Enemies", 4) --Layer created for displaying enemies
    elseif mapId == 2 or mapId == 3 then
        map:addCustomLayer("Enemies", 3)
    else
        map:addCustomLayer("Enemies", 5)
    end
    enemies = map.layers["Enemies"]

    if mapId == 1 then
        firstMapEnemies()
    elseif mapId == 2 then
        secondMapEnemies()
    elseif mapId == 3 then
        thirdMapEnemies()
    elseif mapId == 4 then
        fourthMapEnemies()
    end

    -- Update callback for Enemies
    function enemies:update(dt)
    end

    -- Draw callback for Custom Layer
    function enemies:draw()
        --pairs function iterates over all elements in a table
        for _, sprite in pairs(self.sprites) do
            if sprite.active ~= false then
                local x = math.floor(sprite.x)
                local y = math.floor(sprite.y)
                love.graphics.draw(sprite.image, x, y)
            end
        end
    end
end
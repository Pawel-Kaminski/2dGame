--WARNING: This file uses global variables: map, NPC
require "map.enterMap.createLayers.NPCLayer.firstMap"
require "map.enterMap.createLayers.NPCLayer.secondMap"
require "map.enterMap.createLayers.NPCLayer.thirdMap"
require "map.enterMap.createLayers.NPCLayer.fourthMap"

function createNPCLayer(mapId)
    --Layer created for displaying non-player characters
    if mapId == 1 then
        map:addCustomLayer("NPC", 3)
    elseif mapId == 2 or mapId == 3 then
        map:addCustomLayer("NPC", 4)
    else
        map:addCustomLayer("NPC", 2)
    end
    NPC = map.layers["NPC"]

    if mapId == 1 then
        firstMapNPC()
    elseif mapId == 2 then
        secondMapNPC()
    elseif mapId == 3 then
        thirdMapNPC()
    elseif mapId == 4 then
        fourthMapNPC()
    end

    function NPC:update(dt)
    end

    function NPC:draw()
        for _, sprite in pairs(self.sprites) do
            local x = math.floor(sprite.x)
            local y = math.floor(sprite.y)
            love.graphics.draw(sprite.image, x, y)
        end
    end
end
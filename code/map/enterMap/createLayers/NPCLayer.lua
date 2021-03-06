require "map.enterMap.createLayers.NPCLayer.firstMapNPC"
require "map.enterMap.createLayers.NPCLayer.secondMapNPC"
require "map.enterMap.createLayers.NPCLayer.thirdMapNPC"
require "map.enterMap.createLayers.NPCLayer.fourthMapNPC"

function createNPCLayer(mapId)
    --Layer created for displaying non-player characters
    if mapId == 1 then
        map:addCustomLayer("NPC", 3)
    elseif mapId == 2 or mapId == 3 then
        map:addCustomLayer("NPC", 4)
    else
        map:addCustomLayer("NPC", 4)
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
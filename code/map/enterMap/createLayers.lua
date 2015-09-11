--WARNING: This file uses global variables: map

require "map.enterMap.createLayers.spriteLayer"
require "map.enterMap.createLayers.enemiesLayer"
require "map.enterMap.createLayers.NPCLayer"
require "map.enterMap.createLayers.talkingLayer"
require "map.enterMap.createLayers.itemsLayer"
function createLayers(mapId)
    if mapId == 1 then
        --Load a map exported to Lua from Tiled
        map = sti.new("assets/maps/map1")
    elseif mapId == 2 then
        map = sti.new("assets/maps/map2")
    elseif mapId == 3 then
        map = sti.new("assets/maps/old_map")
    elseif mapId == 4 then
        map = sti.new("assets/maps/old_map")
    end
    createEnemiesLayer(mapId)
    createNPCLayer(mapId)
    createSpriteLayer(mapId)
    createTalkingLayer(mapId)
    createItemsLayer(mapId)
end
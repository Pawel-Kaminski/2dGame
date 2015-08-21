--WARNING: This file uses global variables: map

require "map.enterMap.createLayers.spriteLayer"
require "map.enterMap.createLayers.enemiesLayer"
require "map.enterMap.createLayers.NPCLayer"
require "map.enterMap.createLayers.talkingLayer"
require "map.enterMap.createLayers.itemsLayer"
function createLayers()
    if selectedMap == 1 then
        map = sti.new("assets/maps/new_map") --Load a map exported to Lua from Tiled
    elseif selectedMap == 2 then
        map = sti.new("assets/maps/old_map") --Load a map exported to Lua from Tiled
    elseif selectedMap == 3 then
        map = sti.new("assets/maps/old_map") --Load a map exported to Lua from Tiled
    elseif selectedMap == 4 then
        map = sti.new("assets/maps/old_map") --Load a map exported to Lua from Tiled
    end
    createSpriteLayer()
    createEnemiesLayer()
    createNPCLayer()
    createTalkingLayer()
    createItemsLayer()
end
--WARNING: This file uses global variables: map

require "map.enterMap.createLayers.spriteLayer"
require "map.enterMap.createLayers.enemiesLayer"
require "map.enterMap.createLayers.NPCLayer"
require "map.enterMap.createLayers.talkingLayer"
function createLayers()
    map = sti.new("assets/maps/new_map") --Load a map exported to Lua from Tiled
    createSpriteLayer()
    createEnemiesLayer()
    createNPCLayer()
    createTalkingLayer()
end
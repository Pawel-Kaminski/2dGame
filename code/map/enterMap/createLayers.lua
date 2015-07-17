require "map.enterMap.createLayers.createSpriteLayer"
require "map.enterMap.createLayers.createEnemiesLayer"
require "map.enterMap.createLayers.createNPCsLayer"
require "map.enterMap.createLayers.createTalkingLayer"
function createLayers()
    map = sti.new("assets/maps/new_map") --Load a map exported to Lua from Tiled
    createSpriteLayer()
    createEnemiesLayer()
    createNPCsLayer()
    createTalkingLayer()
end
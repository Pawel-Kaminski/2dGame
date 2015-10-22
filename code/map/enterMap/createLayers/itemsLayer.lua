require "map.enterMap.createLayers.itemsLayer.firstMapItems"
require "map.enterMap.createLayers.itemsLayer.secondMapItems"
require "map.enterMap.createLayers.itemsLayer.thirdMapItems"
require "map.enterMap.createLayers.itemsLayer.fourthMapItems"
require "map.enterMap.createLayers.itemsLayer.itemsLayerDraw"

function createItemsLayer(mapId)
    if mapId == 1 then
        map:addCustomLayer("Items", 8)
        --map:addCustomLayer("Items", 7)
    elseif mapId == 2 or mapId == 3 then
        --map:addCustomLayer("Items", 7)
        map:addCustomLayer("Items", 6)
    else
        map:addCustomLayer("Items", 6)
    end
    itemsLayer = map.layers["Items"]

    if mapId == 1 then
        firstMapItems()   
    elseif mapId == 2 then
        secondMapItems()
    elseif mapId == 3 then
        thirdMapItems()
    elseif mapId == 4 then
        fourthMapItems()
    end
    
    function itemsLayer:update(dt)
    end

    function itemsLayer:draw()
        itemsLayerDraw()
    end
end
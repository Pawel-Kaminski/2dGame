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
        if mapId == 4 then
            if spriteLayer.sprites.player.x >= 360 and 
                spriteLayer.sprites.player.x <= 480 then
                    if spriteLayer.sprites.player.y >= 360 and
                        spriteLayer.sprites.player.y <= 480 then
                            itemsLayer.sprites.earthArtefact.active = true
                    elseif spriteLayer.sprites.player.y >= 660 and
                        spriteLayer.sprites.player.y <= 780 then
                            itemsLayer.sprites.fireArtefact.active = true
                    end
            elseif spriteLayer.sprites.player.x >= 1440 and
                spriteLayer.sprites.player.x <= 1560 then
                    if spriteLayer.sprites.player.y >= 360 and
                        spriteLayer.sprites.player.y <= 480 then
                            itemsLayer.sprites.windArtefact.active = true
                    elseif spriteLayer.sprites.player.y >= 660 and
                        spriteLayer.sprites.player.y <= 780 then
                            itemsLayer.sprites.iceArtefact.active = true
                    end
            end
            if itemsLayer.sprites.earthArtefact.active and
                itemsLayer.sprites.fireArtefact.active and
                itemsLayer.sprites.windArtefact.active and
                itemsLayer.sprites.iceArtefact.active then
                    enemies.sprites.boss.active = true
            end
        end
    end

    function itemsLayer:draw()
        itemsLayerDraw()
    end
end
function createItemsLayer(mapId)
    if mapId == 1 then
        map:addCustomLayer("Items", 8)
    else
        map:addCustomLayer("Items", 6)
    end
    itemsLayer = map.layers["Items"]

    if mapId == 1 then
        itemsLayer.sprites = {
            healthPotion = {
                image = love.graphics.newImage(
                    "assets/sprites/items/1-health_potion/pt1_scaled.png"),
                x = 540,
                y = 900,
                active = active4
            },
            poison = {
                image = love.graphics.newImage(
                    "assets/sprites/items/4-poison/pt3_scaled.png"),
                x = 660,
                y = 900,
                active = active5
            },
            misteriousPlant = {
                image = love.graphics.newImage(
                    "assets/sprites/items/6-misterious_plant/mais_scaled.png"),
                x = 1680,
                y = 900,
                active = active6
            }
        }
    elseif mapId == 2 then
        itemsLayer.sprites = {
            scroll = {
                image = love.graphics.newImage(
                    "assets/sprites/items/7-scroll/scroll_scaled.png"),
                x = 1620,
                y = 840,
                active = active7
            },
            windArtefact = {
                image = love.graphics.newImage(
                    "assets/sprites/items/8-artefacts/wind.png"),
                x = 1620,
                y = 0,
                active = active8
            }
        }
    elseif mapId == 3 then
        itemsLayer.sprites = {
            fireArtefact = {
                image = love.graphics.newImage(
                    "assets/sprites/items/8-artefacts/fire.png"),
                x = 1440,
                y = 420,
                active = active9
            },
            iceArtefact = {
                image = love.graphics.newImage(
                    "assets/sprites/items/8-artefacts/ice.png"),
                x = 240,
                y = 180,
                active = active10
            }
        }
    elseif mapId == 4 then
        itemsLayer.sprites = {
        }
    end
    
    function itemsLayer:update(dt)
    end

    function itemsLayer:draw()
        for _, sprite in pairs(self.sprites) do
            if sprite.active ~= false then
                local x = math.floor(sprite.x)
                local y = math.floor(sprite.y)
                --local r = sprite.r
                if playerPositionX == x and playerPositionY == y then
                    sprite.active = false
                    if itemsLayer.sprites.healthPotion ~= null and
                        x == itemsLayer.sprites.healthPotion.x and
                        y == itemsLayer.sprites.healthPotion.y then
                            items[1][2] = items[1][2] + 1
                            active4 = false
                    elseif itemsLayer.sprites.poison ~= null and
                        x == itemsLayer.sprites.poison.x and
                        y == itemsLayer.sprites.poison.y then
                            items[4][2] = items[4][2] + 1
                            active5 = false
                    elseif itemsLayer.sprites.misteriousPlant ~= null and
                        x == itemsLayer.sprites.misteriousPlant.x and
                        y == itemsLayer.sprites.misteriousPlant.y then
                            items[6][2] = 1
                            active6 = false
                    elseif itemsLayer.sprites.scroll ~= null and
                        x == itemsLayer.sprites.scroll.x and
                        y == itemsLayer.sprites.scroll.y then
                            items[7][2] = 1
                            active7 = false
                    elseif itemsLayer.sprites.windArtefact ~= null and
                        x == itemsLayer.sprites.windArtefact.x and
                        y == itemsLayer.sprites.windArtefact.y then
                            items[9][2] = 1
                            active8 = false
                    elseif itemsLayer.sprites.fireArtefact ~= null and
                        x == itemsLayer.sprites.fireArtefact.x and
                        y == itemsLayer.sprites.fireArtefact.y then
                            items[10][2] = 1
                            active9 = false
                    elseif itemsLayer.sprites.iceArtefact ~= null and
                        x == itemsLayer.sprites.iceArtefact.x and
                        y == itemsLayer.sprites.iceArtefact.y then
                            items[11][2] = 1
                            active10 = false
                    end
                end
                love.graphics.draw(sprite.image, x, y)
            end
        end
    end
end
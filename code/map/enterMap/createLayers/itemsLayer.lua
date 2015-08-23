function createItemsLayer()
    map:addCustomLayer("Items", 8)
    itemsLayer = map.layers["Items"]
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
                    if x == itemsLayer.sprites.healthPotion.x then
                        items[1][2] = items[1][2] + 1
                        active4 = false
                    elseif x == itemsLayer.sprites.poison.x then
                        items[4][2] = items[4][2] + 1
                        active5 = false
                    elseif x == itemsLayer.sprites.misteriousPlant.x then
                        items[6][2] = items[6][2] + 1
                        active6 = false
                    end
                end
                love.graphics.draw(sprite.image, x, y)
            end
        end
    end
end
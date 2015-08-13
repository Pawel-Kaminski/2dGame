function createItemsLayer()
    map:addCustomLayer("Items", 8)
    items = map.layers["Items"]
    items.sprites = {
        healthPotion = {
            image = love.graphics.newImage(
                "assets/sprites/items/1-health_potion/pt1_scaled.png"),
            x = 540,
            y = 900,
            active = true
        },
        poison = {
            image = love.graphics.newImage(
                "assets/sprites/items/4-poison/pt3_scaled.png"),
            x = 660,
            y = 900,
            active = true
        }
    }
    
    function items:update(dt)
    end

    function items:draw()
        for _, sprite in pairs(self.sprites) do
            if sprite.active ~= false then
                local x = math.floor(sprite.x)
                local y = math.floor(sprite.y)
                local r = sprite.r
                love.graphics.draw(sprite.image, x, y, r)
            end
        end
    end
end
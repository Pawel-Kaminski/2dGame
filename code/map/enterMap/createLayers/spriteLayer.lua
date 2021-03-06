function createSpriteLayer(mapId)
    if mapId == 1 then
        map:addCustomLayer("Sprite Layer", 5) -- Create a Custom Layer
    elseif mapId == 2 or mapId == 3 then
        map:addCustomLayer("Sprite Layer", 5)
    else
        map:addCustomLayer("Sprite Layer", 7)
    end

    spriteLayer = map.layers["Sprite Layer"] -- Add data to Custom Layer
    spriteLayer.sprites = {
        player = {
            image = love.graphics.newImage("assets/sprites/ViviM.png"),
            x = playerPositionX,
            y = playerPositionY,    
        }
    }
    -- Update callback for Custom Layer
    function spriteLayer:update(dt)
        self.sprites.player.x = playerPositionX
        self.sprites.player.y = playerPositionY
    end

    -- Draw callback for Custom Layer
    function spriteLayer:draw()
        --pairs function iterates over all elements in a table
        for _, sprite in pairs(self.sprites) do
            local x = math.floor(sprite.x)
            local y = math.floor(sprite.y)
            love.graphics.draw(sprite.image, x, y)
        end
    end
end
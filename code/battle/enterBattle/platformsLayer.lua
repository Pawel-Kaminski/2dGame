function loadPlatformsLayer()
    battleArena:addCustomLayer("Platforms Layer", 3)
    battlePlatformsLayer = battleArena.layers["Platforms Layer"]
    local platformSprite = 
        love.graphics.newImage("assets/sprites/platform2.png")
    battlePlatformsLayer.sprites = {
        platform1 = {
            image = platformSprite,
            x = 230,
            y = 360
        },
        platform2 = {
            image = platformSprite,
            x = 1260,
            y = 360
        },
        platform3 = {
            image = platformSprite,
            x = 1260,
            y = 540
        },
        platform4 = {
            image = platformSprite,
            x = 1500,
            y = 420
        }
    }

    function battlePlatformsLayer:draw()
        for _, sprite in pairs(self.sprites) do
            local x = math.floor(sprite.x)
            local y = math.floor(sprite.y)
            love.graphics.draw(sprite.image, x, y)
        end  
    end
end
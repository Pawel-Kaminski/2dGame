--WARNING: This file uses global variables: battleArena, battleBackgroundLayer

function loadBackgroundLayer()
    battleArena:addCustomLayer("Background Layer", 2)
    battleBackgroundLayer = battleArena.layers["Background Layer"]
    battleBackgroundLayer.sprites = {
        background = {
            image = love.graphics.newImage("assets/sprites/bg2.png"),
            x = 0,
            y = 180,
            r = 0
        },
        bar = {
            image = love.graphics.newImage("assets/sprites/bar.png"),
            x = 0,
            y = 0,
            r = 0
        },
        bottom = {
            image = love.graphics.newImage("assets/sprites/bottom.png"),
            x = 0,
            y = 695,
            r = 0
        }
    }

    function battleBackgroundLayer:draw()
        for _, sprite in pairs(self.sprites) do
            local x = math.floor(sprite.x)
            local y = math.floor(sprite.y)
            local r = sprite.r
            love.graphics.draw(sprite.image, x, y, r)
        end
    end
end
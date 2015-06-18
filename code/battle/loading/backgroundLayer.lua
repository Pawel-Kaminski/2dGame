function loadBackgroundLayer()
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
end
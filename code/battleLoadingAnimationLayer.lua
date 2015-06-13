function loadAnimationLayer()
    battleAnimationLayer.sprites = {
        fireball = {
            image = love.graphics.newImage("assets/sprites/fireball.png"),
            x = 310,
            y = 330,
            r = 0,
            active = false
        },
        fire = {
            image = love.graphics.newImage("assets/sprites/fire.png"),
            x = 0,
            y = 0,
            r = 0,
            active = false
        },
        arrow_0 = {
            image = love.graphics.newImage("assets/sprites/Arrow_0.png"),
            x = 310,
            y = 330,
            r = 90,
            active = false
        },
        blood = {
            image = love.graphics.newImage("assets/sprites/blood.png"),
            x = 0,
            y = 0,
            r = 0,
            active = false
        }
    }
end
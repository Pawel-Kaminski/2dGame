function thirdMapEnemies()
    local fireGuardian = love.graphics.newImage(
        "assets/sprites/enemies/8-fire_guardian/fire_guardian_scaled.png")
    local iceGuardian = love.graphics.newImage(
        "assets/sprites/enemies/9-ice_guardian/iceGolem.png")
    enemies.sprites = {
        enemy = {
            image = fireGuardian,
            x = 1380,
            y = 180,
            active = active21,
            name = "fireGuardian"
        },
        enemy2 = {
            image = iceGuardian,
            x = 1380,
            y = 900,
            active = active22,
            name = "iceGuardian"
        }
    }
end
function thirdMapEnemies()
    local fireGuardian = love.graphics.newImage(
        "assets/sprites/enemies/8-fire_guardian/fire_guardian_scaled.png")
    local iceGuardian = love.graphics.newImage(
        "assets/sprites/enemies/9-ice_guardian/iceGolem.png")
    enemies.sprites = {
        enemy = {
            image = fireGuardian,
            x = 1620,
            y = 780,
            active = active21,
            name = "forestGuardian"
        },
        enemy2 = {
            image = iceGuardian,
            x = 180,
            y = 420,
            active = active22,
            name = "cactus"
        }
    }
end
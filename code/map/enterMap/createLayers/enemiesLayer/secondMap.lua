function secondMapEnemies()
    local forestGuardian = love.graphics.newImage(
        "assets/sprites/enemies/3-forest_guardian/forest_guardian.png")
    local cactus = love.graphics.newImage(
        "assets/sprites/enemies/4-cactus/cactus_scaled.png")
    local forestCreature = love.graphics.newImage(
        "assets/sprites/enemies/5-forest_creature/forest_creature.png")
    local dragon = love.graphics.newImage(
        "assets/sprites/enemies/6-dragon/dragon.png")
    local airGuardian = love.graphics.newImage(
        "assets/sprites/enemies/7-air_guardian/air_guardian.png")
    enemies.sprites = {
        enemy = {
            image = forestGuardian,
            x = 240,
            y = 780,
            active = active16
        },
        enemy2 = {
            image = cactus,
            x = 180,
            y = 420,
            active = active17
        },
        enemy3 = {
            image = forestCreature,
            x = 480,
            y = 900,
            active = active18
        },
        enemy4 = {
            image = dragon,
            x = 300,
            y = 300,
            active = active19
        },
        enemy5 = {
            image = airGuardian,
            x = 780,
            y = 540,
            active = active20
        }
    }
end
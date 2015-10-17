function firstMapEnemies()
    local creature = love.graphics.newImage(
        "assets/sprites/enemies/2-creature/creature.png")
    local thornbush = love.graphics.newImage(
        "assets/sprites/enemies/1-thornbush/thornbush_used.png")
    enemies.sprites = {
        enemy = {
            image = creature,
            x = 1620,
            y = 900,
            active = active1,
            name = "creature"
        },
        enemy3 = {
            image = thornbush,
            x = 300,
            y = 660,
            active = active3,
            name = "thornbush"
        }
    }
end
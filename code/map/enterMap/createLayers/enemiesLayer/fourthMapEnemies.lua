function fourthMapEnemies()
    local boss = love.graphics.newImage(
        "assets/sprites/enemies/10-Neil_Merzenantar/Neil.png")
    enemies.sprites = {
        boss = {
            image = boss,
            x = 960,
            y = 540,
            active = active28,
            name = "boss"
        }
    }
end
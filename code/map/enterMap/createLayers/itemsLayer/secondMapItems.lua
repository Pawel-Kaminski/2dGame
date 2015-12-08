function secondMapItems()
    itemsLayer.sprites = {
        scroll = {
            image = love.graphics.newImage(
                "assets/sprites/items/7-scroll/scroll_scaled.png"),
            x = 1440,
            y = 780,
            active = active7
        },
        windArtefact = {
            image = love.graphics.newImage(
                "assets/sprites/items/8-artefacts/wind.png"),
            x = 1620,
            y = 0,
            active = active8
        },
        healthPotion2 = {
            image = love.graphics.newImage(
                "assets/sprites/items/1-health_potion/pt1_scaled.png"),
            x = 480,
            y = 960,
            active = active11
        },
        healthElixir = {
            image = love.graphics.newImage(
                "assets/sprites/items/2-health_elixir/"..
                "health_potion_scaled.png"),
            x = 720,
            y = 120,
            active = active12
        },
    }
end
function firstMapItems()
    itemsLayer.sprites = {
        healthPotion = {
            image = love.graphics.newImage(
                "assets/sprites/items/1-health_potion/pt1_scaled.png"),
            x = 540,
            y = 900,
            active = active4
        },
        poison = {
            image = love.graphics.newImage(
                "assets/sprites/items/4-poison/pt3_scaled.png"),
            x = 660,
            y = 900,
            active = active5
        },
        misteriousPlant = {
            image = love.graphics.newImage(
                "assets/sprites/items/6-misterious_plant/mais_scaled.png"),
            x = 1680,
            y = 900,
            active = active6
        }
    }
end
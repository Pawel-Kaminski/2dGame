function fourthMapItems()
    itemsLayer.sprites = {
        earthArtefact = {
            image = love.graphics.newImage(
                "assets/sprites/items/8-artefacts/earth.png"),
            x = 405,
            y = 405,
            active = false
        },
        windArtefact = {
            image = love.graphics.newImage(
                "assets/sprites/items/8-artefacts/wind.png"),
            x = 1455,
            y = 405,
            active = false
        },
        fireArtefact = {
            image = love.graphics.newImage(
                "assets/sprites/items/8-artefacts/fire.png"),
            x = 405,
            y = 750,
            active = false
        },
        iceArtefact = {
            image = love.graphics.newImage(
                "assets/sprites/items/8-artefacts/ice.png"),
            x = 1455,
            y = 750,
            active = false
        }
    }
end
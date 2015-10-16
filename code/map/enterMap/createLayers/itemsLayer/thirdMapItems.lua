function thirdMapItems()
    itemsLayer.sprites = {
            fireArtefact = {
                image = love.graphics.newImage(
                    "assets/sprites/items/8-artefacts/fire.png"),
                x = 1440,
                y = 180,
                active = active9
            },
            iceArtefact = {
                image = love.graphics.newImage(
                    "assets/sprites/items/8-artefacts/ice.png"),
                x = 1440,
                y = 900,
                active = active10
            },
            healthPotion3 = {
                image = love.graphics.newImage(
                    "assets/sprites/items/1-health_potion/pt1_scaled.png"),
                x = 360,
                y = 600,
                active = active13
            },
            antidote = {
                image = love.graphics.newImage(
                    "assets/sprites/items/3-antidote/pt4_scaled.png"),
                x = 600,
                y = 120,
                active = active14
            },
            manaElixir = {
                image = love.graphics.newImage(
                    "assets/sprites/items/5-mana_elixir/mana_potion_scaled.png"),
                x = 180,
                y = 720,
                active = active15
            },
        }
end
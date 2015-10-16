function createLayersMapSelection()
    map4:addCustomLayer("Background", 2)
    map4:addCustomLayer("Elements", 3)
    map4:addCustomLayer("Locked", 4)
    locked = map4.layers["Locked"]
    locked.sprites = {
        locked = {
            image = love.graphics.newImage("assets/sprites/menu/locked.png")
        }
    }
    background = map4.layers["Background"]
    background.sprites = {
        background = {
            image = love.graphics.newImage("assets/sprites/menu/background.jpg"),
            x = 0,
            y = 0,
            active = true
        }
    }
    elements = map4.layers["Elements"]
    elements.sprites = {
        wioskaLipinkiOn = {
            image = love.graphics.newImage("assets/sprites/menu/wioskaLipinkiOn.png"),
            x = 704,
            y = 300,
            active = true
        },
        wioskaLipinkiOff = {
            image = love.graphics.newImage("assets/sprites/menu/wioskaLipinkiOff.png"),
            x = 704,
            y = 300,
            active = false
        },
        mrocznyLasOn = {
            image = love.graphics.newImage("assets/sprites/menu/mrocznyLasOn.png"),
            x = 704,
            y = 400,
            active = false
        },
        mrocznyLasOff = {
            image = love.graphics.newImage("assets/sprites/menu/mrocznyLasOff.png"),
            x = 704,
            y = 400,
            active = true
        },
        krainaRownowagiOn = {
            image = love.graphics.newImage("assets/sprites/menu/krainaRownowagiOn.png"),
            x = 704,
            y = 500,
            active = false
        },
        krainaRownowagiOff = {
            image = love.graphics.newImage("assets/sprites/menu/krainaRownowagiOff.png"),
            x = 704,
            y = 500,
            active = true
        },
        oltarzPrzeznaczeniaOn = {
            image = love.graphics.newImage("assets/sprites/menu/oltarzPrzeznaczeniaOn.png"),
            x = 704,
            y = 600,
            active = false
        },
        oltarzPrzeznaczeniaOff = {
            image = love.graphics.newImage("assets/sprites/menu/oltarzPrzeznaczeniaOff.png"),
            x = 704,
            y = 600,
            active = true
        }
    }
end
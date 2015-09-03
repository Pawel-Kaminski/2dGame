require "map"
require "quests"
mapSelectionState = {}
selectedMap = 0

function mapSelectionState:enter()
    map4 = sti.new("assets/maps/old_map")
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

    function elements:draw()
        for _, sprite in pairs(self.sprites) do
            if sprite.active then
                local x = math.floor(sprite.x)
                local y = math.floor(sprite.y)
                love.graphics.draw(sprite.image, x, y)
            end
        end
    end

    function background:draw()
        for _, sprite in pairs(self.sprites) do
            if sprite.active then
                local x = math.floor(sprite.x)
                local y = math.floor(sprite.y)
                love.graphics.draw(sprite.image, x, y)
            end
        end
    end

    function locked:draw()
        if map2locked then
            love.graphics.draw(self.sprites.locked.image, 704, 400)
        end
        if map3locked then
            love.graphics.draw(self.sprites.locked.image, 704, 500)
        end
        if map4locked then
            love.graphics.draw(self.sprites.locked.image, 704, 600)
        end
    end
end

function mapSelectionState:update()
end

function mapSelectionState:draw()
    map4:draw()
end

function mapSelectionState:keypressed(key)
    if key == "down" then
        --TODO: implement map selection
        if elements.sprites.wioskaLipinkiOn.active then
            elements.sprites.wioskaLipinkiOn.active = false
            elements.sprites.wioskaLipinkiOff.active = true
            elements.sprites.mrocznyLasOn.active = true
            elements.sprites.mrocznyLasOff.active = false
        elseif elements.sprites.mrocznyLasOn.active then
            elements.sprites.mrocznyLasOn.active = false
            elements.sprites.mrocznyLasOff.active = true
            elements.sprites.krainaRownowagiOn.active = true
            elements.sprites.krainaRownowagiOff.active = false
        elseif elements.sprites.krainaRownowagiOn.active then
            elements.sprites.krainaRownowagiOn.active = false
            elements.sprites.krainaRownowagiOff.active = true
            elements.sprites.oltarzPrzeznaczeniaOn.active = true
            elements.sprites.oltarzPrzeznaczeniaOff.active = false
        elseif elements.sprites.oltarzPrzeznaczeniaOn.active then
            elements.sprites.oltarzPrzeznaczeniaOn.active = false
            elements.sprites.oltarzPrzeznaczeniaOff.active = true
            elements.sprites.wioskaLipinkiOn.active = true
            elements.sprites.wioskaLipinkiOff.active = false
        end
    end
    if key == "up" then
        if elements.sprites.wioskaLipinkiOn.active then
            elements.sprites.wioskaLipinkiOn.active = false
            elements.sprites.wioskaLipinkiOff.active = true
            elements.sprites.oltarzPrzeznaczeniaOn.active = true
            elements.sprites.oltarzPrzeznaczeniaOff.active = false
        elseif elements.sprites.mrocznyLasOn.active then
            elements.sprites.mrocznyLasOn.active = false
            elements.sprites.mrocznyLasOff.active = true
            elements.sprites.wioskaLipinkiOn.active = true
            elements.sprites.wioskaLipinkiOff.active = false
        elseif elements.sprites.krainaRownowagiOn.active then
            elements.sprites.krainaRownowagiOn.active = false
            elements.sprites.krainaRownowagiOff.active = true
            elements.sprites.mrocznyLasOn.active = true
            elements.sprites.mrocznyLasOff.active = false
        elseif elements.sprites.oltarzPrzeznaczeniaOn.active then
            elements.sprites.oltarzPrzeznaczeniaOn.active = false
            elements.sprites.oltarzPrzeznaczeniaOff.active = true
            elements.sprites.krainaRownowagiOn.active = true
            elements.sprites.krainaRownowagiOff.active = false
        end
    end
    if key == "return" then
        if elements.sprites.wioskaLipinkiOn.active then
            selectedMap = 1
        elseif elements.sprites.mrocznyLasOn.active then
            selectedMap = 2
        elseif elements.sprites.krainaRownowagiOn.active then
            selectedMap = 3
        elseif elements.sprites.oltarzPrzeznaczeniaOn.active then
            selectedMap = 4
        end
        Gamestate.switch(mapState)
    end
end
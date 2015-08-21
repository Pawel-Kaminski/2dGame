require "map"
require "quests"
mapSelectionState = {}

function mapSelectionState:enter()
    map4 = sti.new("assets/maps/old_map")
    map4:addCustomLayer("Background", 2)
    map4:addCustomLayer("Elements", 3)
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
                local r = sprite.r
                love.graphics.draw(sprite.image, x, y, r)
            end
        end
    end

    function background:draw()
        for _, sprite in pairs(self.sprites) do
            if sprite.active then
                local x = math.floor(sprite.x)
                local y = math.floor(sprite.y)
                local r = sprite.r
                love.graphics.draw(sprite.image, x, y, r)
            end
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
        --TODO: implement map selection
    end
    if key == "return" then
        if elements.sprites.wioskaLipinkiOn.active then
            Gamestate.switch(mapState)
        end
    end
end
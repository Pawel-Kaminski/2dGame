require "mapSelection"
menuState = {}

function menuState:enter()
    --love.graphics.setBackgroundColor(175, 202, 175)
    local mainMenuMusic = love.audio.newSource("music/ElPostre_0.ogg")
    love.audio.play(mainMenuMusic)
    map3 = sti.new("assets/maps/old_map")
    map3:addCustomLayer("Background", 2)
    map3:addCustomLayer("Elements", 3)
    background = map3.layers["Background"]
    background.sprites = {
        background = {
            image = love.graphics.newImage("assets/sprites/menu/background.jpg"),
            x = 0,
            y = 0,
            active = true
        }
    }
    elements = map3.layers["Elements"]
    elements.sprites = {
        newGameOn = {
            image = love.graphics.newImage("assets/sprites/menu/newGameOn.png"),
            x = 704,
            y = 300,
            active = true
        },
        newGameOff = {
            image = love.graphics.newImage("assets/sprites/menu/newGameOff.png"),
            x = 704,
            y = 300,
            active = false
        },
        exitGameOn = {
            image = love.graphics.newImage("assets/sprites/menu/exitGameOn.png"),
            x = 704,
            y = 400,
            active = false
        },
        exitGameOff = {
            image = love.graphics.newImage("assets/sprites/menu/exitGameOff.png"),
            x = 704,
            y = 400,
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

function menuState:update()
end

function menuState:draw()
    map3:draw()
end

function menuState:keypressed(key)
    if key == "down" or key == "up" then
        for _, sprite in pairs(elements.sprites) do
            sprite.active = not sprite.active
        end
    end
    if key == "return" then
        if elements.sprites.newGameOn.active then
            Gamestate.switch(mapSelectionState)
        elseif elements.sprites.exitGameOn.active then
            love.event.quit()
        end
    end
end
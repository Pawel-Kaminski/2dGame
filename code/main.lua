sti = require "sti"
Gamestate = require "hump.gamestate"
Battle = require "battle"

local mapState = {}

function love.load()
    Gamestate.registerEvents()
    Gamestate.switch(mapState)

    sound = love.audio.newSource("music/Otto_Halmen_Sylvan_Waltz_1.mp3")
    sound2 = love.audio.newSource("music/battleThemeA.mp3")
    love.audio.play(sound)

    xx = 0
    yy = 0
    love.keyboard.setKeyRepeat(true)
    love.mouse.setVisible(false)
    love.window.setMode(1920, 1080, {fullscreen=true}) 

    -- Grab window size
	windowWidth = love.graphics.getWidth()
	windowHeight = love.graphics.getHeight()

    --Load a map exported to Lua from Tiled
    map = sti.new("assets/maps/new_map")

    love.resize(windowWidth, windowHeight)

    -- Create a Custom Layer
    map:addCustomLayer("Sprite Layer", 2)

    -- Add data to Custom Layer
    spriteLayer = map.layers["Sprite Layer"]
    spriteLayer.sprites = {
        player = {
            image = love.graphics.newImage("assets/sprites/man2.png"),
            x = 0,
            y = 0,
            r = 0       
        },
        enemy = {
            image = love.graphics.newImage("assets/sprites/enemy.png"),
            x = 1200,
            y = 120,
            r = 0
        }
    }

    -- Update callback for Custom Layer
    function spriteLayer:update(dt)
        self.sprites.player.x = xx
        self.sprites.player.y = yy
    end

    -- Draw callback for Custom Layer
    function spriteLayer:draw()
        for _, sprite in pairs(self.sprites) do
            local x = math.floor(sprite.x)
            local y = math.floor(sprite.y)
            local r = sprite.r
            love.graphics.draw(sprite.image, x, y, r)
        end
    end
end

--function love.update(dt)
function mapState:update(dt)
    map:update(dt)
    if spriteLayer.sprites.player.x == spriteLayer.sprites.enemy.x then
        if spriteLayer.sprites.player.y == spriteLayer.sprites.enemy.y then
            love.audio.stop()
            Gamestate.switch(battleState)
        end
    end
end

function love.draw()
    
    local scaleX = 1
    local scaleY = 1
    
    -- Draw the map and all objects within
    map:draw(scaleX, scaleY)
end

function love.resize(windowWidth, windowHeight)
    map:resize(windowWidth, windowHeight)
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
    elseif key == "right" then
        xx = xx + 60
    elseif key == "left" then
        xx = xx - 60
    elseif key == "down" then
        yy = yy + 60
    elseif key == "up" then
        yy = yy - 60
    end
end
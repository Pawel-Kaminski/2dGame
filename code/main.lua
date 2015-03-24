local sti = require "sti"
Gamestate = require "hump.gamestate"

local mapState = {}
local battleState = {}

function battleState:enter()
    sound = love.audio.newSource("music/battleThemeA.mp3")
end

function battleState:update(dt)
end

function battleState:draw()
    love.audio.play(sound)
    battleArena:draw()
end

function love.load()
    Gamestate.registerEvents()
    Gamestate.switch(mapState)

    sound = love.audio.newSource("music/Otto_Halmen_Sylvan_Waltz_1.mp3")
    love.audio.play(sound)

    xx = 0
    yy = 0
    love.keyboard.setKeyRepeat(true)
    love.mouse.setVisible(false)
    love.window.setMode(1920, 1080, {fullscreen=true}) 

    -- Grab window size
	windowWidth = love.graphics.getWidth()
	windowHeight = love.graphics.getHeight()

    -- Set world meter size (in pixels)
	--love.physics.setMeter(32)

    --Load a map exported to Lua from Tiled
    map = sti.new("assets/maps/new_map")
    battleArena = sti.new("assets/maps/battle_map")
    --map = sti.new("assets/maps/example2")

    love.resize(windowWidth, windowHeight)

    -- Create a Custom Layer
    map:addCustomLayer("Sprite Layer", 2)

    -- Add data to Custom Layer
    --local spriteLayer = map.layers["Sprite Layer"]
    spriteLayer = map.layers["Sprite Layer"]
    spriteLayer.sprites = {
        player = {
            image = love.graphics.newImage("assets/sprites/man2.png"),
            x = 0,
            y = 0,
            r = 0,       
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
        --for _, sprite in pairs(self.sprites) do
            --sprite.x = xx
            --sprite.y = yy
        --end
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

function love.update(dt)
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
    
    -- Translation would normally be based on a player's x/y
    --local translateX = xx
    --local translateY = 0

    -- Draw Range culls unnecessary tiles
    --map:setDrawRange(translateX, translateY, windowWidth, windowHeight)
    
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
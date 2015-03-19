local sti = require "sti"

function love.load()
    -- Grab window size
	windowWidth = love.graphics.getWidth()
	windowHeight = love.graphics.getHeight()

    -- Set world meter size (in pixels)
	--love.physics.setMeter(32)

    --Load a map exported to Lua from Tiled
    map = sti.new("assets/maps/example2")

    -- Create a Custom Layer
    map:addCustomLayer("Sprite Layer", 3)

    -- Add data to Custom Layer
    local spriteLayer = map.layers["Sprite Layer"]
    spriteLayer.sprites = {
        player = {
            image = love.graphics.newImage("assets/sprites/army.png"),
            x = 64,
            y = 64,
            r = 0,       
        }
    }

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
end

function love.draw()
    -- Translation would normally be based on a player's x/y
    --local translateX = 0
    --local translateY = 0

    -- Draw Range culls unnecessary tiles
    --map:setDrawRange(translateX, translateY, windowWidth, windowHeight)
    
    -- Draw the map and all objects within
    map:draw()
end

function love.resize(w, h)
    map:resize(w, h)
end
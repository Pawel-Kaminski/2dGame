require "battle"
mapState = {} --STI: creates new state called "mapState"

function mapState:enter()
    activeEnemySprite = null
    sound = love.audio.newSource("music/Otto_Halmen_Sylvan_Waltz_1.mp3")
    love.audio.play(sound)
    playerPositionX = 0
    playerPositionY = 0
    map = sti.new("assets/maps/new_map") --Load a map exported to Lua from Tiled
    map:addCustomLayer("Sprite Layer", 2) -- Create a Custom Layer
    spriteLayer = map.layers["Sprite Layer"] -- Add data to Custom Layer
    spriteLayer.sprites = {
        player = {
            image = love.graphics.newImage("assets/sprites/man2.png"),
            x = 0,
            y = 0,
            r = 0       
        }
    }
    
    map:addCustomLayer("Enemies", 3) --Layer created for displaying enemies
    enemies = map.layers["Enemies"]
    enemies.sprites = {
        enemy = {
            image = love.graphics.newImage("assets/sprites/enemy.png"),
            x = 1200,
            y = 120,
            r = 0
        },
        enemy2 = {
            image = love.graphics.newImage("assets/sprites/enemy.png"),
            x = 1200,
            y = 300,
            r = 0
        },
        enemy3 = {
            image = love.graphics.newImage("assets/sprites/enemy.png"),
            x = 600,
            y = 360,
            r = 0
        }
    }

    -- Update callback for Custom Layer
    function spriteLayer:update(dt)
        self.sprites.player.x = playerPositionX
        self.sprites.player.y = playerPositionY
    end

    -- Draw callback for Custom Layer
    function spriteLayer:draw()
        --pairs function iterates over all elements in a table
        for _, sprite in pairs(self.sprites) do
            local x = math.floor(sprite.x)
            local y = math.floor(sprite.y)
            local r = sprite.r
            love.graphics.draw(sprite.image, x, y, r)
        end
    end

    -- Update callback for Enemies
    function enemies:update(dt)
    end

    -- Draw callback for Custom Layer
    function enemies:draw()
        --pairs function iterates over all elements in a table
        for _, sprite in pairs(self.sprites) do
            --if sprite ~= null then
                local x = math.floor(sprite.x)
                local y = math.floor(sprite.y)
                local r = sprite.r
                love.graphics.draw(sprite.image, x, y, r)
            --end
        end
    end

end

function mapState:update(dt)
    map:update(dt)
    for _, sprite in pairs(enemies.sprites) do
        --if enemies.sprites.sprite ~= null then
            if spriteLayer.sprites.player.x == sprite.x then
                if spriteLayer.sprites.player.y == sprite.y then
                    love.audio.stop()
                    activeEnemySprite = sprite
                    Gamestate.switch(battleState)
                end
            end
        --end
    end
end

function mapState:draw()
    map:draw()
end

function mapState:keypressed(key)
    if key == "right" then
        playerPositionX = playerPositionX + 60
    elseif key == "left" then
        playerPositionX = playerPositionX - 60
    elseif key == "down" then
        playerPositionY = playerPositionY + 60
    elseif key == "up" then
        playerPositionY = playerPositionY - 60
    end
end
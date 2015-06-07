function mapState:enter()
    --activeEnemySprite contains sprite of enemy on which player entered
    activeEnemySprite = null
    sound = love.audio.newSource("music/Otto_Halmen_Sylvan_Waltz_1.mp3")
    love.audio.play(sound)
    sound:setLooping(true)

    map = sti.new("assets/maps/new_map") --Load a map exported to Lua from Tiled
    map:addCustomLayer("Sprite Layer", 3) -- Create a Custom Layer
    spriteLayer = map.layers["Sprite Layer"] -- Add data to Custom Layer
    spriteLayer.sprites = {
        player = {
            image = love.graphics.newImage("assets/sprites/ViviM.png"),
            x = playerPositionX,
            y = playerPositionY,
            r = 0       
        }
    }
    
    map:addCustomLayer("Enemies", 4) --Layer created for displaying enemies
    enemies = map.layers["Enemies"]
    dorver = love.graphics.newImage("assets/sprites/dorver/used.png")
    enemies.sprites = {
        enemy = {
            image = dorver,
            x = 1200,
            y = 120,
            r = 0,
            active = active1
        },
        enemy2 = {
            image = dorver,
            x = 1200,
            y = 300,
            r = 0,
            active = active2
        },
        enemy3 = {
            image = dorver,
            x = 600,
            y = 360,
            r = 0,
            active = active3
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
            if sprite.active ~= false then
                local x = math.floor(sprite.x)
                local y = math.floor(sprite.y)
                local r = sprite.r
                love.graphics.draw(sprite.image, x, y, r)
            end
        end
    end
end
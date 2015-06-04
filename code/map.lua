require "battle"
mapState = {} --STI: creates new state called "mapState"

active1 = true
active2 = true
active3 = true

function mapState:enter()
    activeEnemySprite = null
    sound = love.audio.newSource("music/Otto_Halmen_Sylvan_Waltz_1.mp3")
    love.audio.play(sound)
    sound:setLooping(true)
    --playerPositionX = 0
    --playerPositionY = 0

    map = sti.new("assets/maps/new_map") --Load a map exported to Lua from Tiled
    map:addCustomLayer("Sprite Layer", 3) -- Create a Custom Layer
    spriteLayer = map.layers["Sprite Layer"] -- Add data to Custom Layer
    spriteLayer.sprites = {
        player = {
            image = love.graphics.newImage("assets/sprites/ViviM.png"),
            x = 0,
            y = 0,
            r = 0       
        }
    }
    
    map:addCustomLayer("Enemies", 4) --Layer created for displaying enemies
    enemies = map.layers["Enemies"]
    enemies.sprites = {
        enemy = {
            image = love.graphics.newImage("assets/sprites/enemy.png"),
            x = 1200,
            y = 120,
            r = 0,
            active = active1
        },
        enemy2 = {
            image = love.graphics.newImage("assets/sprites/enemy.png"),
            x = 1200,
            y = 300,
            r = 0,
            active = active2
        },
        enemy3 = {
            image = love.graphics.newImage("assets/sprites/enemy.png"),
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

function mapState:update(dt)
    map:update(dt)
    for _, sprite in pairs(enemies.sprites) do
        if spriteLayer.sprites.player.x == sprite.x then
            if spriteLayer.sprites.player.y == sprite.y and sprite.active then
                firstEnemy = Enemy1
                secondEnemy = Enemy1_Second
                thirdEnemy = Enemy1_Third
                love.audio.stop()
                activeEnemySprite = sprite
                if sprite.y == 120 then active1 = false end
                if sprite.y == 300 then active2 = false end
                if sprite.y == 360 then active3 = false end
                Gamestate.switch(battleState)
            end
        end
    end
end

function mapState:draw()
    map:draw()
end

function mapState:keypressed(key)
    if key == "right" then
        if playerPositionX < 1860 then
            playerPositionX = playerPositionX + 60
        end
    elseif key == "left" then
        if playerPositionX > 0 then
            playerPositionX = playerPositionX - 60
        end
    elseif key == "down" then
        if playerPositionY < 1020 then
            playerPositionY = playerPositionY + 60
        end
    elseif key == "up" then
        if playerPositionY > 0 then
            playerPositionY = playerPositionY - 60
        end
    end
end
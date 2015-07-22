function createEnemiesLayer()
    map:addCustomLayer("Enemies", 4) --Layer created for displaying enemies
    enemies = map.layers["Enemies"]
    local dorver = love.graphics.newImage("assets/sprites/enemies/2-creature/creature.png")
    local thornbush = love.graphics.newImage("assets/sprites/enemies/1-thornbush/thornbush_used.png")
    enemies.sprites = {
        enemy = {
            image = dorver,
            x = 1200,
            y = 120,
            active = active1
        },
        enemy2 = {
            image = dorver,
            x = 1200,
            y = 300,
            active = active2
        },
        enemy3 = {
            image = thornbush,
            x = 300,
            y = 660,
            active = active3
        },
    }

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
function createTalkingLayer()
    map:addCustomLayer("Talking", 7)
    Talking = map.layers["Talking"]
    Talking.sprites = {
        dialogBackground = { 
            image = love.graphics.newImage("assets/sprites/dialogBackground.png"),
            x = 480,
            y = 100,
            r = 0,
            active = false
        },
        quest = {
            image = love.graphics.newImage("assets/sprites/quest.png"),
            x = 480,
            y = 200,
            r = 0,
            active = false
        }
    }

    function Talking:update(dt)
    end

    function Talking:draw()
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
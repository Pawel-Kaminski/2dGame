function createTalkingLayer(mapId)
    if mapId == 1 then
        map:addCustomLayer("Talking", 7)
    elseif mapId == 2 or mapId == 3 then
        map:addCustomLayer("Talking", 7)
    else
        map:addCustomLayer("Talking", 8)
    end

    Talking = map.layers["Talking"]
    Talking.sprites = {
        dialogBackground = { 
            image = love.graphics.newImage(
                "assets/sprites/dialogBackground.png"),
            x = 480,
            y = 100,
            active = false
        },
        quest = {
            image = love.graphics.newImage("assets/sprites/quest.png"),
            x = 480,
            y = 200,
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
                love.graphics.draw(sprite.image, x, y)
            end
        end
    end
end
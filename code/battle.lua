battleState = {}

function battleState:enter()
    sound = love.audio.newSource("music/battleThemeA.mp3")
    love.audio.play(sound)
end

function battleState:update(dt)
end

function battleState:draw()
    battleArena = sti.new("assets/maps/battle_map")
    battleArena:addCustomLayer("Sprite Layer", 2)
    battleSpriteLayer = battleArena.layers["Sprite Layer"]
    battleSpriteLayer.sprites = {
        title = {
            image = love.graphics.newImage("assets/sprites/battle.png"),
            x = 870,
            y = 30,
            r = 0,       
        }
    }
    function battleSpriteLayer:draw()
        for _, sprite in pairs(self.sprites) do
            local x = math.floor(sprite.x)
            local y = math.floor(sprite.y)
            local r = sprite.r
            love.graphics.draw(sprite.image, x, y, r)
        end
    end
    battleArena:draw()
end
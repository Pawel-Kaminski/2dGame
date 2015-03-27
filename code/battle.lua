require "player"
require "enemy1"

battleState = {}

function battleState:enter()
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
            r = 0       
        },
        player = {
            image = love.graphics.newImage("assets/sprites/man2.png"),
            x = 180,
            y = 300,
            r = 0, 
        },
        enemy1 = {
            image = love.graphics.newImage("assets/sprites/enemy.png"),
            x = 1320,
            y = 300,
            r = 0, 
        },
        lifebar = {
            image = love.graphics.newImage("assets/sprites/lifebar.png"),
            x = 10,
            y = 10,
            r = 0
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
    love.graphics.setColor(0, 0, 0)
    twenty = love.graphics.newFont(20)
    love.graphics.setFont(twenty)
    love.graphics.printf(Player.healthPoints.."/"..Player.maxHealth, 153, 23, 200, "left", 0)
    love.graphics.printf(Player.magicPoints.."/"..Player.maxMagic, 173, 58, 200, "left", 0)
    love.audio.play(sound2)
    fight(Enemy1)
end

function fight(o1)
end
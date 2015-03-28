require "player"
require "enemy1"

battleState = {}

function battleState:enter()
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
    twenty = love.graphics.newFont(20)
    love.audio.play(sound2)
end

dtotal = 0
function battleState:update(dt)
    dtotal = dtotal + dt
    if dtotal >= 0.25 then
        fight(Enemy1)
        dtotal = 0
    end
end

function battleState:draw()
    battleArena:draw()
    love.graphics.setColor(0, 0, 0)
    love.graphics.setFont(twenty)
    love.graphics.printf(Player.healthPoints.."/"..Player.maxHealth, 153, 23, 200, "left", 0)
    love.graphics.printf(Player.magicPoints.."/"..Player.maxMagic, 173, 58, 200, "left", 0)
    love.graphics.setColor(255,255,255)
    love.graphics.printf("Tura gracza za: "..Player.remainingWaitingTime, 150, 715, 500, "left", 0)
    love.graphics.printf("Tura "..Enemy1.name.." za: "..Enemy1.remainingWaitingTime, 150, 745, 500, "left", 0)
end

function fight(o1, o2, o3)
    if Player.remainingWaitingTime > 0 then
        Player.remainingWaitingTime = Player.remainingWaitingTime - 1
    end
    if o1.remainingWaitingTime > 0 then
        o1.remainingWaitingTime = o1.remainingWaitingTime - 1
    end
end
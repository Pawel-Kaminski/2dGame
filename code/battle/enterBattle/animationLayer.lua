--WARNING: This file uses global variables: battleArena, battleAnimationLayer

require "battle.enterBattle.animationLayer.updateAnimationLayer"

function loadAnimationLayer()
    battleArena:addCustomLayer("Animation Layer", 4)
    battleAnimationLayer = battleArena.layers["Animation Layer"]
    battleAnimationLayer.sprites = {
        fireball = {
            image = love.graphics.newImage("assets/sprites/fireball.png"),
            x = 310,
            y = 270,
            active = false
        },
        fire = {
            image = love.graphics.newImage("assets/sprites/fire.png"),
            x = 0,
            y = 0,
            active = false
        },
        arrow_0 = {
            image = love.graphics.newImage("assets/sprites/Arrow_0.png"),
            x = 310,
            y = 330,
            r = 90,
            active = false
        },
        blood = {
            image = love.graphics.newImage("assets/sprites/blood.png"),
            x = 0,
            y = 0,
            active = false
        },
        bullet = {
            image = love.graphics.newImage("assets/sprites/bullet.png"),
            x = 0,
            y = 0,
            r = 0,
            active = false
        },
        explosion = {
            image = love.graphics.newImage("assets/sprites/explosion.png"),
            x = 0,
            y = 0,
            active = false
        },
        heal = {
            image = love.graphics.newImage("assets/sprites/heal.png"),
            x = 195,
            y = 180,
            active = false
        },
        healingBall = {
            image = love.graphics.newImage("assets/sprites/healingBall.png"),
            x = 285,
            y = 0,
            active = false
        },
        defend = {
            image = love.graphics.newImage("assets/sprites/defend.png"),
            x = 195,
            y = 180,
            active = false
        },
        defenceBall = {
            image = love.graphics.newImage("assets/sprites/defenceBall.png"),
            x = 285,
            y = 0,
            active = false
        },
        poison = {
            image = love.graphics.newImage("assets/sprites/poison.png"),
            x = 0,
            y = 0,
            active = false
        },
        poison2 = {
            image = love.graphics.newImage("assets/sprites/poison2.png"),
            x = 0,
            y = 0,
            active = false
        },
        bigArrow = {
            image = love.graphics.newImage("assets/sprites/Arrow_0_large.png"),
            x = 310,
            y = 330,
            r = 90,
            active = false
        },
        firestream = {
            image = love.graphics.newImage("assets/sprites/firestream.png"),
            x = 310,
            y = 330,
            r = 0,
            active = false
        },
        icearrow = {
            image = love.graphics.newImage("assets/sprites/icearrow.png"),
            x = 310,
            y = 330,
            r = 0,
            active = false
        },
        hellfire = {
            image = love.graphics.newImage("assets/sprites/hellfire.png"),
            x = 0,
            y = 0,
            active = false
        },
        icecircle = {
            image = love.graphics.newImage("assets/sprites/icecircle.png"),
            x = 0,
            y = 0,
            active = false
        },
        firestreamE = {
            image = love.graphics.newImage("assets/sprites/firestreamE.png"),
            x = 0,
            y = 0,
            active = false
        },
        icearrowE = {
            image = love.graphics.newImage("assets/sprites/icearrowE.png"),
            x = 0,
            y = 0,
            active = false
        },
        hellfireE = {
            image = love.graphics.newImage("assets/sprites/hellfireE.png"),
            x = 0,
            y = 0,
            active = false
        },
        icecircleE = {
            image = love.graphics.newImage("assets/sprites/icecircleE.png"),
            x = 0,
            y = 0,
            active = false
        }        
    }

    function battleAnimationLayer:update(dt)
        updateAnimationLayer(dt)
    end

    function battleAnimationLayer:draw()    
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
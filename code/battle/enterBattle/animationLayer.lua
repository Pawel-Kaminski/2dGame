--WARNING: This file uses global variables: battleArena, battleAnimationLayer

require "battle.enterBattle.animationLayer.updateAnimationLayer"

function loadAnimationLayer()
    battleArena:addCustomLayer("Animation Layer", 4)
    battleAnimationLayer = battleArena.layers["Animation Layer"]
    battleAnimationLayer.sprites = {
        fireball = {
            image = love.graphics.newImage("assets/sprites/fireball.png"),
            x = 310,
            y = 330,
            r = 0,
            active = false
        },
        fire = {
            image = love.graphics.newImage("assets/sprites/fire.png"),
            x = 0,
            y = 0,
            r = 0,
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
            r = 0,
            active = false
        },
        test1 = {
            image = love.graphics.newImage("assets/sprites/Arrow_0.png"),
            x = 0,
            y = 0,
            r = 90,
            active = false
        },
        test2 = {
            image = love.graphics.newImage("assets/sprites/blood.png"),
            x = 0,
            y = 0,
            r = 0,
            active = false
        },
        heal = {
            image = love.graphics.newImage("assets/sprites/heal.png"),
            x = 195,
            y = 180,
            r = 0,
            active = false
        },
        healingBall = {
            image = love.graphics.newImage("assets/sprites/healingBall.png"),
            x = 285,
            y = 0,
            r = 0,
            active = false
        },
        defend = {
            image = love.graphics.newImage("assets/sprites/defend.png"),
            x = 195,
            y = 180,
            r = 0,
            active = false
        },
        defenceBall = {
            image = love.graphics.newImage("assets/sprites/defenceBall.png"),
            x = 285,
            y = 0,
            r = 0,
            active = false
        }
    }

    function battleAnimationLayer:update(dt)
        updateAnimationLayer()
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
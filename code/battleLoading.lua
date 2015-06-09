require "battle"
require "playerActionFlags"
require "player"
require "enemyDorver"
require "battleBackend"
require "battleBackendMakeAction"
require "battleBackendTurns"
require "battleBackendWinning"
require "battleControlsMoveArrow"
require "battleControls"
function battleState:enter()
    setInitialValues(Player, PlayerStatistics)
    setInitialValues(firstEnemy, stats)
    setInitialValues(secondEnemy, stats)
    setInitialValues(thirdEnemy, stats)

    selectedEnemy = Enemy1

    victory = false
    defeat = false
    displayTurnInfo = true
    countingActive = true
    actions = listOfAllActions()
    sound2 = love.audio.newSource("music/battleThemeA.mp3")
    love.audio.play(sound2)

    sound2:setLooping(true)

    battleArena = sti.new("assets/maps/battle_map")
    battleArena:addCustomLayer("Background Layer", 2)
    battleArena:addCustomLayer("Sprite Layer", 3)
    battleArena:addCustomLayer("Animation Layer", 4)
    battleSpriteLayer = battleArena.layers["Sprite Layer"]
    battleBackgroundLayer = battleArena.layers["Background Layer"]
    battleAnimationLayer = battleArena.layers["Animation Layer"]
    arrowX = 90
    arrowY = 900
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
        }
    }
    battleSpriteLayer.sprites = {
        player = {
            image = love.graphics.newImage("assets/sprites/ViviM.png"),
            x = 300,
            y = 300,
            r = 0 
        },
        enemy1 = {
            image = activeEnemySprite.image,
            x = 1320,
            y = 300,
            r = 0,
            active = true
        },
        enemy2 = {
            image = activeEnemySprite.image,
            x = 1530,
            y = 360,
            r = 0,
            active = true
        },
        enemy3 = {
            image = activeEnemySprite.image,
            x = 1320,
            y = 480,
            r = 0,
            active = true
        },
        lifebarPlayer = {
            image = love.graphics.newImage("assets/sprites/lifebar.png"),
            x = 10,
            y = 10,
            r = 0
        },
        lifebarEnemy = {
            image = love.graphics.newImage("assets/sprites/lifebar.png"),
            x = 1070,
            y = 10,
            r = 0,
            active = true
        },
        lifebarEnemy2 = {
            image = love.graphics.newImage("assets/sprites/lifebar.png"),
            x = 1370,
            y = 10,
            r = 0,
            active = true
        },
        lifebarEnemy3 = {
            image = love.graphics.newImage("assets/sprites/lifebar.png"),
            x = 1670,
            y = 10,
            r = 0,
            active = true
        },
        arrow = {
            image = love.graphics.newImage("assets/sprites/arrow.png"),
            x = arrowX,
            y = arrowY,
            r = 0
        },
        platform1 = {
            image = love.graphics.newImage("assets/sprites/platform2.png"),
            x = 230,
            y = 360,
            r = 0
        },
        platform2 = {
            image = love.graphics.newImage("assets/sprites/platform2.png"),
            x = 1260,
            y = 360,
            r = 0
        },
        platform3 = {
            image = love.graphics.newImage("assets/sprites/platform2.png"),
            x = 1260,
            y = 540,
            r = 0
        },
        platform4 = {
            image = love.graphics.newImage("assets/sprites/platform2.png"),
            x = 1500,
            y = 420,
            r = 0
        }
    }
    battleBackgroundLayer.sprites = {
        background = {
            image = love.graphics.newImage("assets/sprites/bg2.png"),
            x = 0,
            y = 180,
            r = 0
        },
        bar = {
            image = love.graphics.newImage("assets/sprites/bar.png"),
            x = 0,
            y = 0,
            r = 0
        },
        bottom = {
            image = love.graphics.newImage("assets/sprites/bottom.png"),
            x = 0,
            y = 695,
            r = 0
        }
    }

    function battleAnimationLayer:update(dt)
        if displayAnimation then
            self.sprites.fireball.active = true
            if selectedEnemy == firstEnemy and self.sprites.fireball.x < 1350 then
                self.sprites.fireball.x = self.sprites.fireball.x + 3
            elseif selectedEnemy == secondEnemy and self.sprites.fireball.x < 1530 then
                self.sprites.fireball.x = self.sprites.fireball.x + 3
                self.sprites.fireball.y = 0.04878 * self.sprites.fireball.x + 285.36585
            elseif selectedEnemy == thirdEnemy and self.sprites.fireball.x < 1350 then
                self.sprites.fireball.x = self.sprites.fireball.x + 3
                self.sprites.fireball.y = 0.17647 * self.sprites.fireball.x + 247.059
            else
                displayAnimation = false
                self.sprites.fireball.active = false
                self.sprites.fire.x = self.sprites.fireball.x - 15
                self.sprites.fire.y = self.sprites.fireball.y - 15
                self.sprites.fire.active = true
                self.sprites.fireball.x = 310
                self.sprites.fireball.y = 330
                countingForFire = 0
            end
        end
        if self.sprites.fire.active then
            countingForFire = countingForFire + dt
            if countingForFire > 1 then
                self.sprites.fire.active = false
                if enemyDestinedToDie ~= null then
                    enemyDestinedToDie.active = false
                    hideBar.active = false
                    enemyDestinedToDie = null
                end
            end
        end
    end

    function battleAnimationLayer:draw()
        --if displayAnimation then
            for _, sprite in pairs(self.sprites) do
                if sprite.active ~= false then
                    local x = math.floor(sprite.x)
                    local y = math.floor(sprite.y)
                    local r = sprite.r
                    love.graphics.draw(sprite.image, x, y, r)
                end
            end
        --end
    end

    function battleSpriteLayer:update(dt)
        self.sprites.arrow.x = arrowX
        self.sprites.arrow.y = arrowY
    end

    function battleSpriteLayer:draw()
        for _, sprite in pairs(self.sprites) do
            --if describes conditions when arrow is displayed
            if (sprite.y ~= arrowY or displayMenu or displayActions or defeat or selectingEnemy) and sprite.active ~= false then
                local x = math.floor(sprite.x)
                local y = math.floor(sprite.y)
                local r = sprite.r
                love.graphics.draw(sprite.image, x, y, r)
            end
        end
    end

    function battleBackgroundLayer:draw()
        for _, sprite in pairs(self.sprites) do
            local x = math.floor(sprite.x)
            local y = math.floor(sprite.y)
            local r = sprite.r
            love.graphics.draw(sprite.image, x, y, r)
        end
    end

    twenty = love.graphics.newFont(20)
end
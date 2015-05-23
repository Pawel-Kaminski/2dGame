require "player"
require "enemy1"
require "battleBackend"
require "battleControls"
function battleState:enter()
    setInitialValues(Player, PlayerStatistics)
    setInitialValues(Enemy1, Enemy1Statistics)
    setInitialValues(Enemy1_Second, Enemy1Statistics)
    setInitialValues(Enemy1_Third, Enemy1Statistics)

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
    battleSpriteLayer = battleArena.layers["Sprite Layer"]
    battleBackgroundLayer = battleArena.layers["Background Layer"]
    arrowX = 90
    arrowY = 900
    battleSpriteLayer.sprites = {
        player = {
            image = love.graphics.newImage("assets/sprites/man2.png"),
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
        belka1 = {
            image = love.graphics.newImage("assets/sprites/platform2.png"),
            x = 230,
            y = 360,
            r = 0
        },
        belka2 = {
            image = love.graphics.newImage("assets/sprites/platform2.png"),
            x = 1260,
            y = 360,
            r = 0
        },
        belka3 = {
            image = love.graphics.newImage("assets/sprites/platform2.png"),
            x = 1260,
            y = 540,
            r = 0
        },
        belka4 = {
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
        }
    }
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
--WARNING: This file uses global variables: battleArena, battleSpriteLayer

require "battle.enterBattle.spriteLayer.drawSpriteLayer"

function loadSpriteLayer()
    battleArena:addCustomLayer("Sprite Layer", 4)
    battleSpriteLayer = battleArena.layers["Sprite Layer"]
    local lifebarSprite = love.graphics.newImage("assets/sprites/lifebar2.png")
    battleSpriteLayer.sprites = {
        player = {
            image = love.graphics.newImage("assets/sprites/ViviM.png"),
            x = 300,
            y = 300
        },
        enemy1 = {
            image = activeEnemySprite.image,
            x = 1320,
            y = 300,
            active = true
        },
        enemy2 = {
            image = activeEnemySprite.image,
            x = 1530,
            y = 360,
            active = true
        },
        enemy3 = {
            image = activeEnemySprite.image,
            x = 1320,
            y = 480,
            active = true
        },
        lifebarPlayer = {
            image = lifebarSprite,
            x = 10,
            y = 10
        },
        lifebarEnemy = {
            image = lifebarSprite,
            x = 1070,
            y = 10,
            active = true
        },
        lifebarEnemy2 = {
            image = lifebarSprite,
            x = 1370,
            y = 10,
            active = true
        },
        lifebarEnemy3 = {
            image = lifebarSprite,
            x = 1670,
            y = 10,
            active = true
        },
        arrow = {
            image = love.graphics.newImage("assets/sprites/arrow.png"),
            x = arrowX,
            y = arrowY,
            r = 0
        }
    }

    if selectedMap == 4 then
        battleSpriteLayer.sprites.lifebarEnemy2.active = false
        battleSpriteLayer.sprites.lifebarEnemy3.active = false
    end

    function battleSpriteLayer:update(dt)
        self.sprites.arrow.x = arrowX
        self.sprites.arrow.y = arrowY
    end

    function battleSpriteLayer:draw()
        drawSpriteLayer(self)
    end
end
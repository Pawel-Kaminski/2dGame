function loadSpriteLayer()
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
end
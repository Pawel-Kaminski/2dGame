require "player"
require "enemy1"
require "battleBackend"
require "battleControls"
function battleState:enter()
    setInitialValues(Player, PlayerStatistics)
    setInitialValues(Enemy1, Enemy1Statistics)
    victory = false
    displayTurnInfo = true
    countingActive = true
    actions = listOfAllActions()
    sound2 = love.audio.newSource("music/battleThemeA.mp3")
    love.audio.play(sound2)
    battleArena = sti.new("assets/maps/battle_map")
    battleArena:addCustomLayer("Sprite Layer", 2)
    battleSpriteLayer = battleArena.layers["Sprite Layer"]
    arrowY = 900
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
        lifebarPlayer = {
            image = love.graphics.newImage("assets/sprites/lifebar.png"),
            x = 10,
            y = 10,
            r = 0
        },
        lifebarEnemy = {
            image = love.graphics.newImage("assets/sprites/lifebar.png"),
            x = 1670,
            y = 10,
            r = 0
        },
        arrow = {
            image = love.graphics.newImage("assets/sprites/arrow.png"),
            x = 90,
            y = arrowY,
            r = 0
        }
    }
    function battleSpriteLayer:update(dt)
        self.sprites.arrow.y = arrowY
    end
    function battleSpriteLayer:draw()
        for _, sprite in pairs(self.sprites) do
            if sprite.y ~= arrowY or displayMenu or displayActions then
                local x = math.floor(sprite.x)
                local y = math.floor(sprite.y)
                local r = sprite.r
                love.graphics.draw(sprite.image, x, y, r)
            end
        end
    end
    twenty = love.graphics.newFont(20)
end
require "battle.battle"
require "battle.playerActionFlags"
require "battle.player"
require "enemies.dorver"
require "enemies.thornbush"
require "battle.backend.backend"
require "battle.backend.makeAction"
require "battle.backend.turns"
require "battle.backend.winning"
require "battle.controls.moveArrow"
require "battle.controls.controls"
require "battle.loading.animationLayer"
require "battle.loading.backgroundLayer"
require "battle.loading.spriteLayer"
require "battle.animations"
function battleState:enter()
    setInitialValues(Player, PlayerStatistics)
    setInitialValues(firstEnemy, stats)
    setInitialValues(secondEnemy, stats)
    setInitialValues(thirdEnemy, stats)
    --selectedEnemy = Enemy1
    victory = false
    defeat = false
    displayTurnInfo = true
    countingActive = true
    actions = listOfAllActions()
    sound2 = love.audio.newSource("music/fight_themes/5-Battle_of_the_Void.mp3")
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
    loadAnimationLayer()
    loadSpriteLayer()
    loadBackgroundLayer()
    function battleAnimationLayer:update(dt)
        if displayAnimation and (animationId == 1 or animationId == 2) then
            startAttackAnimation(self)
        elseif displayAnimation and (animationId == 3 or animationId == 4) then
            startDefensiveAnimation(self)
        elseif displayAnimation and animationId == 5 then
            startAttackOfEnemyAnimation(self)
        end
        if secondSprite ~= null and secondSprite.active then
            counting = counting + dt
            dtotal = 0
            if counting > speed then
                secondSprite.active = false
                if enemyDestinedToDie ~= null then
                    enemyDestinedToDie.active = false
                    hideBar.active = false
                    enemyDestinedToDie = null
                end
            end
        end
    end

    function battleSpriteLayer:update(dt)
        self.sprites.arrow.x = arrowX
        self.sprites.arrow.y = arrowY
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

    function battleSpriteLayer:draw()
        for _, sprite in pairs(self.sprites) do
            --if describes conditions when arrow is displayed
            if (sprite.y ~= arrowY or displayMenu or displayActions or defeat
            or selectingEnemy) and sprite.active ~= false then
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
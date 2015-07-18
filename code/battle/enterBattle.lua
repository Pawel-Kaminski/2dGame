require "battle.enterBattle.animationLayer"
require "battle.enterBattle.backgroundLayer"
require "battle.enterBattle.spriteLayer"
require "battle.enterBattle.player"

function setInitialValues(tmpValues, initialValues)
    tmpValues.healthPoints = initialValues.health
    tmpValues.magicPoints = initialValues.magic
    tmpValues.waitingTime = initialValues.waitingTime
    tmpValues.defence = initialValues.defence
    tmpValues.maxHealth = tmpValues.healthPoints
    tmpValues.maxMagic = tmpValues.magicPoints
end

function enterBattle()
    setInitialValues(Player, PlayerStatistics)
    setInitialValues(firstEnemy, stats)
    setInitialValues(secondEnemy, stats)
    setInitialValues(thirdEnemy, stats)

    victory = false
    defeat = false
    displayTurnInfo = true
    countingActive = true
    actions = listOfAllActions()
    sound2 = love.audio.newSource("music/fight_themes/5-Battle_of_the_Void.mp3")
    love.audio.play(sound2)
    sound2:setLooping(true)
    battleArena = sti.new("assets/maps/battle_map")
    arrowX = 90
    arrowY = 900
    loadAnimationLayer()
    loadSpriteLayer()
    loadBackgroundLayer()
    twenty = love.graphics.newFont(20)
end
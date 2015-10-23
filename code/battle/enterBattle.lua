--WARNING: This file uses global variables:
--victory, countingActive, actions, sound2, battleArena, arrowX, arrowY 

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

--first argument describes first enemy, second - second enemy
--and third - third enemy
function enterBattle(first, second, third)
    isAlreadyRunning = false
    setInitialValues(Player, PlayerStatistics)
    setInitialValues(first, stats)
    setInitialValues(second, stats)
    setInitialValues(third, stats)
    Player.remainingWaitingTime = 15
    local numberOfActions = 4 --!!!!!
    actions = listOfAllActions(numberOfActions)
    if activeEnemySprite.name == "thornbush" then
        sound2 = love.audio.newSource(
            "music/fight_themes/2-battleThemeA.mp3")
    else
        sound2 = love.audio.newSource(
            "music/fight_themes/5-Battle_of_the_Void.mp3")
    end
    sound3 = love.audio.newSource("music/VictoryTheme.mp3")
    love.audio.play(sound2)
    sound2:setLooping(true)
    battleArena = sti.new("assets/maps/battle_map")
    arrowX = 90
    arrowY = 900
    loadBackgroundLayer()
    loadSpriteLayer()
    loadAnimationLayer()
end
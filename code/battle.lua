--WARNING: This file uses global variables: selectedAction,
--firstEnemy, secondEnemy, thirdEnemy

require "battle.enterBattle"
require "battle.updateBattle"
require "battle.drawBattle"
require "battle.keypressedBattle"

battleState = {}
function battleState:enter()
    enterBattle(firstEnemy, secondEnemy, thirdEnemy)
end

function battleState:update(dt)
    updateBattle(dt, countingActive)
end

function battleState:draw()
    drawBattle(selectedAction)
end

function battleState:keypressed(key)
    keypressedBattle(key)
end
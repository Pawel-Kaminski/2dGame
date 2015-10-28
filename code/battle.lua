--WARNING: This file uses global variables: selectedAction,
--firstEnemy, secondEnemy, thirdEnemy

require "battle.enterBattle"
require "battle.updateBattle"
require "battle.drawBattle"
require "battle.keypressedBattle"

battleState = {}
function battleState:enter()
    --firstEnemy, secondEnemy, thirdEnemy are global variables
    --defined in mapState
    --countingActive is true, when counter is active
    --(it's active at the beginning of the fight)
    countingActive = true
    --victory or defeat variable will be set true if player wins or loses
    victory = false
    defeat = false
    --if displayTurnInfo is true, counters of remaining time are displayed
    displayTurnInfo = true
    if selectedMap ~= 4 then
        enterBattle(firstEnemy, secondEnemy, thirdEnemy)
    else
        enterBattle(firstEnemy)
    end
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
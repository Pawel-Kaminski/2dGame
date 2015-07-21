require "battle.enterBattle"
require "battle.updateBattle"
require "battle.drawBattle"
require "battle.keypressedBattle"

battleState = {}
function battleState:enter()
    enterBattle()
end

function battleState:update(dt)
    updateBattle(dt)
end

function battleState:draw()
    drawBattle(selectedAction)
end

function battleState:keypressed(key)
    keypressedBattle(key)
end
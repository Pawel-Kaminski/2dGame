require "battle.drawBattle"
require "battle.enterBattle"
require "battle.keypressedBattle"
require "battle.updateBattle"

battleState = {}
function battleState:enter()
    enterBattle()
end

function battleState:update(dt)
    updateBattle(dt)
end

function battleState:draw()
    drawBattle()
end

function battleState:keypressed(key)
    keypressedBattle(key)
end
--WARNING: This file uses global variables:
--arrowY, selectedEnemy, firstEnemy, secondEnemy, thirdEnemy, selectingEnemy,
--arrowX, selectedAction, countingActive, displayingActions, Player

--files: makeAction.lua, setArrow.lua, selectEnemy.lua are connected via
--selectingEnemy and selectedAction variables

require "battle.keypressedBattle.selectEnemy.moveArrow"

function selectEnemy(key)
    if key == "down" then
        moveArrowDown()
    elseif key == "up" then
        moveArrowUp()
    elseif key == "return" then
        if arrowY == 300 then selectedEnemy = firstEnemy
        elseif arrowY == 360 then selectedEnemy = secondEnemy
        elseif arrowY == 480 then selectedEnemy = thirdEnemy end
        selectingEnemy = false
        arrowX = 90
        arrowY = 900
        if selectedAction == 1 then
            attack(selectedEnemy)
        elseif selectedAction == 3 then
            magicAttack(selectedEnemy)
        end
        --if isDead(firstEnemy) and isDead(secondEnemy) and isDead(thirdEnemy) then
            --Player's victory
            --winning()
            --return
        --end
        countingActive = true
        displayingActions = false
        Player.remainingWaitingTime = Player.waitingTime
    end
end
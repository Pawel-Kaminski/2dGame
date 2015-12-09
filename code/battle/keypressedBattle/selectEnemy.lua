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
        elseif selectedAction == 5 then
            magicalArrow(selectedEnemy)
        elseif selectedAction == 6 then
            iceAttack(selectedEnemy)
        elseif selectedAction == 7 then
            fireAttack(selectedEnemy)
        end
        countingActive = true
        displayingActions = false
        Player.remainingWaitingTime = Player.waitingTime
    end
end
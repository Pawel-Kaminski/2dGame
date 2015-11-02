--WARNING: This file uses global variables:
--selectedAction, selectingEnemy, countingActive, displayingActions, arrowY

--files: makeAction.lua, setArrow.lua, selectEnemy.lua are connected via
--selectingEnemy and selectedAction variables

require "battle.keypressedBattle.displayActions.makeAction.setArrow"

--makeAction() function is started when list of actions is displayed
--and user pressed enter key
function makeAction(selectedAction)
    if selectedAction == 1 then
        --Player should be able to select enemy
        selectingEnemy = true
        setArrow()
    elseif selectedAction == 2 then
        defend()
    elseif selectedAction == 3 then
        --Player should be able to select enemy
        selectingEnemy = true
        setArrow()
    elseif selectedAction == 4 then
        heal()
    elseif selectedAction == 5 then
        selectingEnemy = true
        setArrow()
    elseif selectedAction == 6 then
        selectingEnemy = true
        setArrow()
    elseif selectedAction == 7 then
        selectingEnemy = true
        setArrow()
    end

    if not selectingEnemy then
        Player.remainingWaitingTime = Player.waitingTime
        if not victory then
            countingActive = true
            displayingActions = false
            arrowY = 900
        end
    end
end
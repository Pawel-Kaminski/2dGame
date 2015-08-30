--WARNING: This file uses global variables:
--actions, tmp, selectedAction, indexOnTheList, playerActionFlags,
--displayActions, displayMenu, arrowY, countActions

require "battle.keypressedBattle.displayActions.makeAction"

function countActions(actions)
    local howManyActions = 0
    for _, action in pairs(actions) do
        howManyActions = howManyActions + 1
    end
    return howManyActions
end

function displayActions(key)
    selectedAction = (arrowY - 900) / 30 + 1
    indexOnTheList = selectedAction
    for i=1, selectedAction do
        local action = playerActionFlags[i]
        if not action[2] then
            --don't increment when action[2] is false
            selectedAction = selectedAction + 1
        end
    end
    local numberOfActions = countActions(actions)
    if key == "backspace" then
        displayingActions = false
        displayingMenu = true
    elseif key == "down" then
        if arrowY < 900 + 30 * (numberOfActions - 1) then
            arrowY = arrowY + 30
        else
            arrowY = 900
        end
        selectedAction = (arrowY - 900)/30 + 1
    elseif key == "up" then
        if arrowY > 900 then
            arrowY = arrowY - 30
        else
            arrowY = 900 + 30 * (numberOfActions - 1)
        end
        selectedAction = (arrowY - 900)/30 + 1
    elseif key == "return" then
        if actions[indexOnTheList][6] then
            makeAction(selectedAction)
        else
            selectedAction = tmp
        end
    end
end
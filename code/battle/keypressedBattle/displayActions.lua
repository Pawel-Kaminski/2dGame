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

function setSelectedAction()
    if arrowX == 90 then
        selectedAction = (arrowY - 900) / 30 + 1
    else
        selectedAction = (arrowY - 900) / 30 + 6
    end
end

function displayActions(key)
    setSelectedAction()
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
        arrowY = 900
        displayingActions = false
        displayingMenu = true
    elseif key == "down" then
        if arrowX == 90 then
            if arrowY < 900 + 30 * (numberOfActions - 1) and arrowY < 1020 then
                arrowY = arrowY + 30
            elseif arrowY == 1020 then
                arrowX = 340
                arrowY = 900
            end
        elseif arrowX == 340 then
            if arrowY < 900 + 30 * (numberOfActions - 6) then
                arrowY = 930
            else
                arrowX = 90
                arrowY = 900
            end
        else
            arrowY = 900
        end
        setSelectedAction()
    elseif key == "up" then
        if arrowY > 900 then
            arrowY = arrowY - 30
        elseif arrowX == 90 then
            --first column
            if numberOfActions <= 5 then
                arrowY = 900 + 30 * (numberOfActions - 1)
            else
                arrowX = 340
                arrowY = 900 + 30 * (numberOfActions - 6)
            end
        elseif arrowX == 340 then
            arrowX = 90
            arrowY = 1020
        end
        setSelectedAction()
    elseif key == "return" then
        if actions[indexOnTheList][6] then
            makeAction(selectedAction)
        else
            selectedAction = tmp
        end
    end
end
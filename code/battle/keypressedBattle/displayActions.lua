require "battle.keypressedBattle.displayActions.makeAction"

function displayActions(key)
    local countActions = 0
    for _, action in pairs(actions) do
        countActions = countActions + 1
    end
    tmp = selectedAction
    selectedAction = (arrowY - 900)/30 + 1
    indexOnTheList = selectedAction
    for i=1, selectedAction do
        local action = playerActionFlags[i]
        if not action[2] then
            --don't increment when action[2] is false
            selectedAction = selectedAction + 1
        end
    end
    if key == "backspace" then
        displayActions = false
        displayMenu = true
    elseif key == "down" then
        if arrowY < 900 + 30 * (countActions - 1) then
            arrowY = arrowY + 30
        else
            arrowY = 900
        end
        selectedAction = (arrowY - 900)/30 + 1
    elseif key == "up" then
        if arrowY > 900 then
            arrowY = arrowY - 30
        else
            arrowY = 900 + 30 * (countActions - 1)
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
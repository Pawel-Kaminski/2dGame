--WARNING: This file uses global variables:
--arrowY, displayingActions, displayItems, escapeBattle

function displayMenu(key)
    if key == "down" then
        if arrowY < 960 then
            arrowY = arrowY + 30
        else
            arrowY = 900
        end
    elseif key == "up" then
        if arrowY > 900 then
            arrowY = arrowY - 30
        else
            arrowY = 960
        end
    elseif key == "return" then
        if arrowY == 900 then
            displayingActions = true
            return
        elseif arrowY == 930 then
            displayItems = true
            return
        elseif arrowY == 960 then
            escapeBattle = true
            return
        end
    end
end
function displayBattleItems(key)
    if key == "backspace" then
        displayingItems = false
        displayingMenu = true
    elseif key == "down" then
        if arrowY < 1020 then
            arrowY = arrowY + 30
        else
            arrowY = 900
        end
    elseif key == "up" then
        if arrowY > 900 then
            arrowY = arrowY - 30
        else
            arrowY = 1020
        end
    elseif key == "return" then
        --TODO: use of items
    end
end
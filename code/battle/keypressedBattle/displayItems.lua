require "battle.keypressedBattle.displayItems.useItem"

function displayBattleItems(key)
    selectedItem = (arrowY - 900) / 30 + 1
    if key == "backspace" then
        arrowY = 900
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
        useItem(selectedItem)
    end
end
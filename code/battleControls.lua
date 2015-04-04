function battleState:keypressed(key)
    if displayMenu then
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
                displayActions = true
                return
            elseif arrowY == 930 then
                displayItems()
            elseif arrowY == 960 then
                escapeBattle()
            end
        end
    end
    if displayActions then
        if key == "backspace" then
            displayActions = false
            displayMenu = true
        elseif key == "down" then
            if arrowY < 900 + 30 * (countActions - 1) then
                arrowY = arrowY + 30
            else
                arrowY = 900
            end
        elseif key == "up" then
            if arrowY > 900 then
                arrowY = arrowY - 30
            else
                arrowY = 900 + 30 * (countActions - 1)
            end
        elseif key == "return" then
            selectedAction = (arrowY - 900)/30 + 1
            makeAction(selectedAction)
        end
    end
end
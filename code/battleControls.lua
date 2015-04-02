function battleState:keypressed(key)
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
    end
    if displayMenu then
        if key == "return" then
            if arrowY == 900 then
                displayActions = true
            end
            if arrowY == 930 then
                displayItems()
            end
            if arrowY == 960 then
                escapeBattle()
            end
        end
    end
    if displayActions then
        if key == "backspace" then
            displayActions = false
            displayMenu = true
        end
    end
end
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
    elseif displayActions then
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
            for i=1, selectedAction do
                local action = playerActionFlags[i]
                if not action[2] then
                    selectedAction = selectedAction + 1
                end
            end
            makeAction(selectedAction)
        end
    elseif victory then
        if key == "return" then
            love.audio.stop()
            Gamestate.switch(mapState)
        end
    end
end
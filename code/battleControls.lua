function battleState:keypressed(key)
    if selectingEnemy then
        --possible arrowX positions: 1270, 1480
        --possible arrowY positions: 300, 360, 480
        if key == "down" then
            if arrowY == 300 then arrowX = 1480 arrowY = 360
            elseif arrowY == 360 then arrowX = 1270 arrowY = 480
            elseif arrowY == 480 then arrowX = 1270 arrowY = 300 end
        elseif key == "up" then
            if arrowY == 300 then arrowX = 1270 arrowY = 480 
            elseif arrowY == 360 then arrowX = 1270 arrowY = 300
            elseif arrowY == 480 then arrowX = 1480 arrowY = 360 end
        end
        return
    elseif displayMenu then
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
                --don't increment when action[2] is false
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
    elseif defeat then
        if key == "down" then
            if arrowY < 820 then
                arrowY = arrowY + 30
            else
                arrowY = 790
            end
        elseif key == "up" then
            if arrowY > 790 then
                arrowY = arrowY - 30
            else
                arrowY = 820
            end
        elseif key == "return" then
            if arrowY == 820 then
                love.event.quit()
            elseif arrowY == 790 then
                love.audio.stop()
                Gamestate.switch(battleState)
            end
        end
    end
end
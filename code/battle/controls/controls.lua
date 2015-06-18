function battleState:keypressed(key)
    if selectingEnemy then
        if key == "down" then
            moveArrowDown()
        elseif key == "up" then
            moveArrowUp()
        elseif key == "return" then
            if arrowY == 300 then selectedEnemy = firstEnemy
            elseif arrowY == 360 then selectedEnemy = secondEnemy
            elseif arrowY == 480 then selectedEnemy = thirdEnemy end
            selectingEnemy = false
            arrowX = 90
            arrowY = 900
            if selectedAction == 1 then
                attack(selectedEnemy)
            elseif selectedAction == 2 then
                magicAttack(selectedEnemy)
            end
            if isDead(firstEnemy) and isDead(secondEnemy) and isDead(thirdEnemy) then
                --Player's victory
                winning()
                return
            end
            countingActive = true
            displayActions = false
            Player.remainingWaitingTime = Player.waitingTime
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
                --TODO: Display items
            elseif arrowY == 960 then
                --TODO: Escape battle
            end
        end
    elseif displayActions then
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
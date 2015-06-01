--Position 1: x = 1270, y = 300
--Position 2: x = 1480, y = 360
--Position 3: x = 1270, y = 480

function moveArrowDown()
     if arrowY == 300 then
        if not isDead(Enemy1_Second) then
            arrowX = 1480 arrowY = 360
        else
            arrowX = 1270 arrowY = 480
        end
     elseif arrowY == 360 then
        if not isDead(Enemy1_Third) then
            arrowX = 1270 arrowY = 480
        else
            arrowX = 1270 arrowY = 300
        end
     elseif arrowY == 480 then
        if not isDead(Enemy1) then
            arrowX = 1270 arrowY = 300
        else
            arrowX = 1480 arrowY = 360
        end
    end
end

function moveArrowUp()
     if arrowY == 300 then
        if not isDead(Enemy1_Third) then
            arrowX = 1270 arrowY = 480
        else
            arrowX = 1480 arrowY = 360
        end
     elseif arrowY == 360 then
        if not isDead(Enemy1) then
            arrowX = 1270 arrowY = 300
        else
            arrowX = 1270 arrowY = 480
        end
     elseif arrowY == 480 then
        if not isDead(Enemy1_Second) then
            arrowX = 1480 arrowY = 360
        else
            arrowX = 1270 arrowY = 300
        end
    end
end

function battleState:keypressed(key)
    if selectingEnemy then
        if key == "down" then
            moveArrowDown()
        elseif key == "up" then
            moveArrowUp()
        elseif key == "return" then
            if arrowY == 300 then selectedEnemy = Enemy1
            elseif arrowY == 360 then selectedEnemy = Enemy1_Second
            elseif arrowY == 480 then selectedEnemy = Enemy1_Third end
            selectingEnemy = false
            arrowX = 90
            arrowY = 900
            if selectedAction == 1 then
                attack(selectedEnemy)
            elseif selectedAction == 2 then
                magicAttack(selectedEnemy)
            end
            if isDead(Enemy1) and isDead(Enemy1_Second) and isDead(Enemy1_Third) then
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
                displayItems()
            elseif arrowY == 960 then
                escapeBattle()
            end
        end
    elseif displayActions then
        selectedAction = (arrowY - 900)/30 + 1
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
--makeAction() function is started when list of actions is displayed
--and user pressed enter key
function makeAction(selectedAction)
    if selectedAction == 1 then
        --Player should be able to select enemy
        selectingEnemy = true
        setArrow()
    elseif selectedAction == 2 then
        --Player should be able to select enemy
        selectingEnemy = true
        setArrow()
    elseif selectedAction == 4 then
        heal()
    elseif selectedAction == 5 then
        defend()
    end

    if not selectingEnemy then
        Player.remainingWaitingTime = Player.waitingTime
    end

    if isDead(Enemy1) and isDead(Enemy1_Second) and isDead(Enemy1_Third) then
        --Player's victory
        winning()
    else
        if not selectingEnemy then
            countingActive = true
            displayActions = false
            arrowY = 900
        end
    end
end
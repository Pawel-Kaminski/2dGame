function fight(o1, o2, o3)
    if Player.remainingWaitingTime > 0 then
        Player.remainingWaitingTime = Player.remainingWaitingTime - 1
    else
        countingActive = false
        playerTurn()
        return
    end

    if not isDead(o1) then
        if o1.remainingWaitingTime > 0 then
            o1.remainingWaitingTime = o1.remainingWaitingTime - 1
        else
            countingActive = false
            enemyTurn(o1)
            return
        end
    end

    if not isDead(o2) then
        if o2.remainingWaitingTime > 0 then
            o2.remainingWaitingTime = o2.remainingWaitingTime - 1
        else
            countingActive = false
            enemyTurn(o2)
            return
        end
    end

    if not isDead(o3) then
        if o3.remainingWaitingTime > 0 then
            o3.remainingWaitingTime = o3.remainingWaitingTime - 1
        else
            countingActive = false
            enemyTurn(o3)
            return
        end
    end
end

function playerTurn()
    displayMenu = true
end

function enemyTurn(o1)
    Player.healthPoints = Player.healthPoints - (1 * (100 - Player.defence)/100)
    if Player.healthPoints < 0 then
        Player.healthPoints = 0    
    end

--XXXXXXX
    if isDead(Player) then
        --Enemy's victory
        love.audio.stop()
        displayActions = false
        displayMenu = false
        displayTurnInfo = false
        defeat = true
        arrowY = 790
        sound3 = love.audio.newSource("music/A_Singular_Perversion.mp3")
        love.audio.play(sound3)
    else
        --HERE SHOULD BE PAUSE
        --countingActive = true
        pause = true
    end

    if not pause then
        o1.remainingWaitingTime = o1.waitingTime
    end
end

function displayItems()
end

function escapeBattle()
end

--makeAction() function is started when list of actions is displayed
--and user pressed enter key
function makeAction(selectedAction)
    if selectedAction == 1 then
        --Player should be able to select enemy
        selectingEnemy = true
        arrowX = 1270
        arrowY = 300
    elseif selectedAction == 2 then
        --Player should be able to select enemy
        selectingEnemy = true
        arrowX = 1270
        arrowY = 300
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
        love.audio.stop()
        displayActions = false
        displayMenu = false
        displayTurnInfo = false
        victory = true
        sound3 = love.audio.newSource("music/VictoryTheme.mp3")
        love.audio.play(sound3)
    else
        if not selectingEnemy then
            countingActive = true
            displayActions = false
            arrowY = 900
        end
    end
end

function isDead(o1)
    if o1.healthPoints == 0 then
        return true
    else
        return false
    end
end

function setInitialValues(tmpValues, initialValues)
    tmpValues.healthPoints = initialValues.health
    tmpValues.magicPoints = initialValues.magic
    tmpValues.waitingTime = initialValues.waitingTime
    --tmpValues.remainingWaitingTime = initialValues.remainingWaitingTime
    tmpValues.defence = initialValues.defence
    tmpValues.maxHealth = tmpValues.healthPoints
    tmpValues.maxMagic = tmpValues.magicPoints
end
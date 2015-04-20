function fight(o1, o2, o3)
    if Player.remainingWaitingTime > 0 then
        Player.remainingWaitingTime = Player.remainingWaitingTime - 1
    else
        countingActive = false
        playerTurn()
        return
    end

    if o1.remainingWaitingTime > 0 then
        o1.remainingWaitingTime = o1.remainingWaitingTime - 1
    else
        countingActive = false
        enemyTurn(o1)
        return
    end

    if o2.remainingWaitingTime > 0 then
        o2.remainingWaitingTime = o2.remainingWaitingTime - 1
    else
        countingActive = false
        enemyTurn(o2)
        return
    end

    if o3.remainingWaitingTime > 0 then
        o3.remainingWaitingTime = o3.remainingWaitingTime - 1
    else
        countingActive = false
        enemyTurn(o3)
        return
    end
end

function playerTurn()
    displayMenu = true
end

function enemyTurn(o1)
    Player.healthPoints = Player.healthPoints - (15 * (100 - Player.defence)/100)
    if Player.healthPoints < 0 then
        Player.healthPoints = 0    
    end
    o1.remainingWaitingTime = o1.waitingTime
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
        countingActive = true
    end
end

function displayItems()
end

function escapeBattle()
end

function makeAction(selectedAction)
    if selectedAction == 1 then
        --Player should be able to select enemy
        selectingEnemy = true
        --attack(selectEnemy())
    elseif selectedAction == 2 then
        --Player should be able to select enemy
        magicAttack(Enemy1)
    elseif selectedAction == 4 then
        heal()
    elseif selectedAction == 5 then
        defend()
    end
    Player.remainingWaitingTime = Player.waitingTime
    if isDead(Enemy1) then
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

--selectEnemy function
function selectEnemy()
    return secondEnemy
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
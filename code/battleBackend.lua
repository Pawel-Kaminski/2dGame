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
    else
        --do not display first enemy and his lifebar
        battleSpriteLayer.sprites.enemy1.active = false
        battleSpriteLayer.sprites.lifebarEnemy.active = false
    end

    if not isDead(o2) then
        if o2.remainingWaitingTime > 0 then
            o2.remainingWaitingTime = o2.remainingWaitingTime - 1
        else
            countingActive = false
            enemyTurn(o2)
            return
        end
    else
        battleSpriteLayer.sprites.enemy2.active = false
        battleSpriteLayer.sprites.lifebarEnemy2.active = false
    end

    if not isDead(o3) then
        if o3.remainingWaitingTime > 0 then
            o3.remainingWaitingTime = o3.remainingWaitingTime - 1
        else
            countingActive = false
            enemyTurn(o3)
            return
        end
    else
        battleSpriteLayer.sprites.enemy3.active = false
        battleSpriteLayer.sprites.lifebarEnemy3.active = false
    end
end

function setArrow()
    if not isDead(firstEnemy) then
        arrowX = 1270
        arrowY = 300
    elseif not isDead(secondEnemy) then
        arrowX = 1480
        arrowY = 360
    else
        arrowX = 1270
        arrowY = 480
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
    tmpValues.defence = initialValues.defence
    tmpValues.maxHealth = tmpValues.healthPoints
    tmpValues.maxMagic = tmpValues.magicPoints
end
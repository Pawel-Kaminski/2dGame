--WARNING: This file uses global variables:
--selectedAction, displayingMenu, Player, countingActive, displayAnimation,
--enemyDestinedToDie, hideBar, battleSpriteLayer 

require "battle.updateBattle.fight.enemyTurn"

function playerTurn()
    selectedAction = 1
    displayingMenu = true --!!!
end

function isDead(o1)
    if o1.healthPoints == 0 then
        return true
    else
        return false
    end
end

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
    elseif displayAnimation then
        enemyDestinedToDie = battleSpriteLayer.sprites.enemy1
        hideBar = battleSpriteLayer.sprites.lifebarEnemy
    else --if enemy is dead
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
    elseif displayAnimation then
        enemyDestinedToDie = battleSpriteLayer.sprites.enemy2
        hideBar = battleSpriteLayer.sprites.lifebarEnemy2
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
    elseif displayAnimation then
        enemyDestinedToDie = battleSpriteLayer.sprites.enemy3
        hideBar = battleSpriteLayer.sprites.lifebarEnemy
    else
        battleSpriteLayer.sprites.enemy3.active = false
        battleSpriteLayer.sprites.lifebarEnemy3.active = false
    end
end
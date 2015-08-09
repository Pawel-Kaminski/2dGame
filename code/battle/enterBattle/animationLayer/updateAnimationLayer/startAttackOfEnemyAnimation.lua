--WARNING: This file uses global variables:
--animationId, mainSprite, secondSprite, speed, startPositionIsSet, enemyId,
--displayAnimation, startPositionIsSet, counting

function startAttackOfEnemyAnimation(layer, id)
    if id == 5 then
        mainSprite = layer.sprites.bullet
        secondSprite = layer.sprites.explosion
        speed = 0.5
    elseif id == 6 then
        mainSprite = layer.sprites.poison
        secondSprite = layer.sprites.poison2
        speed = 0.5
    end
    if startPositionIsSet ~= true then
        if enemyId == 1 then
            mainSprite.x = 1320
            mainSprite.y = 300
        elseif enemyId == 2 then
            mainSprite.x = 1530
            mainSprite.y = 360
        else
            mainSprite.x = 1320
            mainSprite.y = 480
        end
    end
    startPositionIsSet = true
    mainSprite.active = true
    dtotal = 0
    if enemyId == 1 and mainSprite.x > 300 then
        mainSprite.x = mainSprite.x - 3
    elseif enemyId == 2 and mainSprite.x > 300 then
        mainSprite.x = mainSprite.x - 3
        mainSprite.y = 0.04878 * mainSprite.x + 285.36585
    elseif enemyId == 3 and mainSprite.x > 300 then
        mainSprite.x = mainSprite.x - 3
        mainSprite.y = 0.17647 * mainSprite.x + 247.059
    else
        displayAnimation = false
        mainSprite.active = false
        if id == 5 then
            secondSprite.x = 120
            secondSprite.y = 100
        elseif id == 6 then
            secondSprite.x = 200
            secondSprite.y = 200
        end
        secondSprite.active = true
        startPositionIsSet = false
        counting = 0
    end
end
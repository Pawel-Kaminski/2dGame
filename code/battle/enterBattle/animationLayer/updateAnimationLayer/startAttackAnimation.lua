--WARNING: This file uses global variables:
--animationId, mainSprite, secondSprite, speed, dtotal, selectedEnemy,
--firstEnemy, secondEnemy, thirdEnemy, displayAnimation, counting

function startAttackAnimation(layer, id)
    if id == 1 then
        mainSprite = layer.sprites.arrow_0
        secondSprite = layer.sprites.blood
        speed = 0.5
        --rotation in radians
        --360 degrees ~= 6.28
        if selectedEnemy == firstEnemy then
            mainSprite.r = 1.57
        elseif selectedEnemy == secondEnemy then
            mainSprite.r = 1.83
        elseif selectedEnemy == thirdEnemy then
            mainSprite.r = 2.07
        end
    elseif id == 2 then
        mainSprite = layer.sprites.fireball
        secondSprite = layer.sprites.fire
        speed = 1
    end
    mainSprite.active = true
    dtotal = 0
    if selectedEnemy == firstEnemy and mainSprite.x < 1350 then
        mainSprite.x = mainSprite.x + 3
    elseif selectedEnemy == secondEnemy and mainSprite.x < 1530 then
        mainSprite.x = mainSprite.x + 3
        mainSprite.y = 0.04878 * mainSprite.x + 285.36585
    elseif selectedEnemy == thirdEnemy and mainSprite.x < 1350 then
        mainSprite.x = mainSprite.x + 3
        mainSprite.y = 0.17647 * mainSprite.x + 247.059
    else
        displayAnimation = false
        mainSprite.active = false
        secondSprite.x = mainSprite.x - 15
        secondSprite.y = mainSprite.y - 15
        secondSprite.active = true
        mainSprite.x = 310
        mainSprite.y = 330
        counting = 0
    end
end
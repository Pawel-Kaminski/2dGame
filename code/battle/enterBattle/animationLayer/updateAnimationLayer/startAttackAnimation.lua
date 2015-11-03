--WARNING: This file uses global variables:
--animationId, mainSprite, secondSprite, duration, dtotal, selectedEnemy,
--firstEnemy, secondEnemy, thirdEnemy, displayAnimation, counting

function startAttackAnimation(layer, id)
    local axisXmodifier = 0
    local linearFunctionModifier = 0
    if id == 1 or id == 9 then
        if id == 1 then
            mainSprite = layer.sprites.arrow_0
        else
            mainSprite = layer.sprites.bigArrow
        end
        secondSprite = layer.sprites.blood
        duration = 0.5
        --rotation in radians
        --360 degrees = 6.28
        if selectedEnemy == firstEnemy then
            mainSprite.r = 1.57
        elseif selectedEnemy == secondEnemy then
            mainSprite.r = 1.83
        elseif selectedEnemy == thirdEnemy then
            mainSprite.r = 2.07
        end
        axisXmodifier = 0
        linearFunctionModifier = 0
    elseif id == 2 then
        mainSprite = layer.sprites.fireball
        secondSprite = layer.sprites.fire
        duration = 1
        axisXmodifier = -50
        linearFunctionModifier = -30
    end
    mainSprite.active = true
    dtotal = 0
    if selectedEnemy == firstEnemy and mainSprite.x < 1350 + axisXmodifier then
        mainSprite.x = mainSprite.x + 3
    elseif selectedEnemy == secondEnemy and mainSprite.x < 1530 + axisXmodifier then
        mainSprite.x = mainSprite.x + 3
        mainSprite.y = 0.04878 * mainSprite.x + 285.36585 + linearFunctionModifier
    elseif selectedEnemy == thirdEnemy and mainSprite.x < 1350 + axisXmodifier then
        mainSprite.x = mainSprite.x + 3
        mainSprite.y = 0.17647 * mainSprite.x + 247.059 + linearFunctionModifier
    else
        displayAnimation = false
        mainSprite.active = false
        secondSprite.x = mainSprite.x - 15
        secondSprite.y = mainSprite.y - 15
        secondSprite.active = true
        if id == 1 or id == 9 then
            mainSprite.x = 310
            mainSprite.y = 330
        elseif id == 2 then
            mainSprite.x = 310
            mainSprite.y = 270
        end
        counting = 0
    end
end
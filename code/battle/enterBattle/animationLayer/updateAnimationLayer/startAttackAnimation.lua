function startAttackAnimation(layer)
    if animationId == 1 then
        mainSprite = layer.sprites.arrow_0
        secondSprite = layer.sprites.blood
        speed = 0.5
    elseif animationId == 2 then
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
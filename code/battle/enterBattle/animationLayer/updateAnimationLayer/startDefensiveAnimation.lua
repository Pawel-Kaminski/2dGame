--WARNING: This file uses global variables:
--mainSprite, secondSprite, speed, dtotal, displayAnimation, counting

function startDefensiveAnimation(layer, id, enemy)
    if id == 3 then
        mainSprite = layer.sprites.healingBall
        secondSprite = layer.sprites.heal
        speed = 1.5
    elseif id == 4 or id == 7 then
        mainSprite = layer.sprites.defenceBall
        secondSprite = layer.sprites.defend
        speed = 1
    end
    if enemy == null then
        mainSprite.x = 285
    else
        if enemy == 1 then
            mainSprite.x = 1350
        elseif enemy == 2 then
            mainSprite.x = 1530
        elseif enemy == 3 then
            mainSprite.x = 1350
        end
    end
    mainSprite.active = true
    dtotal = 0
    if mainSprite.y < 310 then
        mainSprite.y = mainSprite.y + speed
    else
        displayAnimation = false
        mainSprite.active = false
        secondSprite.active = true
        --mainSprite.x = 285
        mainSprite.y = 0
        counting = 0
    end
end
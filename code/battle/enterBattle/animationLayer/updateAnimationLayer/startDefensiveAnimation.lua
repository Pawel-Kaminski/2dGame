--WARNING: This file uses global variables:
--mainSprite, secondSprite, speed, dtotal, displayAnimation, counting

function startDefensiveAnimation(layer, id)
    if id == 3 then
        mainSprite = layer.sprites.healingBall
        secondSprite = layer.sprites.heal
        speed = 1.5
    elseif id == 4 then
        mainSprite = layer.sprites.defenceBall
        secondSprite = layer.sprites.defend
        speed = 1
    end
    mainSprite.active = true
    dtotal = 0
    if mainSprite.y < 310 then
        mainSprite.y = mainSprite.y + speed
    else
        displayAnimation = false
        mainSprite.active = false
        secondSprite.active = true
        mainSprite.x = 285
        mainSprite.y = 0
        counting = 0
    end
end
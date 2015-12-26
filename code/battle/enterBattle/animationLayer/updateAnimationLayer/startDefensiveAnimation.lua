function startDefensiveAnimation(layer, id, dt, enemy)
    if id == 3 or id == 8 then
        mainSprite = layer.sprites.healingBall
        secondSprite = layer.sprites.heal
        --duration = 1.5
    elseif id == 4 or id == 7 then
        mainSprite = layer.sprites.defenceBall
        secondSprite = layer.sprites.defend
        --duration = 1
    elseif id == 15 then
	mainSprite = layer.sprites.itemBall
	secondSprite = layer.sprites.item
    end
    if enemy == null then
        mainSprite.x = 285
        secondSprite.x = 195
        secondSprite.y = 180
    else
        if enemy == 1 then
            mainSprite.x = 1320
            secondSprite.x = 1230
            secondSprite.y = 190
        elseif enemy == 2 then
            mainSprite.x = 1530
            secondSprite.x = 1440
            secondSprite.y = 250
        elseif enemy == 3 then
            mainSprite.x = 1320
            secondSprite.x = 1230
            secondSprite.y = 370
        end
    end
    mainSprite.active = true
    dtotal = 0
    if mainSprite.y < secondSprite.y + 130 then
        mainSprite.y = mainSprite.y + 300 * dt
    else
        displayAnimation = false
        mainSprite.active = false
        secondSprite.active = true
        mainSprite.y = 0
        counting = 0
    end
end

function useItem(number)
    if number == 1 and items[1][2] > 0 then
        --use health potion
        --recover small amount of HP
        items[1][2] = items[1][2] - 1
        Player.healthPoints = Player.healthPoints + 50
        if Player.healthPoints > Player.maxHealth then
            Player.healthPoints = Player.maxHealth
        end
    elseif number == 2 and items[2][2] > 0 then
        --use health elixir
        --fully recover HP
        items[2][2] = items[2][2] - 1
        Player.healthPoints = Player.maxHealth
    elseif number == 3 and items[3][2] > 0 then
        --use antidotum
        --remove poison effect
        items[3][2] = items[3][2] - 1
    elseif number == 4 and items[4][2] > 0 then
        --use poison
        --inflict poison effect on enemy
        items[4][2] = items[4][2] - 1
    elseif number == 5 and items[5][2] > 0 then
        --use magic elixir
        --fully recover MP
        items[5][2] = items[5][2] - 1
        Player.magicPoints = Player.maxMagic
    else return
    end

    if not selectingEnemy then
        Player.remainingWaitingTime = Player.waitingTime
        if not victory then
            countingActive = true
            displayingItems = false
            arrowY = 900
        end
    end
end
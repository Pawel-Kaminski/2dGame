function playerTurn()
    selectedAction = 1
    displayMenu = true
end

function enemyTurn(o1)
    --Here is a place for enemies' AI---------------------------------------------
    Player.healthPoints = Player.healthPoints - (1 * (100 - Player.defence)/100)
    ------------------------------------------------------------------------------
    if Player.healthPoints < 0 then
        Player.healthPoints = 0    
    end

    if isDead(Player) then
        --Enemy's victory
        love.audio.stop()
        displayActions = false
        displayMenu = false
        displayTurnInfo = false
        defeat = true
        arrowY = 790
        sound3 = love.audio.newSource("music/A_Singular_Perversion.mp3")
        love.audio.play(sound3)
    else
        --HERE SHOULD BE PAUSE
        --countingActive = true
        pause = true
    end

    if not pause then
        o1.remainingWaitingTime = o1.waitingTime
    end
end
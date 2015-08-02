--WARNING: This file uses global variables:
--Player, displayingActions, displayingMenu, displayTurnInfo, defeat, arrowY,
--sound3, pause

function AI(o1)
    if o1.name == "Dorver" or o1.name == "Dorver 2"
        or o1.name == "Dorver 3" then
            DorverAI(o1)
    elseif o1.name == "Szkodnik" or o1.name == "Szkodnik 2" 
        or o1.name == "Szkodnik 3" then
            ThornbushAI(o1)
    end
end

function enemyTurn(o1)
    --Here is a place for enemies' AI-------------------------------------------
    AI(o1)
    ----------------------------------------------------------------------------
    if Player.healthPoints < 0 then
        Player.healthPoints = 0    
    end

    if isDead(Player) then
        --Enemy's victory
        love.audio.stop()
        displayingActions = false
        displayingMenu = false
        displayTurnInfo = false
        defeat = true
        arrowY = 790
        sound3 = love.audio.newSource("music/A_Singular_Perversion.mp3")
        love.audio.play(sound3)
    else
        pause = true
    end

    if not pause then
        o1.remainingWaitingTime = o1.waitingTime
    end
end
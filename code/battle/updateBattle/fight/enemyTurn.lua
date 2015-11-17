--WARNING: This file uses global variables:
--Player, displayingActions, displayingMenu, displayTurnInfo, defeat, arrowY,
--sound3, pause
--Problem to solve: Creatures' names shouldn't be defined here, because they are
--already defined in specific files

function AI(o1)
    --TODO: implement AI function
    if o1.name == "Stwór" or o1.name == "Stwór 2"
        or o1.name == "Stwór 3" then
            DorverAI(o1)
    elseif o1.name == "Szkodnik" or o1.name == "Szkodnik 2" 
        or o1.name == "Szkodnik 3" then
            ThornbushAI(o1)
    elseif o1.name == "Strażnik powietrza" or o1.name == "Strażnik powietrza 2" 
        or o1.name == "Strażnik powietrza 3" then
            AirGuardianAI(o1)
    elseif o1.name == "Neil Merzenantar" or o1.name == "Neil Merzenantar 2" 
        or o1.name == "Neil Merzenantar 3" then
            BossAI(o1)
    elseif o1.name == "Kaktus" or o1.name == "Kaktus 2" 
        or o1.name == "Kaktus 3" then
            CactusAI(o1)
    elseif o1.name == "Smok" or o1.name == "Smok 2" 
        or o1.name == "Smok 3" then
            DragonAI(o1)
    elseif o1.name == "Strażnik ognia" or o1.name == "Strażnik ognia 2" 
        or o1.name == "Strażnik ognia 3" then
            FireGuardianAI(o1)
    elseif o1.name == "Stwór leśny" or o1.name == "Stwór leśny 2" 
        or o1.name == "Stwór leśny 3" then
            ForestCreatureAI(o1)
    elseif o1.name == "Leśny strażnik" or o1.name == "Leśny strażnik 2" 
        or o1.name == "Leśny strażnik 3" then
            ForestGuardianAI(o1)
    elseif o1.name == "Strażnik lodu" or o1.name == "Strażnik lodu 2" 
        or o1.name == "Strażnik lodu 3" then
            IceGuardianAI(o1)
    end
end

function enemyTurn(o1)
    --Here is a place for enemies' AI-------------------------------------------
    AI(o1)
    ----------------------------------------------------------------------------
    if Player.healthPoints < 0 then
        Player.healthPoints = 0    
    end

    if not isDead(Player) then
        pause = true
    end

    if not pause then
        o1.remainingWaitingTime = o1.waitingTime
    end
end
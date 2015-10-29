--WARNING: This file uses global variables:
--countingActive, dtotal, pause, dtotalPause, firstEnemy, secondEnemy,
--thirdEnemy, displayAnimation, isAlreadyRunning, secondSprite

require "battle.updateBattle.fight"

function resetCounter(o1, o2, o3)
    if o1.remainingWaitingTime == 0 then 
        o1.remainingWaitingTime = o1.waitingTime end
    if o2.remainingWaitingTime == 0 then
        o2.remainingWaitingTime = o2.waitingTime end
    if o3.remainingWaitingTime == 0 then
        o3.remainingWaitingTime = o3.waitingTime end
end

function updateBattle(dt, countingIsActive)
    battleArena:update(dt)
    if countingIsActive then
        dtotal = dtotal + dt
        if dtotal >= 0.1 then
            fight(firstEnemy, secondEnemy, thirdEnemy)
            dtotal = 0
        end
    elseif pause then
        dtotalPause = dtotalPause + dt
        if dtotalPause > 2 then
            pause = false
            dtotalPause = 0
            resetCounter(firstEnemy, secondEnemy, thirdEnemy)
            countingActive = true
        end
    end
    if ((isDead(firstEnemy) and isDead(secondEnemy) and isDead(thirdEnemy))
        or (isDead(firstEnemy) and selectedMap == 4))
        and not displayAnimation and not isAlreadyRunning
        and not secondSprite.active then
            --Player's victory
            isAlreadyRunning = true
            winning()
    end
end
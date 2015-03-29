Player = {healthPoints = 50, magicPoints = 20, waitingTime = 50, remainingWaitingTime = 25, defence = 0, maxHealth = 50, maxMagic = 20}

function attack(o1)
    o1.healthPoints = o1.healthPoints - 5
    if o1.healthPoints < 0 then
        o1.healthPoints = 0
    end
end
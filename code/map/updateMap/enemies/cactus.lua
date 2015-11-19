EnemyCactusStatistics = {
    --Table contains attributes which should be loaded before the fight
    health = 40,
    magic = 40,
    waitingTime = 45,
    defence = 0
}

EnemyCactus_First = {
    id = 1,
    name = "Kaktus",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 29,
    defence,
    maxHealth,
    maxMagic
}

--this will let me create multiple instances of enemy
EnemyCactus_Second = {
    id = 2,
    name = "Kaktus 2",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 37,
    defence,
    maxHealth,
    maxMagic
}

EnemyCactus_Third = {
    id = 3,
    name = "Kaktus 3",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 5,
    defence,
    maxHealth,
    maxMagic
}

function CactusAI(instance)
    if instance.defence == 0 then magicalBarrier(instance)
    elseif instance.healthPoints < 30 and instance.magicPoints >= 10 then 
        healingRune(instance)
    elseif instance.magicPoints >= 5 then magicalExplosion(instance)
    else harmfulGas(instance)
    end
end
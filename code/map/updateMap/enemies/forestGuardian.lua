EnemyForestGuardianStatistics = {
    --Table contains attributes which should be loaded before the fight
    health = 35,
    magic = 30,
    waitingTime = 45,
    defence = 0
}

EnemyForestGuardian_First = {
    id = 1,
    name = "Leśny strażnik",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 29,
    defence,
    maxHealth,
    maxMagic
}

--this will let me create multiple instances of enemy
EnemyForestGuardian_Second = {
    id = 2,
    name = "Leśny strażnik 2",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 37,
    defence,
    maxHealth,
    maxMagic
}

EnemyForestGuardian_Third = {
    id = 3,
    name = "Leśny strażnik 3",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 5,
    defence,
    maxHealth,
    maxMagic
}

function ForestGuardianAI(instance)
    if instance.defence == 0 then magicalBarrier(instance)
    elseif instance.healthPoints < 20 and instance.magicPoints >= 10 then 
        healingRune(instance)
    elseif instance.magicPoints >= 5 then magicalExplosion(instance)
    else harmfulGas(instance)
    end
end
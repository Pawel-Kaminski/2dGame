EnemyFireGuardianStatistics = {
    --Table contains attributes which should be loaded before the fight
    health = 100,
    magic = 120,
    waitingTime = 45,
    defence = 0
}

EnemyFireGuardian_First = {
    id = 1,
    name = "Strażnik ognia",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 29,
    defence,
    maxHealth,
    maxMagic
}

--this will let me create multiple instances of enemy
EnemyFireGuardian_Second = {
    id = 2,
    name = "Strażnik ognia 2",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 37,
    defence,
    maxHealth,
    maxMagic
}

EnemyFireGuardian_Third = {
    id = 3,
    name = "Strażnik ognia 3",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 5,
    defence,
    maxHealth,
    maxMagic
}

function FireGuardianAI(instance)
    if instance.defence == 0 then magicalBarrier(instance)
    elseif instance.healthPoints < 20 and instance.magicPoints >= 10 then 
        healingRune(instance)
    elseif instance.magicPoints >= 20 then fireAttackOfEnemy(instance)
    elseif instance.magicPoints >= 5 then magicalExplosion(instance)
    else harmfulGas(instance)
    end
end
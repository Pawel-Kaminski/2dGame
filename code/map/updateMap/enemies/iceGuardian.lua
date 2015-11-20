EnemyIceGuardianStatistics = {
    --Table contains attributes which should be loaded before the fight
    health = 100,
    magic = 150,
    waitingTime = 45,
    defence = 10
}

EnemyIceGuardian_First = {
    id = 1,
    name = "Strażnik lodu",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 29,
    defence,
    maxHealth,
    maxMagic
}

--this will let me create multiple instances of enemy
EnemyIceGuardian_Second = {
    id = 2,
    name = "Strażnik lodu 2",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 37,
    defence,
    maxHealth,
    maxMagic
}

EnemyIceGuardian_Third = {
    id = 3,
    name = "Strażnik lodu 3",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 5,
    defence,
    maxHealth,
    maxMagic
}

function IceGuardianAI(instance)
    if instance.defence == 0 then magicalBarrier(instance)
    elseif instance.healthPoints < 20 and instance.magicPoints >= 10 then 
        healingRune(instance)
    elseif instance.magicPoints >= 25 then iceAttackOfEnemy(instance)
    elseif instance.magicPoints >= 5 then magicalExplosion(instance)
    else harmfulGas(instance)
    end
end
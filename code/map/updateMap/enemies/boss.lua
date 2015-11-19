EnemyBossStatistics = {
    --Table contains attributes which should be loaded before the fight
    health = 400,
    magic = 190,
    waitingTime = 45,
    defence = 0
}

EnemyBoss_First = {
    id = 1,
    name = "Neil Merzenantar",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 29,
    defence,
    maxHealth,
    maxMagic
}

--this will let me create multiple instances of enemy
EnemyBoss_Second = {
    id = 2,
    name = "Neil Merzenantar 2",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 37,
    defence,
    maxHealth,
    maxMagic
}

EnemyBoss_Third = {
    id = 3,
    name = "Neil Merzenantar 3",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 5,
    defence,
    maxHealth,
    maxMagic
}

function BossAI(instance)
    if instance.defence == 0 then magicalBarrier(instance)
    elseif instance.healthPoints < 20 and instance.magicPoints >= 10 then 
        healingRune(instance)
    elseif instance.magicPoints >= 100 then powerOfElements(instance)
    elseif instance.magicPoints >= 25 then iceAttackOfEnemy(instance)
    elseif instance.magicPoints >= 20 then fireAttackOfEnemy(instance)
    elseif instance.magicPoints >= 5 then magicalExplosion(instance)
    else harmfulGas(instance)
    end
end
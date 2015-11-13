EnemyBossStatistics = {
    --Table contains attributes which should be loaded before the fight
    health = 400,
    magic = 0,
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
    harmfulGas(instance)
end
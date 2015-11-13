EnemyFireGuardianStatistics = {
    --Table contains attributes which should be loaded before the fight
    health = 100,
    magic = 0,
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
    harmfulGas(instance)
end
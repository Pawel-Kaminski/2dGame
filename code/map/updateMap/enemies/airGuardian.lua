EnemyAirGuardianStatistics = {
    --Table contains attributes which should be loaded before the fight
    health = 50,
    magic = 0,
    waitingTime = 45,
    defence = 0
}

EnemyAirGuardian_First = {
    id = 1,
    name = "Strażnik powietrza",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 29,
    defence,
    maxHealth,
    maxMagic
}

--this will let me create multiple instances of enemy
EnemyAirGuardian_Second = {
    id = 2,
    name = "Strażnik powietrza 2",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 37,
    defence,
    maxHealth,
    maxMagic
}

EnemyAirGuardian_Third = {
    id = 3,
    name = "Strażnik powietrza 3",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 5,
    defence,
    maxHealth,
    maxMagic
}

function AirGuardianAI(instance)
    harmfulGas(instance)
end
EnemyThornbushStatistics = {
    --Table contains attributes which should be loaded before the fight
    health = 15,
    magic = 0,
    waitingTime = 37,
    defence = 10
}

EnemyThornbush_First = {
    id = 1,
    name = "Szkodnik",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 29,
    defence,
    maxHealth,
    maxMagic
}

--this will let me create multiple instances of enemy
EnemyThornbush_Second = {
    id = 2,
    name = "Szkodnik 2",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 37,
    defence,
    maxHealth,
    maxMagic
}

EnemyThornbush_Third = {
    id = 3,
    name = "Szkodnik 3",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 5,
    defence,
    maxHealth,
    maxMagic
}

function ThornbushAI(instance)
    harmfulGas(instance)
end
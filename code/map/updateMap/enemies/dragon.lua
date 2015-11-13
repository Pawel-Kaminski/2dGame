EnemyDragonStatistics = {
    --Table contains attributes which should be loaded before the fight
    health = 45,
    magic = 0,
    waitingTime = 45,
    defence = 0
}

EnemyDragon_First = {
    id = 1,
    name = "Smok",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 29,
    defence,
    maxHealth,
    maxMagic
}

--this will let me create multiple instances of enemy
EnemyDragon_Second = {
    id = 2,
    name = "Smok 2",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 37,
    defence,
    maxHealth,
    maxMagic
}

EnemyDragon_Third = {
    id = 3,
    name = "Smok 3",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 5,
    defence,
    maxHealth,
    maxMagic
}

function DragonAI(instance)
    harmfulGas(instance)
end
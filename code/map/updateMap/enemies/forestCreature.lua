EnemyForestCreatureStatistics = {
    --Table contains attributes which should be loaded before the fight
    health = 40,
    magic = 0,
    waitingTime = 45,
    defence = 0
}

EnemyForestCreature_First = {
    id = 1,
    name = "Stwór leśny",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 29,
    defence,
    maxHealth,
    maxMagic
}

--this will let me create multiple instances of enemy
EnemyForestCreature_Second = {
    id = 2,
    name = "Stwór leśny 2",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 37,
    defence,
    maxHealth,
    maxMagic
}

EnemyForestCreature_Third = {
    id = 3,
    name = "Stwór leśny 3",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 5,
    defence,
    maxHealth,
    maxMagic
}

function ForestCreatureAI(instance)
    harmfulGas(instance)
end
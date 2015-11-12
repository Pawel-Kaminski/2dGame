EnemyCactusStatistics = {
    --Table contains attributes which should be loaded before the fight
    health = 40,
    magic = 0,
    waitingTime = 45,
    defence = 0
}

EnemyCactus_First = {
    id = 1,
    name = "Kaktus",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 29,
    defence,
    maxHealth,
    maxMagic
}

--this will let me create multiple instances of enemy
EnemyCactus_Second = {
    id = 2,
    name = "Kaktus 2",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 37,
    defence,
    maxHealth,
    maxMagic
}

EnemyCactus_Third = {
    id = 3,
    name = "Kaktus 3",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 5,
    defence,
    maxHealth,
    maxMagic
}

--function Cactus_attack(attackingEnemy)
    --displayAnimation = true
    --animationId = 6
    --enemyId = attackingEnemy.id
    --Player.healthPoints = 
        --Player.healthPoints - (3 * (100 - Player.defence) / 100)
    --if Player.healthPoints < 0 then
        --Player.healthPoints = 0
    --end
--end

function CactusAI(instance)
    harmfulGas(instance)
end
--WARNING: This file creates global variables: EnemyThornbushStatistics,
--EnemyThornbush_First, EnemyThornbush_Second, EnemyThornbush_Third,
--displayAnimation, enemyId

--TODO:implement thornbush
EnemyThornbushStatistics = {
    --Table contains attributes which should be loaded before the fight
    health = 20,
    magic = 0,
    waitingTime = 45,
    defence = 0
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

--function Thornbush_attack(attackingEnemy)
    --displayAnimation = true
    --animationId = 6
    --enemyId = attackingEnemy.id
    --Player.healthPoints = 
        --Player.healthPoints - (3 * (100 - Player.defence) / 100)
    --if Player.healthPoints < 0 then
        --Player.healthPoints = 0
    --end
--end

function ThornbushAI(instance)
    harmfulGas(instance)
end
EnemyForestGuardianStatistics = {
    --Table contains attributes which should be loaded before the fight
    health = 3,
    magic = 0,
    waitingTime = 45,
    defence = 0
}

EnemyForestGuardian_First = {
    id = 1,
    name = "Leśny strażnik",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 29,
    defence,
    maxHealth,
    maxMagic
}

--this will let me create multiple instances of enemy
EnemyForestGuardian_Second = {
    id = 2,
    name = "Leśny strażnik 2",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 37,
    defence,
    maxHealth,
    maxMagic
}

EnemyForestGuardian_Third = {
    id = 3,
    name = "Leśny strażnik 3",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 5,
    defence,
    maxHealth,
    maxMagic
}

function ForestGuardian_attack(attackingEnemy)
    displayAnimation = true
    animationId = 6
    enemyId = attackingEnemy.id
    Player.healthPoints = 
        Player.healthPoints - (3 * (100 - Player.defence) / 100)
    if Player.healthPoints < 0 then
        Player.healthPoints = 0
    end
end

function ForestGuardianAI(instance)
    ForestGuardian_attack(instance)
end
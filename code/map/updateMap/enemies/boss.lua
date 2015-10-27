EnemyBossStatistics = {
    --Table contains attributes which should be loaded before the fight
    health = 3,
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

function Boss_attack(attackingEnemy)
    displayAnimation = true
    animationId = 6
    enemyId = attackingEnemy.id
    Player.healthPoints = 
        Player.healthPoints - (3 * (100 - Player.defence) / 100)
    if Player.healthPoints < 0 then
        Player.healthPoints = 0
    end
end

function BossAI(instance)
    Boss_attack(instance)
end
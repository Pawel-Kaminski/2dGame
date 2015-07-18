--TODO:implement thornbush
EnemyThornbushStatistics = {
    --Table contains attributes which should be loaded before the fight
    health = 30,
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

--TODO:Implement attacks
function Thornbush_attack(attackingEnemy)
    Player.healthPoints = Player.healthPoints - (3 * (100 - Player.defence) / 100)
    if Player.healthPoints < 0 then
        Player.healthPoints = 0
    end
end

--TODO:Create AI
function ThornbushAI(instance)
    Thornbush_attack(instance)
end
--WARNING: This file uses global variables:
--EnemyDorverStatistics, EnemyDorver_First, EnemyDorver_Second,
--EnemyDorver_Third

EnemyDorverStatistics = {
    --Table contains attributes which should be loaded before the fight
    health = 40,
    magic = 10,
    waitingTime = 61,
    defence = 0
}

EnemyDorver_First = {
    id = 1,
    name = "Dorver",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 29,
    defence,
    maxHealth,
    maxMagic
}

--this will let me create multiple instances of enemy
EnemyDorver_Second = {
    id = 2,
    name = "Dorver 2",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 37,
    defence,
    maxHealth,
    maxMagic
}

EnemyDorver_Third = {
    id = 3,
    name = "Dorver 3",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 50,
    defence,
    maxHealth,
    maxMagic
}

function Dorver_attack(attackingEnemy)
    displayAnimation = true
    animationId = 5
    enemyId = attackingEnemy.id
    Player.healthPoints = Player.healthPoints - (3 * (100 - Player.defence) / 100)
    if Player.healthPoints < 0 then
        Player.healthPoints = 0
    end
end

function Dorver_magicAttack(attackingEnemy)
    if attackingEnemy.magicPoints < 5 then return end
    Player.healthPoints = Player.healthPoints - (5 * (100 - Player.defence) / 100)
    if Player.healthPoints < 0 then
        Player.healthPoints = 0
    end
    attackingEnemy.magicPoints = attackingEnemy.magicPoints - 5
end

--Enemy is able to heal only himself
function Dorver_heal(castingEnemy)
    if castingEnemy.magicPoints < 10 then return end
    castingEnemy.healthPoints = castingEnemy.healthPoints + 5
    castingEnemy.magicPoints = castingEnemy.magicPoints - 10
    if castingEnemy.healthPoints > castingEnemy.maxHealth then
        castingEnemy.healthPoints = castingEnemy.maxHealth    
    end
end

function Dorver_defend(castingEnemy)
    displayAnimation = true
    --animationId = 6
    animationId = 7
    enemyId = castingEnemy.id
    castingEnemy.defence = castingEnemy.defence + 2
end

function DorverAI(instance)
    --Dorver - profile
    --Dorver starts with defensive action
    --If healthPoints is less than 20 points, Dorver tries to heal itself in the first place
    --Dorver uses magicAttack as long as there are available magicPoints
    --If it is not possible to use magicAttack, Dorver uses regular attacks
    if instance.defence == 0 then Dorver_defend(instance)
    elseif instance.healthPoints < 20 and instance.magicPoints >= 10 then Dorver_heal(instance)
    elseif instance.magicPoints >= 5 then Dorver_magicAttack(instance)
    else Dorver_attack(instance)
    end
end
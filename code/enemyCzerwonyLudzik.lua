EnemyCzerwonyLudzikStatistics = {
    --Table contains attributes which should be loaded before the fight
    health = 30,
    magic = 8,
    waitingTime = 31,
    defence = 0
}

EnemyCzerwonyLudzik = {
    name = "Czerwony ludzik",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 19,
    defence,
    maxHealth,
    maxMagic
}

--this will let me create multiple instances of enemy
EnemyCzerwonyLudzik_Second = {
    name = "Czerwony ludzik 2",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 27,
    defence,
    maxHealth,
    maxMagic
}

EnemyCzerwonyLudzik_Third = {
    name = "Czerwony ludzik 3",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 10,
    defence,
    maxHealth,
    maxMagic
}

function CzerwonyLudzik_attack()
    Player.healthPoints = Player.healthPoints - 2
    if Player.healthPoints < 0 then
        Player.healthPoints = 0
    end
end

function CzerwonyLudzik_magicAttack(attackingEnemy)
    if attackingEnemy.magicPoints < 5 then return end
    Player.healthPoints = Player.healthPoints - 5
    if Player.healthPoints < 0 then
        Player.healthPoints = 0
    end
    attackingEnemy.magicPoints = attackingEnemy.magicPoints - 5
end

--Enemy is able to heal only himself
function CzerwonyLudzik_heal(castingEnemy)
    if castingEnemy.magicPoints < 10 then return end
    castingEnemy.healthPoints = castingEnemy.healthPoints + 5
    castingEnemy.magicPoints = castingEnemy.magicPoints - 10
    if castingEnemy.healthPoints > castingEnemy.maxHealth then
        castingEnemy.healthPoints = castingEnemy.maxHealth    
    end
end

function CzerwonyLudzik_defend(castingEnemy)
    castingEnemy.defence = castingEnemy.defence + 2
end

function CzerwonyLudzikAI()
end
Enemy1Statistics = {
    --Table contains attributes which should be loaded before the fight
    health = 40,
    magic = 10,
    waitingTime = 61,
    --IT SHOULD BE RANDOM
    --remainingWaitingTime = 29,
    defence = 0
}

Enemy1 = {
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
Enemy1_Second = {
    name = "Dorver 2",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 37,
    defence,
    maxHealth,
    maxMagic
}

Enemy1_Third = {
    name = "Dorver 3",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 50,
    defence,
    maxHealth,
    maxMagic
}

function E_attack()
    Player.healthPoints = Player.healthPoints - 2
    if Player.healthPoints < 0 then
        Player.healthPoints = 0
    end
end

function E_magicAttack(attackingEnemy)
    if attackingEnemy.magicPoints < 5 then return end
    Player.healthPoints = Player.healthPoints - 5
    if Player.healthPoints < 0 then
        Player.healthPoints = 0
    end
    attackingEnemy.magicPoints = attackingEnemy.magicPoints - 5
end

--Enemy is able to heal only himself
function E_heal(castingEnemy)
    if castingEnemy.magicPoints < 10 then return end
    castingEnemy.healthPoints = castingEnemy.healthPoints + 5
    castingEnemy.magicPoints = castingEnemy.magicPoints - 10
    if castingEnemy.healthPoints > castingEnemy.maxHealth then
        castingEnemy.healthPoints = castingEnemy.maxHealth    
    end
end

function E_defend(castingEnemy)
    castingEnemy.defence = castingEnemy.defence + 2
end
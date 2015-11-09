function harmfulGas(attackingEnemy)
    displayAnimation = true
    animationId = 6
    enemyId = attackingEnemy.id
    Player.healthPoints = 
        Player.healthPoints - (3 * (100 - Player.defence) / 100)
    if Player.healthPoints < 0 then
        Player.healthPoints = 0
    end
end

function magicalExplosion(attackingEnemy)
    displayAnimation = true
    animationId = 5
    enemyId = attackingEnemy.id
    if attackingEnemy.magicPoints < 5 then return end
    Player.healthPoints = 
        Player.healthPoints - (5 * (100 - Player.defence) / 100)
    if Player.healthPoints < 0 then
        Player.healthPoints = 0
    end
    attackingEnemy.magicPoints = attackingEnemy.magicPoints - 5
end

function magicalBarrier(castingEnemy)
    displayAnimation = true
    animationId = 7
    enemyId = castingEnemy.id
    castingEnemy.magicPoints = castingEnemy.magicPoints - 10
    castingEnemy.defence = castingEnemy.defence + 10
end

function healingRune(castingEnemy)
    displayAnimation = true
    animationId = 8
    enemyId = castingEnemy.id
    if castingEnemy.magicPoints < 10 then return end
    castingEnemy.healthPoints = castingEnemy.healthPoints + 20
    castingEnemy.magicPoints = castingEnemy.magicPoints - 10
    if castingEnemy.healthPoints > castingEnemy.maxHealth then
        castingEnemy.healthPoints = castingEnemy.maxHealth    
    end
end

function fireAttack(attackingEnemy)
    displayAnimation = true
    animationId = 12
    enemyId = attackingEnemy.id
    if attackingEnemy.magicPoints < 5 then return end
    Player.healthPoints = 
        Player.healthPoints - (5 * (100 - Player.defence) / 100)
    if Player.healthPoints < 0 then
        Player.healthPoints = 0
    end
    attackingEnemy.magicPoints = attackingEnemy.magicPoints - 5
end

function iceAttack(attackingEnemy)
    displayAnimation = true
    animationId = 13
    enemyId = attackingEnemy.id
    if attackingEnemy.magicPoints < 5 then return end
    Player.healthPoints = 
        Player.healthPoints - (5 * (100 - Player.defence) / 100)
    if Player.healthPoints < 0 then
        Player.healthPoints = 0
    end
    attackingEnemy.magicPoints = attackingEnemy.magicPoints - 5
end

function powerOfElements(attackingEnemy)
    displayAnimation = true
    animationId = 14
    enemyId = attackingEnemy.id
    if attackingEnemy.magicPoints < 5 then return end
    Player.healthPoints = 
        Player.healthPoints - (5 * (100 - Player.defence) / 100)
    if Player.healthPoints < 0 then
        Player.healthPoints = 0
    end
    attackingEnemy.magicPoints = attackingEnemy.magicPoints - 5
end
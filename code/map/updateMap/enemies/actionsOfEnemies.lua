function harmfulGas(attackingEnemy)
    displayAnimation = true
    animationId = 6
    enemyId = attackingEnemy.id
    Player.healthPoints = 
        Player.healthPoints - (6 * (100 - Player.defence) / 100)
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
        Player.healthPoints - (15 * (100 - Player.defence) / 100)
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

function fireAttackOfEnemy(attackingEnemy)
    displayAnimation = true
    animationId = 12
    enemyId = attackingEnemy.id
    if attackingEnemy.magicPoints < 20 then return end
    Player.healthPoints = 
        Player.healthPoints - (40 * (100 - Player.defence) / 100)
    if Player.healthPoints < 0 then
        Player.healthPoints = 0
    end
    attackingEnemy.magicPoints = attackingEnemy.magicPoints - 20
end

function iceAttackOfEnemy(attackingEnemy)
    displayAnimation = true
    animationId = 13
    enemyId = attackingEnemy.id
    if attackingEnemy.magicPoints < 25 then return end
    Player.healthPoints = 
        Player.healthPoints - (50 * (100 - Player.defence) / 100)
    if Player.healthPoints < 0 then
        Player.healthPoints = 0
    end
    attackingEnemy.magicPoints = attackingEnemy.magicPoints - 25
end

function powerOfElements(attackingEnemy)
    displayAnimation = true
    animationId = 14
    enemyId = attackingEnemy.id
    if attackingEnemy.magicPoints < 100 then return end
    Player.healthPoints = 
        Player.healthPoints - (249 * (100 - Player.defence) / 100)
    if Player.healthPoints < 0 then
        Player.healthPoints = 0
    end
    attackingEnemy.magicPoints = attackingEnemy.magicPoints - 100
end
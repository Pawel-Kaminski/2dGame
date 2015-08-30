function Dorver_attack(attackingEnemy)
    displayAnimation = true
    animationId = 6
    enemyId = attackingEnemy.id
    Player.healthPoints = Player.healthPoints - (3 * (100 - Player.defence) / 100)
    if Player.healthPoints < 0 then
        Player.healthPoints = 0
    end
end

function Dorver_magicAttack(attackingEnemy)
    displayAnimation = true
    animationId = 5
    enemyId = attackingEnemy.id
    if attackingEnemy.magicPoints < 5 then return end
    Player.healthPoints = Player.healthPoints - (5 * (100 - Player.defence) / 100)
    if Player.healthPoints < 0 then
        Player.healthPoints = 0
    end
    attackingEnemy.magicPoints = attackingEnemy.magicPoints - 5
end

--Enemy is able to heal only himself
function Dorver_heal(castingEnemy)
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

function Dorver_defend(castingEnemy)
    displayAnimation = true
    animationId = 7
    enemyId = castingEnemy.id
    castingEnemy.magicPoints = castingEnemy.magicPoints - 10
    castingEnemy.defence = castingEnemy.defence + 10
end
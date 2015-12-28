EnemyDorverStatistics = {
    --Table contains attributes which should be loaded before the fight
    health = 30,
    magic = 40,
    waitingTime = 61,
    defence = 5
}

EnemyDorver_First = {
    id = 1,
    name = "Stwór",
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
    name = "Stwór 2",
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
    name = "Stwór 3",
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 50,
    defence,
    maxHealth,
    maxMagic
}

function DorverAI(instance)
    --Dorver - profile
    --Dorver starts with defensive action
    --If healthPoints is less than 20 points, 
    --Dorver tries to heal itself in the first place
    --Dorver uses magicAttack as long as there are available magicPoints
    --If it is not possible to use magicAttack, Dorver uses regular attacks
    if instance.defence < 10 then magicalBarrier(instance)
    elseif instance.healthPoints < 20 and instance.magicPoints >= 10 then 
        healingRune(instance)
    elseif instance.magicPoints >= 5 then magicalExplosion(instance)
    else harmfulGas(instance)
    end
end
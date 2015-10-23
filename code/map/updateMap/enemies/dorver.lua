require "map.updateMap.enemies.dorver.dorverActions"

--WARNING: This file uses global variables:
--EnemyDorverStatistics, EnemyDorver_First, EnemyDorver_Second,
--EnemyDorver_Third

EnemyDorverStatistics = {
    --Table contains attributes which should be loaded before the fight
    health = 4,
    magic = 40,
    waitingTime = 61,
    defence = 0
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
    if instance.defence == 0 then Dorver_defend(instance)
    elseif instance.healthPoints < 20 and instance.magicPoints >= 10 then 
        Dorver_heal(instance)
    elseif instance.magicPoints >= 5 then Dorver_magicAttack(instance)
    else Dorver_attack(instance)
    end
end
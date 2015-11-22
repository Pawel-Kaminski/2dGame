--WARNING: This file creates global variables:
--PlayerStatistics, Player, displayAnimation, animationId

require "battle.enterBattle.player.playerActionFlags"

PlayerStatistics = {
    --PlayerStatistics table contains attributes which should be loaded 
    --before the fight
    health = 100,
    magic = 40,
    waitingTime = 40,
    defence = 0
}

Player = {
    --Player table contains attributes that can be modified during the fight
    healthPoints,
    magicPoints,
    waitingTime,
    remainingWaitingTime = 15,
    defence,
    maxHealth,
    maxMagic
}

--Regular attack that inflicts 10 points of damage to one enemy
function attack(o1)
    displayAnimation = true
    animationId = 1
    o1.healthPoints = o1.healthPoints - (10 * (100 - o1.defence) / 100)
    if o1.healthPoints < 0 then
        o1.healthPoints = 0
    end
end

--Powerful magic attack that inflicts 20 points of damage to one enemy,
--but costs 5 magic points
function magicAttack(o1)
    displayAnimation = true
    animationId = 2
    if Player.magicPoints < 5 then return end
    o1.healthPoints = o1.healthPoints - (20 * (100 - o1.defence) / 100)
    if o1.healthPoints < 0 then
        o1.healthPoints = 0
    end
    Player.magicPoints = Player.magicPoints - 5
end

--Healing spell which restores up to 100 health points,
--but costs 10 magic points
function heal()
    displayAnimation = true
    animationId = 3
    if Player.magicPoints < 10 then return end
    Player.healthPoints = Player.healthPoints + 100
    Player.magicPoints = Player.magicPoints - 10
    if Player.healthPoints > Player.maxHealth then
        Player.healthPoints = Player.maxHealth
    end
end

--Player's defence attribute
function defend()
    displayAnimation = true
    animationId = 4
    if Player.magicPoints < 10 then return end
    if Player.defence < 20 then
        Player.defence = Player.defence + 20
    elseif Player.defence < 40 then
        Player.defence = Player.defence + 10
    else
        Player.defence = Player.defence + 5
    end
    if Player.defence > 99 then
        Player.defence = 99
    end
    Player.magicPoints = Player.magicPoints - 10
end

function magicalArrow(o1)
    displayAnimation = true
    animationId = 9
    if Player.magicPoints < 10 then return end
    o1.healthPoints = o1.healthPoints - (45 * (100 - o1.defence) / 100)
    if o1.healthPoints < 0 then
        o1.healthPoints = 0
    end
    Player.magicPoints = Player.magicPoints - 10
end

function iceAttack(o1)
    displayAnimation = true
    animationId = 10
    if Player.magicPoints < 20 then return end
    Player.magicPoints = Player.magicPoints - 20
    if o1.name == "Strażnik lodu" or o1.name == "Strażnik lodu 2" or
    o1.name == "Strażnik lodu 3" then
        return
    end
    o1.healthPoints = o1.healthPoints - (100 * (100 - o1.defence) / 100)
    if o1.healthPoints < 0 then
        o1.healthPoints = 0
    end
end

function fireAttack(o1)
    displayAnimation = true
    animationId = 11
    if Player.magicPoints < 20 then return end
    Player.magicPoints = Player.magicPoints - 20
    if o1.name == "Strażnik ognia" or o1.name == "Strażnik ognia 2" or
    o1.name == "Strażnik ognia 3" then
        return
    end
    o1.healthPoints = o1.healthPoints - (130 * (100 - o1.defence) / 100)
    if o1.healthPoints < 0 then
        o1.healthPoints = 0
    end
end

--This function returns list of all available actions
function listOfAllActions(number)
    --create empty list of actions
    actions = {}

    local index = 1;
    --foreach action in playerActionFlags
        --if second attribute is true (if action is unlocked)
            --add to list of actions: name of action, number of function, index
        --index = index + 1
    --end
    for i = 1, number do
        local action = playerActionFlags[i]
        if action[2] then
            table.insert(actions, {action[1], action[3], index, action[4],
                action[5], action[6]})
        end
        index = index + 1
    end
    return actions
end
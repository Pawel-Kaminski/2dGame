require "battle.enterBattle.player.playerActionFlags"

PlayerStatistics = {
    --PlayerStatistics table contains attributes which should be loaded before the fight
    health = 200,
    magic = 0,
    waitingTime = 50,
    --remainingWaitingTime = 15,
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
    o1.healthPoints = o1.healthPoints - (10 * (100 - o1.defence)/100)
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
    --o1.healthPoints = o1.healthPoints - 20
    o1.healthPoints = o1.healthPoints - (20 * (100 - o1.defence)/100)
    if o1.healthPoints < 0 then
        o1.healthPoints = 0
    end
    Player.magicPoints = Player.magicPoints - 5
end

--This action is locked and should not be visible for player
--This is here only for testing purposes
function lockedAction(o1)
end

--Healing spell which restores up to 20 health points,
--but costs 10 magic points
function heal()
    displayAnimation = true
    animationId = 3
    if Player.magicPoints < 10 then return end
    Player.healthPoints = Player.healthPoints + 20
    Player.magicPoints = Player.magicPoints - 10
    if Player.healthPoints > Player.maxHealth then
        Player.healthPoints = Player.maxHealth
    end
end

--Player's defence attribute increases by 10 points
function defend()
    displayAnimation = true
    animationId = 4
    Player.defence = Player.defence + 10
end

--This function returns list of all available actions
function listOfAllActions(number)
    --create empty list of actions
    actions = {}

    local index = 1;
    --foreach action in playerActionFlags
        --if second attribute is true
            --add to list of actions: name of action, number of function, index
        --index = index + 1
    --end
    for i = 1, number do
        local action = playerActionFlags[i]
        if action[2] then
            table.insert(actions, {action[1], action[3], index, action[4], action[5], action[6]})
        end
        index = index + 1
    end
    return actions
end
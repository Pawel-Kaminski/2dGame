PlayerStatistics = {
    --PlayerStatistics table contains attributes which should be loaded before the fight
    health = 50,
    magic = 20,
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

--Regular attack that inflicts 5 points of damage to one enemy
function attack(o1)
    o1.healthPoints = o1.healthPoints - 5
    if o1.healthPoints < 0 then
        o1.healthPoints = 0
    end
end

--Powerful magic attack that inflicts 10 points of damage to one enemy,
--but costs 5 magic points
function magicAttack(o1)
    if Player.magicPoints < 5 then return end
    o1.healthPoints = o1.healthPoints - 10
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
    if Player.magicPoints < 10 then return end
    Player.healthPoints = Player.healthPoints + 20
    Player.magicPoints = Player.magicPoints - 10
    if Player.healthPoints > Player.maxHealth then
        Player.healthPoints = Player.maxHealth
    end
end

--Player's defence attribute increases by 10 points
function defend()
    Player.defence = Player.defence + 10
end

playerActionFlags = {
    {"Zwykły atak", true, 1},
    {"Atak magiczny", true, 2},
    {"Akcja zablokowana", false, 3},
    {"Ulecz się", true, 4},
    {"Broń się", true, 5}
}

--This function returns list of all available actions
function listOfAllActions()
    --create empty list of actions
    actions = {}

    local index = 1;
    --foreach action in playerActionFlags
        --if second attribute is true
            --add to list of actions: name of action, number of function, index
        --index = index + 1
    --end
    for i = 1, 5 do
        local action = playerActionFlags[i]
        if action[2] then
            table.insert(actions, {action[1], action[3], index})
        end
        index = index + 1
    end
    return actions
end
Player = {
    healthPoints = 50,
    magicPoints = 20,
    waitingTime = 50,
    remainingWaitingTime = 15,
    defence = 0,
    maxHealth = 50,
    maxMagic = 20
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
    --TODO: implement action
end

--This action is locked and should not be visible for player
--This is here only for testing purposes
function lockedAction(o1)
end

--Healing spell which restores 20 health points,
--but costs 10 magic points
function heal()
    Player.healthPoints = player.healthPoints + 20
    Player.magicPoints = player.magicPoints - 10
end

--Player's defence attribute increases by 10 points
function defend()
    --TODO: implement action
end

playerActionFlags = {
    {"Zwykly atak", true, 1},
    {"Atak magiczny", true, 2},
    {"Akcja zablokowana", false, 3},
    {"Ulecz sie", true, 4},
    {"Bron sie", true, 5}
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
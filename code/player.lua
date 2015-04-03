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
function heal(Player)
    --TODO: implement action
end

--Player's defence attribute increases by 10 points
function defend(Player)
    --TODO: implement action
end

playerActionFlags = {
    action1 = {"Zwykły atak", true},
    action2 = {"Atak magiczny", true},
    action3 = {"Akcja zablokowana", false},
    action4 = {"Ulecz sie", true},
    action5 = {"Bron sie", true}
}

--This function returns list of all available actions
function listOfAllActions()
    --create empty list of actions
    actions = {}

    --foreach action in playerActionFlags
    for _, action in pairs(playerActionFlags) do
        --if second attribute is true
        if action[2] then
            --add first attribute to list of actions
            table.insert(actions, action[1])
        end
    end
    return actions
end
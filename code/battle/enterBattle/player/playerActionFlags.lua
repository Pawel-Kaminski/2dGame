--WARNING: This file uses global variables: playerActionFlags

--playerActionFlags describes which actions are unlocked for the player.
--Similar table for enemy is not required,
--because all actions of enemies will be always available
--Description of elements:
--1. Name of action
--2. Is action unlocked?
--3. Id of action
--4. Description of action
--5. How many magic points you need to use action?
--6. Is action available to use now?
playerActionFlags = {
    {"Zwykły atak", true, 1, 
"Zwykły atak, który zadaje 10 punktów obrażeń jednemu wrogowi.",
0, true},
    {"Atak magiczny", true, 2, 
"Koszt: 5 PM. Potężny atak magiczny, który zadaje 20 punktów obrażeń jednemu wrogowi.",
5, true},
    {"Akcja zablokowana", false, 3,
"BŁĄD",
0, false},
    {"Ulecz się", true, 4,
"Koszt: 10 PM. Czar uleczający, który regeneruje do 20 punktów życia.",
10, true},
    {"Broń się", true, 5,
"Akcja ochronna, która zwiększa odporność na ataki wrogów o 10 punktów procentowych.",
0, true}
}
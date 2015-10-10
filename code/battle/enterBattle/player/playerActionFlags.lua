--WARNING: This file creates global variable: playerActionFlags

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
numberOfFlags = 5
playerActionFlags = {
    {"Zwykły atak", true, 1, 
"Atak, który zadaje 10 punktów obrażeń jednemu wrogowi.",
0, true},
    {"Magiczna bariera", true, 2,
"Koszt: 10 PM. Wytwarza barierę ochronną, która zwiększa współczynnik odporności na ataki wrogów o 10 punktów procentowych.",
10, true},
    {"Atak magiczny", false, 3, 
"Koszt: 5 PM. Potężny atak magiczny, który zadaje 20 punktów obrażeń jednemu wrogowi.",
5, true},
    {"Ulecz się", false, 4,
"Koszt: 10 PM. Czar uleczający, który regeneruje do 20 punktów życia.",
10, true},
    {"Magiczna strzała", false, 5,
"Koszt: 10 PM. Użyj magii, aby zwiększyć strzałę do olbrzymich rozmiarów i "..
"zadać potężne obrażenia.",
10, true}
}
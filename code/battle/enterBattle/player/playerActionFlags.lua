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
numberOfFlags = 7
playerActionFlags = {
    {"Zwykły atak", true, 1, 
        "Atak, który zadaje 10 punktów obrażeń jednemu wrogowi.",
        0, true},
    {"Magiczna bariera", true, 2,
        "Koszt: 10 PM. Wytwarza barierę ochronną, która zwiększa "..
        "współczynnik odporności na ataki wrogów. "..
        "Wielokrotne rzucanie tego zaklęcia osłabia jego działanie.",
        10, true},
    {"Atak magiczny", false, 3, 
        "Koszt: 5 PM. Potężny atak magiczny, który zadaje 20 punktów obrażeń "..
        "jednemu wrogowi.",
        5, false},
    {"Runa lecznicza", false, 4,
        "Koszt: 10 PM. Czar uleczający, który regeneruje do 100 punktów życia.",
        10, false},
    {"Magiczna strzała", false, 5,
        "Koszt: 10 PM. Użyj magii, aby zwiększyć strzałę "..
        "do olbrzymich rozmiarów i zadać potężne obrażenia.",
        10, false},
    {"Potężny atak lodowy", false, 6,
        "Koszt: 20 PM. Użyj potężnego magicznego ataku lodowego, "..
        "który zada olbrzymie obrażenia ogniowym istotom.",
        20, false},
    {"Potężny atak ogniowy", false, 7,
        "Koszt: 25 PM. Użyj potężnego magicznego ataku ogniowego, "..
        "który zada olbrzymie obrażenia lodowym istotom.",
        20, false},
}
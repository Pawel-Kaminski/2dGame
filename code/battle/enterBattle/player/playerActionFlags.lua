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
        "Koszt: 5 MP. Wytwarza barierę ochronną, która zwiększa "..
        "współczynnik odporności na ataki wrogów. "..
        "Zaklęcie działa najsilniej, gdy jest rzucone pierwszy raz podczas "..
        "walki.",
        10, true},
    {"Atak magiczny", false, 3, 
        "Koszt: 5 MP. Potężny atak magiczny, który zadaje 20 punktów obrażeń "..
        "jednemu wrogowi.",
        5, false},
    {"Runa lecznicza", false, 4,
        "Koszt: 10 MP. Czar uleczający, który regeneruje do 100 punktów życia.",
        10, false},
    {"Magiczna strzała", false, 5,
        "Koszt: 10 MP. Użyj magii, aby zwiększyć strzałę "..
        "do olbrzymich rozmiarów i zadać potężne obrażenia. "..
        "Magiczna strzała zadaje podwójne obrażenia strażnikom ognia i lodu.",
        10, false},
    {"Potężny atak lodowy", false, 6,
        "Koszt: 26 MP. Użyj potężnego magicznego ataku lodowego, "..
        "który natychmiast uśmierca ogniowe istoty. "..
        "Strażnicy lodu są odporni na działanie tego zaklęcia.",
        26, false},
    {"Potężny atak ogniowy", false, 7,
        "Koszt: 26 MP. Użyj potężnego magicznego ataku ogniowego, "..
        "który natychmiast uśmierca lodowe istoty. "..
        "Stażnicy ognia są odporni na działanie tego zaklęcia.",
        26, false},
}
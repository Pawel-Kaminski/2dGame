--1. name of quest
--2. description of quest
--3. should it be displayed?
--4. is it finished?
local quests = {
    {"Przyjacielska pomoc", "Usuń szkodniki z ogrodu Afedii", false, false},
    {"Lekarstwo dla Osigolda", "Osigold jest poważnie chory. Zdobądź dla niego kwitarykson - magiczną roślinę leczniczą",
    false, false},
    {"Tajemnicza epidemia", "Osoby mieszkające w wiosce zaczynają chorować. Porozmawiaj z Afedią, być może ona zna sposób na rozwiązanie tych problemów",
    false, false},
    {"Rozmowa z Tinaldiną", "Wiedźma Tinaldina mieszkająca w Mrocznym Lesie może wiedzieć coś więcej. Udaj się do Mrocznego Lasu i porozmawiaj z nią",
    false, false},
    {"Zwój z przepowiednią", "Znajdź zwój z przepowiednią napisaną w starożytnym języku i zanieś Tinaldinie",
    false, false},
    {"Strażnicy Powietrza", "Pokonaj stażników powietrza i zdobądź Artefakt Powietrza",
    false, false},
    {"Rozmowa z Lidenonem", "Uzyskaj wskazówki dotyczące taktyki od Lidenona",
    false, false},
    {"Strażnicy ognia", "Pokonaj strażników ognia i zdobądź Artefakt Ognia",
    false, false},
    {"Strażnicy Lodu", "Pokonaj strażników lodu i zdobądź Artefakt Lodu",
    false, false},
    {"Ołtarz Przeznaczenia", "Złóż zdobyte artefakty na Ołtarzu Przeznaczenia",
    false, false}
}

questsState = {}

function questsState:enter()
    local map2 = sti.new("assets/maps/new_map")
    map2:addCustomLayer("Background", 2)
    local background = map2.layers["Background"]
end

function questsState:update()
end

function questsState:draw()
end

function questsState:keypressed(key)
end
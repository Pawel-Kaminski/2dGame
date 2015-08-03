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
    map2 = sti.new("assets/maps/old_map")
    map2:addCustomLayer("Background", 2)
    background = map2.layers["Background"]
    background.sprites = {
        bg = {
            image = love.graphics.newImage("assets/sprites/listOfQuests.png"),
            x = 0,
            y = 0
        }
    }
    
    --function background:update(dt)
        --do nothing
    --end

    function background:draw()
        for _, sprite in pairs(self.sprites) do
            local x = math.floor(sprite.x)
            local y = math.floor(sprite.y)
            local r = sprite.r
            love.graphics.draw(sprite.image, x, y, r)
        end
    end
end

function questsState:update(dt)
end

function questsState:draw()
    map2:draw()
end

function questsState:keypressed(key)
end
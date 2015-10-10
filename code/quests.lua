--1. name of quest
--2. description of quest
--3. should it be displayed?
--4. is it finished?
local quests = {
    {"Przyjacielska pomoc", "Usuń szkodniki z ogrodu Afedii.", false, false},
    {"Lekarstwo dla Osigolda", "Osigold jest poważnie chory. Zdobądź dla niego kwitarykson - magiczną roślinę leczniczą.",
    false, false},
    {"Tajemnicza epidemia", "Osoby mieszkające w wiosce zaczynają chorować. Porozmawiaj z Afedią, być może ona zna sposób na rozwiązanie tych problemów.",
    false, false},
    {"Rozmowa z Tinaldiną", "Wiedźma Tinaldina mieszkająca w Mrocznym Lesie może wiedzieć coś więcej. Udaj się do Mrocznego Lasu i porozmawiaj z nią.",
    false, false},
    {"Zwój z przepowiednią", "Znajdź zwój z przepowiednią napisaną w starożytnym języku i zanieś Tinaldinie.",
    false, false},
    {"Strażnicy Powietrza", "Pokonaj stażników powietrza i zdobądź Artefakt Powietrza.",
    false, false},
    {"Rozmowa z Lidenonem", "Uzyskaj wskazówki dotyczące taktyki od Lidenona.",
    false, false},
    {"Strażnicy ognia", "Pokonaj strażników ognia i zdobądź Artefakt Ognia.",
    false, false},
    {"Strażnicy Lodu", "Pokonaj strażników lodu i zdobądź Artefakt Lodu.",
    false, false},
    {"Ołtarz Przeznaczenia", "Złóż zdobyte artefakty na Ołtarzu Przeznaczenia.",
    false, false}
}
local numberOfQuests = 10

--1. name of item
--2. how many are present in the inventory?
items = {
    {"mikstura lecznicza", 0},
    {"eliksir leczniczy", 0},
    {"antidotum", 0},
    {"trucizna", 0},
    {"eliksir magiczny", 0},
    {"tajemnicza roślina", 0},
    {"zwój zapisany w obcym języku", 0},
    {"Artefakt Ziemi", 0},
    {"Artefakt Powietrza", 0},
    {"Artefakt Ognia", 0},
    {"Artefakt Lodu", 0}
}
local numberOfItems = 11

questsState = {}

function questsState:enter()
    --menusMusic = love.audio.newSource("music/03_Unleashed.mp3")
    --love.audio.stop()
    --love.audio.play(menusMusic)
    changeMusic = false
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
            love.graphics.draw(sprite.image, x, y)
        end
    end
end

function questsState:update(dt)
end

function questsState:draw()
    map2:draw()
    local yPosition = 100
    --screenId is defined in map/keypressedMap.lua
    if screenId == 2 then
        love.graphics.setColor(255, 255, 255)
        love.graphics.printf(
            "Ekwipunek",
            100, 50, 2000, "left", 0)
        if items[1][2] == 0 and items[2][2] == 0 and items[3][2] == 0
            and items[4][2] == 0 and items[5][2] == 0 and items[6][2] == 0 then
                love.graphics.printf(
                    "Nie masz jeszcze żadnych przedmiotów",
                    100, 100, 2000, "left", 0)
        end
        for i=1, numberOfItems do
            if items[i][2] ~= 0 then
                love.graphics.printf(
                    items[i][1], 100, yPosition, 2000, "left", 0)
                love.graphics.printf(
                    items[i][2], 800, yPosition, 2000, "left", 0)
                yPosition = yPosition + 60
            end            
        end
    elseif screenId == 1 then
        love.graphics.printf(
            "Lista zadań - aktywne zadania są oznaczane kolorem żółtym, zadania ukończone - kolorem zielonym",
            100, 50, 2000, "left", 0)
        if not quests[1][3] and not quests[2][3] then
            love.graphics.printf(
                "Nie otrzymałeś jeszcze żadnych zadań",
                100, 100, 2000, "left", 0)
        end
        for i=1, numberOfQuests do
            if quests[i][3] then
                if quests[i][4] then
                    love.graphics.setColor(0, 255, 0)
                else
                    love.graphics.setColor(255, 255, 0)
                end
                love.graphics.printf(
                    quests[i][1], 100, yPosition, 2000, "left", 0)
                love.graphics.printf(
                    quests[i][2], 120, yPosition + 40, 2000, "left", 0)
                yPosition = yPosition + 100
            end
        end
    elseif screenId == 3 then
        love.graphics.printf(
            "Lista odblokowanych umiejętności - pokonywanie przeciwników "..
            "pozwala odblokowywać nowe umiejętności!",
            100, 50, 2000, "left", 0)
        for i=1, numberOfFlags do
            if playerActionFlags[i][2] then
                love.graphics.setColor(255, 255, 255)
            else
                love.graphics.setColor(128, 128, 128)
            end
            love.graphics.printf(
                playerActionFlags[i][1], 100, yPosition, 2000, "left", 0)
            love.graphics.printf(
                playerActionFlags[i][4], 120, yPosition + 40, 2000, "left", 0)
            yPosition = yPosition + 100
        end
    end
end

function questsState:keypressed(key, screenId)
    --if (key == 'l' and screenId == 2) or (key == 'q' and screenId == 1)
    --or (key == 's' and screenId == 3) then
    if key == 'l' or key == 'q' or key == 's' then
        Gamestate.switch(mapState)
    end
end

function activateQuest(number)
    quests[number][3] = true
end

function finishQuest(number)
    quests[number][4] = true
end

function isQuestFinished(number)
    if quests[number][4] then return true
    else return false
    end
end

function isQuestDisplayed(number)
    if quests[number][3] then return true
    else return false
    end
end
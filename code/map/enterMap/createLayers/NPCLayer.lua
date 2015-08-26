--WARNING: This file uses global variables: map, NPC

function createNPCLayer(mapId)
    --Layer created for displaying non-player characters
    if mapId == 1 then
        map:addCustomLayer("NPC", 3)
    else
        map:addCustomLayer("NPC", 2)
    end
    NPC = map.layers["NPC"]

    if mapId == 1 then
    NPC.sprites = {
        teleport = {
            image = love.graphics.newImage(
                "assets/sprites/teleporter_active_scaled.gif"),
            x = 0,
            y = 0
        },
        Afedia = {
            image = love.graphics.newImage(
                "assets/sprites/npc/1-Afedia/Base2_used.png"),
            x = 300,
            y = 540,
            dialog = "Witaj, jestem Afedia. Proszę, pomóż mi pozbyć się "..
                "szkodników z mojego ogrodu.",
            dialog2 = "Bardzo dziękuję ci za pomoc!",
            dialog4 = "Kwitarykson nie wyleczył Osigolda? Nie mogę w to "..
                "uwierzyć... Boję się... Proszę, przyjmij ten artefakt. ".. 
                "To magiczny Artefakt Ziemi. Otrzymałam go od mojej babci. "..
                "Był on przekazywany w mojej rodzinie z pokolenia "..
                "na pokolenie. Według legendy miał on pomóc ludności wioski, "..
                "gdy nadejdą trudne chwile. Niestety nie wiem, "..
                "jak może ci się przydać. Udaj się do Mrocznego Lasu "..
                "i porozmawiaj z wiedźmą Tinaldiną. "..
                "Ona może wiedzieć coś więcej.",
            quest = "Usuń szkodniki z ogrodu Afedii!",
            quest2 = "Wiedźma Tinaldina mieszkająca w Mrocznym Lesie może "..
                "wiedzieć coś więcej. Udaj się do Mrocznego Lasu "..
                "i porozmawiaj z nią."
        },
        Osigold = {
            image = love.graphics.newImage(
                "assets/sprites/npc/2-Osigold/118053.png"),
            x = 1020,
            y = 600,
            dialog = "Witaj, jestem Osigold.",
            dialog2 = "Witaj, jestem Osigold. Bardzo źle się czuję. "..
                "Czy mogę liczyć na twoją pomoc? Gdzieś w naszej wiosce "..
                "powinna rosnąć roślina lecząca zwana kwitaryksonem. "..
                "Roślina ta ma magiczne właściwości, "..
                "a jej spożycie potrafi uleczyć wszystkie choroby. "..
                "Proszę, odnajdź ją, a następnie przynieś ją do mnie. "..
                "Lecz uważaj na potwory!",
            dialog3 = "Tajemnicza roślina, którą znalazłaś to kwitarykson! "..
                "Dziękuję ci bardzo, że przynosisz ją do mnie. "..
                "Ona na pewno mnie uleczy! (ZJADA ROŚLINĘ) "..
                "Zjadłem roślinę, ale nic się nie dzieje! To może... "..
                "To może oznaczać tylko jedno... Dawno, dawno temu żył "..
                "pewien  zły czarnoksiężnik, który nazywał się "..
                "Neil Merzenantar. Sprowadził on strach i terror na "..
                "ten świat. Pewnego dnia zjawił się bohaterski wojownik, "..
                "który wygnał czarnoksiężnika w zaświaty. "..
                "Lecz wieszczka ostrzegała: Neil Merzentantar powróci "..
                "z zaświatów, a wydarzenie to będzie poprzedzone "..
                "dwoma wydarzeniami: kwitarykson straci swoją magiczną moc, "..
                "a ludzie, jedna osoba po drugiej, zaczną chorować. "..
                "Jeśli legenda jest prawdziwa, nie pozostało wiele czasu. "..
                "Afedia może znać sposób na rozwiązanie tych problemów.",
            quest = "Osigold jest poważnie chory. Zdobądź dla niego "..
                "kwitarykson - magiczną roślinę leczniczą.",
            quest2 = "Osoby mieszkające w wiosce zaczynają chorować. "..
                "Porozmawiaj z Afedią, być może ona zna sposób na "..
                "rozwiązanie tych problemów."
        },
        Deatlana = {
            image = love.graphics.newImage(
                "assets/sprites/npc/3-Deatlana/Deatlana.png"),
            x = 840,
            y = 600,
            dialog = "Witaj, jestem Deatlana.",
            dialog2 = "Witaj, jestem Deatlana. Martwię się o Osigolda. "..
                        "Ostatnio nie czuje się najlepiej.",
            dialog3 = "Czuję się bardzo źle. Proszę spróbuj pomóc mi "..
                "i Osigoldowi."
        }
    }
    elseif mapId == 2 then
        NPC.sprites = {
            teleport = {
                image = love.graphics.newImage(
                    "assets/sprites/teleporter_active_scaled.gif"),
                    x = 0,
                    y = 0
            },
            Tinaldina = {
                image = love.graphics.newImage(
                    "assets/sprites/npc/4-Tinaldina/scaled.png"),
                x = 900,
                y = 660,
                dialog5 = "Wyczuwam, że masz przy sobie przedmiot emanujący "..
                    "poteżną energią magiczną. Artefakt Ziemi, nie mylę się? "..
                    "Witaj, mam na imię Tinaldina. "..
                    "My wiedźmy potrafimy wyczuć, jak energia magiczna "..
                    "płynie przez ten świat. Czuję, że on wrócił... "..
                    "Neil Merzenantar, przerażający czarnoksiężnik, "..
                    "powrócił. "..
                    "Ten artefakt może być kluczem "..
                    "do ocalenia twojej wioski. Nie wiem, jakie może mieć "..
                    "zastosowanie, ale stare księgi wspominają "..
                    "o tajemnicznym zwoju z przepowiednią związaną z "..
                    "artefaktami. Ale to tylko legenda... Dla twojej wioski "..
                    "nie ma już nadziei.",
                quest = "Znajdź zwój z przepowiednią napisaną w starożytnym "..
                    "języku i zanieś Tinaldinie."
            },
        }
    end

    function NPC:update(dt)
    end

    function NPC:draw()
        for _, sprite in pairs(self.sprites) do
            local x = math.floor(sprite.x)
            local y = math.floor(sprite.y)
            love.graphics.draw(sprite.image, x, y)
        end
    end
end
--WARNING: This file uses global variables: map, NPC

function createNPCLayer()
    map:addCustomLayer("NPC", 5) --Layer created for displaying non-player characters
    NPC = map.layers["NPC"]
    NPC.sprites = {
        Afedia = {
            image = love.graphics.newImage("assets/sprites/npc/1-Afedia/Base2_used.png"),
            x = 300,
            y = 540,
            dialog = "Witaj, jestem Afedia. Proszę, pomóż mi pozbyć się szkodników z mojego ogrodu.",
            dialog2 = "Bardzo dziękuję ci za pomoc!",
            quest = "Usuń szkodniki z ogrodu Afedii!"
        },
        Osigold = {
            image = love.graphics.newImage("assets/sprites/npc/2-Osigold/118053.png"),
            x = 1020,
            y = 600,
            dialog = "Witaj, jestem Osigold.",
            dialog2 = "Witaj, jestem Osigold. Bardzo źle się czuję. Czy mogę liczyć na twoją pomoc? Gdzieś w naszej wiosce powinna rosnąć roślina lecząca zwana kwitaryksonem. Roślina ta ma magiczne właściwości, a jej spożycie potrafi uleczyć wszystkie choroby. Proszę, odnajdź ją, a następnie przynieś ją do mnie. Lecz uważaj na potwory!",
            quest = "Osigold jest poważnie chory. Zdobądź dla niego kwitarykson - magiczną roślinę leczniczą."
        },
        Deatlana = {
            image = love.graphics.newImage("assets/sprites/npc/3-Deatlana/Deatlana.png"),
            x = 840,
            y = 600,
            dialog = "Witaj, jestem Deatlana.",
            dialog2 = "Witaj, jestem Deatlana. Martwię się o Osigolda. Ostatnio nie czuje się najlepiej."
        }
    }

    function NPC:update(dt)
    end

    function NPC:draw()
        for _, sprite in pairs(self.sprites) do
            local x = math.floor(sprite.x)
            local y = math.floor(sprite.y)
            local r = sprite.r
            love.graphics.draw(sprite.image, x, y, r)
        end
    end
end
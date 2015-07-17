function createNPCsLayer()
    map:addCustomLayer("NPCs", 5) --Layer created for displaying non-player characters
    NPCs = map.layers["NPCs"]
    NPCs.sprites = {
        npc1 = {
            image = love.graphics.newImage("assets/sprites/man2.png"),
            x = 600,
            y = 600,
            r = 0,
            dialog = "Jestem mało znaczącą postacią. Nie dam ci żadnego zadania do zrobienia. I zawsze jak do mnie przyjdziesz, będę mówił tę samą kwestię.",
            important = false
        },
        npc2 = {
            image = love.graphics.newImage("assets/sprites/man2.png"),
            x = 1020,
            y = 900,
            r = 0,
            dialog = "Proszę, pomóż nam! Groźne bestie terroryzują naszą wioskę. Tylko ty możesz nam pomóc. Jestem postacią, która daje ci zadanie do zrobienia. Jeśli je zrobisz i wrócisz do mnie, powiem ci coś innego niż teraz.",
            important = true,
            quest = "Właśnie otrzymałeś zadanie. Pozbądź się wszystkich bestii znajdujących się na mapie! Po wykonaniu zadania poinformuj o jego wykonaniu zleceniodawcę."
        },
        Afedia = {
            image = love.graphics.newImage("assets/sprites/npc/1-Afedia/Base2_used.png"),
            x = 300,
            y = 540,
            r = 0,
            dialog = "Witaj, jestem Afedia. Proszę, pomóż mi pozbyć się szkodników z mojego ogrodu.",
            important = true,
            quest = "Usuń szkodniki z ogrodu Afedii!"
        },
        Osigold = {
            image = love.graphics.newImage("assets/sprites/npc/2-Osigold/118053.png"),
            x = 1020,
            y = 600,
            r = 0,
            dialog = "Witaj, jestem Osigold.",
            important = false
        },
        Deatlana = {
            image = love.graphics.newImage("assets/sprites/npc/3-Deatlana/Deatlana.png"),
            x = 900,
            y = 600,
            r = 0,
            dialog = "Witaj, jestem Deatlana.",
            important = false
        }
    }

    function NPCs:update(dt)
    end

    function NPCs:draw()
        for _, sprite in pairs(self.sprites) do
                local x = math.floor(sprite.x)
                local y = math.floor(sprite.y)
                local r = sprite.r
                love.graphics.draw(sprite.image, x, y, r)
        end
    end
end
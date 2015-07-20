function createNPCLayer()
    map:addCustomLayer("NPC", 5) --Layer created for displaying non-player characters
    NPC = map.layers["NPC"]
    NPC.sprites = {
        Afedia = {
            image = love.graphics.newImage("assets/sprites/npc/1-Afedia/Base2_used.png"),
            x = 300,
            y = 540,
            dialog = "Witaj, jestem Afedia. Proszę, pomóż mi pozbyć się szkodników z mojego ogrodu.",
            quest = "Usuń szkodniki z ogrodu Afedii!"
        },
        Osigold = {
            image = love.graphics.newImage("assets/sprites/npc/2-Osigold/118053.png"),
            x = 1020,
            y = 600,
            dialog = "Witaj, jestem Osigold.",
        },
        Deatlana = {
            image = love.graphics.newImage("assets/sprites/npc/3-Deatlana/Deatlana.png"),
            x = 900,
            y = 600,
            dialog = "Witaj, jestem Deatlana.",
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
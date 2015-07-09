function mapState:enter()
    --activeEnemySprite contains sprite of enemy on which player entered
    activeEnemySprite = null
    sound = love.audio.newSource("music/Otto_Halmen_Sylvan_Waltz_1.mp3")
    love.audio.play(sound)
    sound:setLooping(true)

    map = sti.new("assets/maps/new_map") --Load a map exported to Lua from Tiled
    map:addCustomLayer("Sprite Layer", 3) -- Create a Custom Layer
    spriteLayer = map.layers["Sprite Layer"] -- Add data to Custom Layer
    spriteLayer.sprites = {
        player = {
            image = love.graphics.newImage("assets/sprites/ViviM.png"),
            x = playerPositionX,
            y = playerPositionY,
            r = 0       
        }
    }
    
    map:addCustomLayer("Enemies", 4) --Layer created for displaying enemies
    enemies = map.layers["Enemies"]
    dorver = love.graphics.newImage("assets/sprites/enemies/2-creature/creature.png")
    thornbush = love.graphics.newImage("assets/sprites/enemies/1-thornbush/thornbush_used.png")
    enemies.sprites = {
        enemy = {
            image = dorver,
            x = 1200,
            y = 120,
            r = 0,
            active = active1
        },
        enemy2 = {
            image = dorver,
            x = 1200,
            y = 300,
            r = 0,
            active = active2
        },
        enemy3 = {
            image = thornbush,
            x = 600,
            y = 360,
            r = 0,
            active = active3
        },
    }

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
            x = 600,
            y = 900,
            r = 0,
            dialog = "Witaj, jestem Afedia.",
            important = false
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

    map:addCustomLayer("Talking", 7)
    Talking = map.layers["Talking"]
    Talking.sprites = {
        dialogBackground = { 
            image = love.graphics.newImage("assets/sprites/dialogBackground.png"),
            x = 480,
            y = 100,
            r = 0,
            active = false
        },
        quest = {
            image = love.graphics.newImage("assets/sprites/quest.png"),
            x = 480,
            y = 200,
            r = 0,
            active = false
        }
    }
    
    function Talking:update(dt)
    end
   
    --playerIsTalking = true
    function Talking:draw()
        for _, sprite in pairs(self.sprites) do
            if sprite.active ~= false then
                local x = math.floor(sprite.x)
                local y = math.floor(sprite.y)
                local r = sprite.r
                love.graphics.draw(sprite.image, x, y, r)
            end
        end
    end

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

    -- Update callback for Custom Layer
    function spriteLayer:update(dt)
        self.sprites.player.x = playerPositionX
        self.sprites.player.y = playerPositionY
    end

    -- Draw callback for Custom Layer
    function spriteLayer:draw()
        --pairs function iterates over all elements in a table
        for _, sprite in pairs(self.sprites) do
                local x = math.floor(sprite.x)
                local y = math.floor(sprite.y)
                local r = sprite.r
                love.graphics.draw(sprite.image, x, y, r)
        end
    end

    -- Update callback for Enemies
    function enemies:update(dt)
    end

    -- Draw callback for Custom Layer
    function enemies:draw()
        --pairs function iterates over all elements in a table
        for _, sprite in pairs(self.sprites) do
            if sprite.active ~= false then
                local x = math.floor(sprite.x)
                local y = math.floor(sprite.y)
                local r = sprite.r
                love.graphics.draw(sprite.image, x, y, r)
            end
        end
    end
end
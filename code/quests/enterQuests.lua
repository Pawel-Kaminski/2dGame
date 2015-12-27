function enterQuests()
    changeMusic = false
    if screenId == 4 then
        local soundtrack = love.audio.newSource(
            "music/other_themes/Raindrops_of_a_Dream.mp3")
        love.audio.play(soundtrack)
        soundtrack:setLooping(true)
    end
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

    function background:draw()
        for _, sprite in pairs(self.sprites) do
            local x = math.floor(sprite.x)
            local y = math.floor(sprite.y)
            love.graphics.draw(sprite.image, x, y)
        end
    end
end

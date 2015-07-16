function drawMap()
    map:draw()
    if playerIsTalking then
        love.graphics.setColor(255, 255, 255)
        love.graphics.printf(selectedNPC.dialog, 510, 130, 900, "left", 0)
    elseif Talking.sprites.quest.active then
        love.graphics.setColor(0, 0, 0)
        love.graphics.printf(selectedNPC.quest, 620, 440, 600, "left", 0)
    end
end
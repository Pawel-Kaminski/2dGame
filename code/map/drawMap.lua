--argument talking describes if player is talking (true or false)
function drawMap(talking)
    map:draw()
    if talking then
        love.graphics.setColor(255, 255, 255)
        love.graphics.printf(
            selectedNPC.dialog,
            510, 130, 900, "left", 0)
    elseif Talking.sprites.quest.active then
        love.graphics.setColor(0, 0, 0)
        love.graphics.printf(
            selectedNPC.quest,
            620, 440, 600, "left", 0)
    end
end
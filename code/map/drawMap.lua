--Does not use global variables

--argument talking describes if player is talking (true or false)
--argument npc describes selected non-player character
function drawMap(talking, npc)
    map:draw()
    if talking then
        love.graphics.setColor(255, 255, 255)
        love.graphics.printf(
            npc.dialog,
            510, 130, 900, "left", 0)
    elseif Talking.sprites.quest.active then
        love.graphics.setColor(0, 0, 0)
        love.graphics.printf(
            npc.quest,
            620, 440, 600, "left", 0)
    end
end
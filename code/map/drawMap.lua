--Uses global variables talking, Talking

--argument talking describes if player is talking (true or false)
--argument npc describes selected non-player character
function drawMap(talking, npc)
    map:draw()
    if talking then
        text = npc.dialog
        mission = npc.quest

        --If player has found a misterious plant, change dialogues
        if isQuestDisplayed(2) and items[6][2] == 1 and npc.dialog3 ~= null then
            text = npc.dialog3
            finishQuest(2)
            activateQuest(3)
            mission = npc.quest2
            if not isQuestDisplayed(3) then
                doNotDisplay = false
            end
        --If first quest is finished, change dialogues
        elseif isQuestFinished(1) then
            text = npc.dialog2
        end
        love.graphics.setColor(255, 255, 255)
        love.graphics.printf(
            text,
            510, 130, 900, "left", 0)
    elseif Talking.sprites.quest.active then
        love.graphics.setColor(0, 0, 0)
        love.graphics.printf(
            mission,
            620, 440, 600, "left", 0)
    end
end
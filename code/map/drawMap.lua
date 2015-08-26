--Uses global variables talking, Talking

--argument talking describes if player is talking (true or false)
--argument npc describes selected non-player character
function drawMap(talking, npc)
    map:draw()
    if talking then
        text = npc.dialog
        mission = npc.quest

        if isQuestDisplayed(3) and npc.dialog4 ~= null then
            text = npc.dialog4
            finishQuest(3)
            if not isQuestDisplayed(4) then
                doNotDisplay = false
            end
            activateQuest(4)
            mission = npc.quest2
        --If player has found a misterious plant, change dialogues
        elseif isQuestDisplayed(2) and items[6][2] == 1 and npc.dialog3 ~= null then
            text = npc.dialog3
            finishQuest(2)
            if not isQuestDisplayed(3) then
                doNotDisplay = false
            end
            mission = npc.quest2
        --If first quest is finished, change dialogues
        elseif isQuestFinished(1) then
            text = npc.dialog2
        end
        --In order to add teleport to NPCLayer
        if text == null then
            text = "To jest teleport, który pozwoli ci opuścić mapę. "..
                "Naciśnij ENTER, aby użyć."
            teleportIsActive = true
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
        love.graphics.printf(
            "Naciśnij ENTER, aby zamknąć to okno",
            620, 840, 600, "left", 0)
    else
        teleportIsActive = false
    end
end
--argument talking describes if player is talking (true or false)
--argument npc describes selected non-player character
function drawMap(talking, npc)
    map:draw()
    if talking then
        text = npc.dialog
        mission = npc.quest
        if isQuestDisplayed(9) and npc.dialog10 ~= null and items[11][2] == 1 then
            text = npc.dialog10
            finishQuest(9)
            if not isQuestDisplayed(10) then
                doNotDisplay = false
            end
            mission = npc.quest3
        elseif isQuestDisplayed(8) and npc.dialog9 ~= null and items[10][2] == 1 then
            text = npc.dialog9
            finishQuest(8)
            if not isQuestDisplayed(9) then
                doNotDisplay = false
            end
            mission = npc.quest2
        elseif isQuestDisplayed(7) and npc.dialog8 ~= null then
            text = npc.dialog8
            finishQuest(7)
            if not isQuestDisplayed(8) then
                doNotDisplay = false            
            end
            mission = npc.quest
        elseif isQuestDisplayed(6) and npc.dialog7 ~= null and items[9][2] == 1 then
            text = npc.dialog7
            finishQuest(6)
            if not isQuestDisplayed(7) then
                doNotDisplay = false
            end
            mission = npc.quest3
        elseif isQuestDisplayed(5) and npc.dialog6 ~= null and items[7][2] == 1 then
            text = npc.dialog6
            finishQuest(5)
            if not isQuestDisplayed(6) then
                doNotDisplay = false
            end
            mission = npc.quest2
        elseif isQuestDisplayed(4) and npc.dialog5 ~= null then
            text = npc.dialog5
            finishQuest(4)
            if not isQuestDisplayed(5) then
                doNotDisplay = false
            end
            mission = npc.quest
        elseif isQuestDisplayed(3) and npc.dialog4 ~= null then
            text = npc.dialog4
            finishQuest(3)
            if not isQuestDisplayed(4) then
                doNotDisplay = false
            end
            mission = npc.quest2
        --If player has found a misterious plant, change dialogues
        elseif isQuestDisplayed(2) and items[6][2] == 1 
            and npc.dialog3 ~= null then
                text = npc.dialog3
                finishQuest(2)
		items[6][2] = 0
                if not isQuestDisplayed(3) then
                    doNotDisplay = false
                end
                mission = npc.quest2
        --If first quest is finished, change dialogues
        elseif isQuestFinished(1) and npc.dialog2 ~= null then
            text = npc.dialog2
        end
        --In order to add teleport to NPCLayer:
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
        love.graphics.setColor(255, 255, 255)
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

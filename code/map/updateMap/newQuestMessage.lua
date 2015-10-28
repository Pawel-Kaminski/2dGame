function newQuestMessage()
--1. selectedNPC ~= null prevents game from crashing
-----if variable selectedNPC is null while checking 2
--2. selectedNPC.quest - 
-----quest pop-up should be display only when NPC has a quest
--3. not playerIsTalking - pop-up shouldn't collide with NPC's dialogues
--4. not doNotDisplay - this lets me hide pop-up when it's not needed anymore
--THIS FUNCTION MUST BE UPDATED AFTER CREATING NEW QUESTS
    if selectedNPC ~= null and selectedNPC.quest
    and not playerIsTalking and not doNotDisplay then
        if selectedNPC == NPC.sprites.Afedia and not isQuestDisplayed(1) then
            Talking.sprites.quest.active = true
            activateQuest(1)
        elseif selectedNPC == NPC.sprites.Osigold and isQuestFinished(1) --then
            and not isQuestDisplayed(2) then
                Talking.sprites.quest.active = true
                activateQuest(2)
        elseif selectedNPC == NPC.sprites.Osigold and isQuestFinished(2)
            and not isQuestDisplayed(3) then
                Talking.sprites.quest.active = true
                activateQuest(3)
        elseif selectedNPC == NPC.sprites.Afedia and isQuestFinished(3)
            and not isQuestDisplayed(4) then
                Talking.sprites.quest.active = true
                activateQuest(4)
                if items[8][2] == 0 then items[8][2] = 1 end
                map2locked = false
        elseif selectedNPC == NPC.sprites.Tinaldina and isQuestFinished(4)
            and not isQuestDisplayed(5) then
                Talking.sprites.quest.active = true
                activateQuest(5)
        elseif selectedNPC == NPC.sprites.Tinaldina and isQuestFinished(5)
            and not isQuestDisplayed(6) then
                Talking.sprites.quest.active = true
                activateQuest(6)
        elseif selectedNPC == NPC.sprites.Tinaldina and isQuestFinished(6)
            and not isQuestDisplayed(7) then
                Talking.sprites.quest.active = true
                activateQuest(7)
                map3locked = false
        elseif selectedNPC == NPC.sprites.Lidenon and isQuestFinished(7)
            and not isQuestDisplayed(8) then
                Talking.sprites.quest.active = true
                activateQuest(8)
        elseif selectedNPC == NPC.sprites.Lidenon and isQuestFinished(8)
            and not isQuestDisplayed(9) then
                Talking.sprites.quest.active = true
                activateQuest(9)
        elseif selectedNPC == NPC.sprites.Lidenon and isQuestFinished(9)
            and not isQuestDisplayed(10) then
                Talking.sprites.quest.active = true
                activateQuest(10)
                map4locked = false
        end
    end
end
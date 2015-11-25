require "quests.defineQuests"
require "quests.enterQuests"
require "quests.drawQuests"

defineQuests()

--1. name of item
--2. how many are present in the inventory?
items = {
    {"mikstura lecznicza", 0},
    {"eliksir leczniczy", 0},
    {"mikstura szybkości", 0},
    {"mikstura obronna", 0},
    {"eliksir magiczny", 0},
    {"tajemnicza roślina", 0},
    {"zwój zapisany w obcym języku", 0},
    {"Artefakt Ziemi", 0},
    {"Artefakt Powietrza", 0},
    {"Artefakt Ognia", 0},
    {"Artefakt Lodu", 0}
}
local numberOfItems = 11

questsState = {}

function questsState:enter()
    enterQuests()
end

function questsState:update(dt)
end

function questsState:draw()
    drawQuests(numberOfItems)
end

function questsState:keypressed(key, screenId)
    --if (key == 'l' and screenId == 2) or (key == 'q' and screenId == 1)
    --or (key == 's' and screenId == 3) then
    if key == 'l' or key == 'q' or key == 's' then
        Gamestate.switch(mapState)
    end
end

function activateQuest(number)
    quests[number][3] = true
end

function finishQuest(number)
    quests[number][4] = true
end

function isQuestFinished(number)
    if quests[number][4] then return true
    else return false
    end
end

function isQuestDisplayed(number)
    if quests[number][3] then return true
    else return false
    end
end
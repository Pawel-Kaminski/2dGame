function drawQuests(numberOfItems)
    map2:draw()
    local yPosition = 100
    --screenId is defined in map/keypressedMap.lua
    if screenId == 2 then
        love.graphics.setColor(255, 255, 255)
        love.graphics.printf(
            "Ekwipunek",
            100, 50, 2000, "left", 0)
        if items[1][2] == 0 and items[2][2] == 0 and items[3][2] == 0
            and items[4][2] == 0 and items[5][2] == 0 and items[6][2] == 0 then
                love.graphics.printf(
                    "Nie masz jeszcze żadnych przedmiotów",
                    100, 100, 2000, "left", 0)
        end
        for i=1, numberOfItems do
            if items[i][2] ~= 0 then
                love.graphics.printf(
                    items[i][1], 100, yPosition, 2000, "left", 0)
                love.graphics.printf(
                    items[i][2], 800, yPosition, 2000, "left", 0)
                yPosition = yPosition + 60
            end            
        end
    elseif screenId == 1 then
        love.graphics.printf(
            "Lista zadań - aktywne zadania są oznaczane kolorem żółtym, "..
            "zadania ukończone - kolorem zielonym",
            100, 50, 2000, "left", 0)
        if not quests[1][3] and not quests[2][3] then
            love.graphics.printf(
                "Nie otrzymałeś jeszcze żadnych zadań",
                100, 100, 2000, "left", 0)
        end
        for i=1, numberOfQuests do
            if quests[i][3] then
                if quests[i][4] then
                    love.graphics.setColor(0, 255, 0)
                else
                    love.graphics.setColor(255, 255, 0)
                end
                love.graphics.printf(
                    quests[i][1], 100, yPosition, 2000, "left", 0)
                love.graphics.printf(
                    quests[i][2], 120, yPosition + 40, 2000, "left", 0)
                yPosition = yPosition + 100
            end
        end
    elseif screenId == 3 then
        love.graphics.printf(
            "Lista odblokowanych umiejętności - pokonywanie przeciwników "..
            "pozwala odblokowywać nowe umiejętności!",
            100, 50, 2000, "left", 0)
        for i=1, numberOfFlags do
            if playerActionFlags[i][2] then
                love.graphics.setColor(255, 255, 255)
            else
                love.graphics.setColor(128, 128, 128)
            end
            love.graphics.printf(
                playerActionFlags[i][1], 100, yPosition, 2000, "left", 0)
            love.graphics.printf(
                playerActionFlags[i][4], 120, yPosition + 40, 2000, "left", 0)
            yPosition = yPosition + 100
        end
    end
end
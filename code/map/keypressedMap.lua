--WARNING: This file uses global variables:
--playerPositionX, playerPositionY, doNotDisplay, Talking

function keypressedMap(key)
    if key == "right" then
        --player should not be able to go beyond the end of the screen
        if playerPositionX < 1860 then
            playerPositionX = playerPositionX + 60
        end
    elseif key == "left" then
        if playerPositionX > 0 then
            playerPositionX = playerPositionX - 60
        end
    elseif key == "down" then
        if playerPositionY < 1020 then
            playerPositionY = playerPositionY + 60
        end
    elseif key == "up" then
        if playerPositionY > 0 then
            playerPositionY = playerPositionY - 60
        end
    elseif key == 'l' then
        displayItems = false
        Gamestate.switch(questsState)
    elseif key == 'q' then
        displayItems = true
        Gamestate.switch(questsState)
    end
    if Talking.sprites.quest.active then
        doNotDisplay = true
        Talking.sprites.quest.active = false
    end
end
--WARNING: This file uses global variables:
--playerPositionX, playerPositionY, doNotDisplay, Talking

function keypressedMap(key)
    if teleportIsActive and key == "return" then
        teleportIsActive = false
        playerIsTalking = false
        playerPositionX = 60 ---Set position of a player on x axis
        playerPositionY = 120 ---Set position of a player on y axis
        Gamestate.switch(mapSelectionState)
    end
    if not Talking.sprites.quest.active then
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
    end
    if Talking.sprites.quest.active and key == "return" then
        doNotDisplay = true
        Talking.sprites.quest.active = false
    end
end
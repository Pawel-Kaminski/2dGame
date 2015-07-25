--WARNING: This file uses global variables:
--arrowY

function lose(key, arrowPositionY)
    if key == "down" then
        if arrowPositionY < 820 then
            arrowY = arrowPositionY + 30
        else
            arrowY = 790
        end
    elseif key == "up" then
        if arrowPositionY > 790 then
            arrowY = arrowPositionY - 30
        else
            arrowY = 820
        end
    elseif key == "return" then
        if arrowPositionY == 820 then
            love.event.quit()
        elseif arrowPositionY == 790 then
            love.audio.stop()
            Gamestate.switch(battleState)
        end
    end
end
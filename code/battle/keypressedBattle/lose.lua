function lose(key)
    if key == "down" then
        if arrowY < 820 then
            arrowY = arrowY + 30
        else
            arrowY = 790
        end
    elseif key == "up" then
        if arrowY > 790 then
            arrowY = arrowY - 30
        else
            arrowY = 820
        end
    elseif key == "return" then
        if arrowY == 820 then
            love.event.quit()
        elseif arrowY == 790 then
            love.audio.stop()
            Gamestate.switch(battleState)
        end
    end
end
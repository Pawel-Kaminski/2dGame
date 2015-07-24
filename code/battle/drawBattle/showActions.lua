--WARNING: This file uses global variables:
--displayingMenu, lastPositionY, actions

function showActions(selected)
    love.graphics.printf(actions[selected][4], 1000, 915, 900, "left", 0)
    displayingMenu = false
    lastPositionY = 915
    local countActions = 0
    for _, action in pairs(actions) do
        countActions = countActions + 1
    end
    for i=1, countActions do
        if actions[i][5] > Player.magicPoints then
            actions[i][6] = false
            love.graphics.setColor(139, 137, 137)
        else
            actions[i][6] = true
            color(lastPositionY - 15)
        end
        displayAction(actions[i][1], lastPositionY)
        lastPositionY = lastPositionY + 30
    end
end
--WARNING: This file uses global variables:
--displayingMenu, lastPositionY, actions

function color(expectedValueY)
    if arrowY == expectedValueY then
        love.graphics.setColor(255, 0, 0) --red colour
    else
        love.graphics.setColor(255, 255, 255) --white colour
    end
end

function color2(expectedValueX, expectedValueY)
    if arrowX == expectedValueX and arrowY == expectedValueY then
        love.graphics.setColor(255, 0, 0) --red colour
    else
        love.graphics.setColor(255, 255, 255) --white colour
    end
end

function writeDescription()
    love.graphics.printf(
        playerActionFlags[selectedAction][4],
        1000, 915, 900, "left", 0)
end

--TODO: descriptions are incorrect
function showActions(selected)
    --display long description of the action
    if selected ~= null then
        local tmp = selectedAction
        for i=1, tmp do
            local action = playerActionFlags[i]
            if not action[2] then
                tmp = tmp + 1
            end
        end
        --if pcall(writeDescription) then
        if tmp <= 7 then
            love.graphics.printf(
                playerActionFlags[tmp][4],
                1000, 915, 900, "left", 0) --else end
        end
    else
        love.graphics.printf(
            "Nie masz wystarczającej ilość punktów magicznych!",
            1000, 915, 900, "left", 0)
    end
    displayingMenu = false
    local lastPositionX = 150
    local lastPositionY = 915 --do not change!
    local countActions = 0
    for _, action in pairs(actions) do
        countActions = countActions + 1
    end
    for i = 1, countActions do --for all unlocked actions
        --check if player has enough magic points
        if actions[i][5] > Player.magicPoints then
            actions[i][6] = false
            love.graphics.setColor(139, 137, 137)
        else
            actions[i][6] = true
            color2(lastPositionX - 60, lastPositionY - 15)
        end
        displayAction(actions[i][1], lastPositionX, lastPositionY)
        if i == 5 then
            lastPositionX = 400
            lastPositionY = 915
        else
            lastPositionY = lastPositionY + 30
        end
    end
end
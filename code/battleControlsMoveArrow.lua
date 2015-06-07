--Position 1: x = 1270, y = 300
--Position 2: x = 1480, y = 360
--Position 3: x = 1270, y = 480

function moveArrowDown()
     if arrowY == 300 then
        if not isDead(secondEnemy) then
            arrowX = 1480 arrowY = 360
        else
            arrowX = 1270 arrowY = 480
        end
     elseif arrowY == 360 then
        if not isDead(thirdEnemy) then
            arrowX = 1270 arrowY = 480
        else
            arrowX = 1270 arrowY = 300
        end
     elseif arrowY == 480 then
        if not isDead(firstEnemy) then
            arrowX = 1270 arrowY = 300
        else
            arrowX = 1480 arrowY = 360
        end
    end
end

function moveArrowUp()
     if arrowY == 300 then
        if not isDead(thirdEnemy) then
            arrowX = 1270 arrowY = 480
        else
            arrowX = 1480 arrowY = 360
        end
     elseif arrowY == 360 then
        if not isDead(firstEnemy) then
            arrowX = 1270 arrowY = 300
        else
            arrowX = 1270 arrowY = 480
        end
     elseif arrowY == 480 then
        if not isDead(secondEnemy) then
            arrowX = 1480 arrowY = 360
        else
            arrowX = 1270 arrowY = 300
        end
    end
end
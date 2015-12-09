function setArrow()
    if not isDead(firstEnemy) then
        arrowX = 1270
        arrowY = 300
    elseif not isDead(secondEnemy) then
        arrowX = 1480
        arrowY = 360
    else
        arrowX = 1270
        arrowY = 480
    end
end
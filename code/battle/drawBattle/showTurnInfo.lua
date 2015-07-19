function showTurnInfo()
    love.graphics.printf(
    "Tura gracza za: "..Player.remainingWaitingTime,
    150, 715, 500, "left", 0)
    if battleSpriteLayer.sprites.enemy1.active then
        love.graphics.printf(
        "Tura przeciwnika - "..firstEnemy.name.." za: "..firstEnemy.remainingWaitingTime,
        150, 745, 1000, "left", 0)
    end
    if battleSpriteLayer.sprites.enemy2.active then
        love.graphics.printf(
        "Tura przeciwnika - "..secondEnemy.name.." za: "..secondEnemy.remainingWaitingTime,
        150, 775, 1000, "left", 0)
    end
    if battleSpriteLayer.sprites.enemy3.active then
        love.graphics.printf(
        "Tura przeciwnika - "..thirdEnemy.name.." za: "..thirdEnemy.remainingWaitingTime,
        150, 805, 1000, "left", 0)
    end
end
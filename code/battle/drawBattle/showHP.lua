function showHP()
    love.graphics.printf(
        Player.healthPoints.."/"..Player.maxHealth,
        153, 23, 200, "left", 0)
    love.graphics.printf(
        Player.magicPoints.."/"..Player.maxMagic,
        173, 58, 200, "left", 0)

    if battleSpriteLayer.sprites.enemy1.active then
        love.graphics.printf(
            firstEnemy.healthPoints.."/"..firstEnemy.maxHealth,
            1213, 23, 200, "left", 0)
        love.graphics.printf(
            firstEnemy.magicPoints.."/"..firstEnemy.maxMagic,
            1233, 58, 200, "left", 0)
        love.graphics.printf(
            firstEnemy.name,
            1090, 80, 1000, "left", 0)
    end
    if battleSpriteLayer.sprites.enemy2.active then
        love.graphics.printf(
            secondEnemy.healthPoints.."/"..secondEnemy.maxHealth,
            1513, 23, 200, "left", 0)
        love.graphics.printf(
            secondEnemy.magicPoints.."/"..secondEnemy.maxMagic,
            1533, 58, 200, "left", 0)
        love.graphics.printf(
            secondEnemy.name,
            1390, 80, 1000, "left", 0)
    end
    if battleSpriteLayer.sprites.enemy3.active then
        love.graphics.printf(
            thirdEnemy.healthPoints.."/"..thirdEnemy.maxHealth,
            1813, 23, 200, "left", 0)
        love.graphics.printf(
            thirdEnemy.magicPoints.."/"..thirdEnemy.maxMagic,
            1833, 58, 200, "left", 0)
        love.graphics.printf(
            thirdEnemy.name,
            1690, 80, 1000, "left", 0)
    end
end
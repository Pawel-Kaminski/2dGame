--WARNING: This file uses global variables:
--Player, battleSpriteLayer

function showHP()
    love.graphics.printf(
        "HP",
        53, 23, 1000, "left", 0)
    love.graphics.printf(
        math.ceil(Player.healthPoints).."/"..Player.maxHealth,
        153, 23, 200, "left", 0)
    love.graphics.printf(
        "MP",
        53, 58, 1000, "left", 0)
    love.graphics.printf(
        math.floor(Player.magicPoints).."/"..Player.maxMagic,
        173, 58, 200, "left", 0)
    love.graphics.printf(
        "Obrona",
        53, 93, 1000, "left", 0)
    love.graphics.printf(
        math.floor(Player.defence).."%",
        173, 93, 1000, "left", 0)
    if battleSpriteLayer.sprites.enemy1.active then
        love.graphics.printf(
            "HP",
            1113, 23, 1000, "left", 0)
        love.graphics.printf(
            math.ceil(firstEnemy.healthPoints).."/"..firstEnemy.maxHealth,
            1213, 23, 200, "left", 0)
        love.graphics.printf(
            "MP",
            1113, 58, 1000, "left", 0)
        love.graphics.printf(
            math.ceil(firstEnemy.magicPoints).."/"..firstEnemy.maxMagic,
            1233, 58, 200, "left", 0)
        love.graphics.printf(
            "Obrona",
            1113, 93, 1000, "left", 0)
        love.graphics.printf(
            math.floor(firstEnemy.defence).."%",
            1233, 93, 1000, "left", 0)
        love.graphics.printf(
            firstEnemy.name,
            1090, 125, 1000, "left", 0)
    end
    if battleSpriteLayer.sprites.enemy2.active then
        love.graphics.printf(
            "HP",
            1413, 23, 1000, "left", 0)
        love.graphics.printf(
            math.ceil(secondEnemy.healthPoints).."/"..secondEnemy.maxHealth,
            1513, 23, 200, "left", 0)
        love.graphics.printf(
            "MP",
            1413, 58, 1000, "left", 0)
        love.graphics.printf(
            math.ceil(secondEnemy.magicPoints).."/"..secondEnemy.maxMagic,
            1533, 58, 200, "left", 0)
        love.graphics.printf(
            "Obrona",
            1413, 93, 1000, "left", 0)
        love.graphics.printf(
            math.floor(secondEnemy.defence).."%",
            1533, 93, 1000, "left", 0)
        love.graphics.printf(
            secondEnemy.name,
            1390, 125, 1000, "left", 0)
    end
    if battleSpriteLayer.sprites.enemy3.active then
        love.graphics.printf(
            "HP",
            1713, 23, 1000, "left", 0)
        love.graphics.printf(
            math.ceil(thirdEnemy.healthPoints).."/"..thirdEnemy.maxHealth,
            1813, 23, 200, "left", 0)
        love.graphics.printf(
            "MP",
            1713, 58, 1000, "left", 0)
        love.graphics.printf(
            math.ceil(thirdEnemy.magicPoints).."/"..thirdEnemy.maxMagic,
            1833, 58, 200, "left", 0)
        love.graphics.printf(
            "Obrona",
            1713, 93, 1000, "left", 0)
        love.graphics.printf(
            math.floor(thirdEnemy.defence).."%",
            1833, 93, 1000, "left", 0)
        love.graphics.printf(
            thirdEnemy.name,
            1690, 125, 1000, "left", 0)
    end
end
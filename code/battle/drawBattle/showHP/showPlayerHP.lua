function showPlayerHP()
    love.graphics.printf(
        "HP",
        53, 23, 1000, "left", 0)
    love.graphics.printf(
        math.ceil(Player.healthPoints).."/"..Player.maxHealth,
        153, 23, 200, "left", 0)
    love.graphics.printf(
        "MP",
        53, 58, 1000, "left", 0)
    if Player.maxMagic ~= 0 then
        love.graphics.printf(
            math.floor(Player.magicPoints).."/"..Player.maxMagic,
            173, 58, 200, "left", 0)
    else
        love.graphics.printf(
            "brak",
            173, 58, 200, "left", 0)
    end
    love.graphics.printf(
        "Obrona",
        53, 93, 1000, "left", 0)
    love.graphics.printf(
        math.floor(Player.defence).."%",
        173, 93, 1000, "left", 0)
end
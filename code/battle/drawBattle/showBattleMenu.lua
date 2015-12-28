function showBattleMenu()
    if victory then
        displayingMenu = false
    end
    color(900)
    love.graphics.printf(
        "Akcja",
        150, 915, 500, "left", 0)
    color(930)
    love.graphics.printf(
        "Przedmiot",
        150, 945, 500, "left", 0)
    color(960)
    love.graphics.printf(
        "Ucieczka",
        150, 975, 500, "left", 0)
end
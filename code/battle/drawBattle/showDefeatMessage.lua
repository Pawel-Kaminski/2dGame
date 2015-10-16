function showDefeatMessage()
    love.graphics.printf(
        "Porażka...",
        150, 745, 500, "left", 0)
    color(790)
    love.graphics.printf(
        "Spróbuj ponownie",
        150, 805, 1000, "left", 0)
    color(820)
    love.graphics.printf(
        "Wyjdź z gry",
        150, 835, 1000, "left", 0)
end
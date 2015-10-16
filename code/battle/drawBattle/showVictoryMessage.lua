function showVictoryMessage()
    love.graphics.printf(
        "Zwycięstwo!!! Naciśnij ENTER, aby przejść dalej",
        150, 745, 1000, "left", 0)
    if activeEnemySprite.name == "thornbush" then
        love.graphics.printf(
            "Odblokowujesz atak magiczny!",
            150, 845, 1000, "left", 0)
        playerActionFlags[3][2] = true
    elseif activeEnemySprite.name == "creature" then
        love.graphics.printf(
            "Odblokowujesz możliwość uleczania się!",
            150, 845, 1000, "left", 0)
        playerActionFlags[4][2] = true
    end
end
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
    elseif activeEnemySprite.name == "dragon" then
        love.graphics.printf(
            "Odblokowujesz atak magiczną strzałą!",
            150, 845, 1000, "left", 0)
        playerActionFlags[5][2] = true
    elseif activeEnemySprite.name == "airGuardian" then
        love.graphics.printf(
            "Odblokowujesz potężny atak lodowy!",
            150, 845, 1000, "left", 0)
        playerActionFlags[6][2] = true
    elseif activeEnemySprite.name == "fireGuardian" then
        love.graphics.printf(
            "Odblokowujesz potężny atak ogniowy!",
            150, 845, 1000, "left", 0)
        playerActionFlags[7][2] = true
    end
end
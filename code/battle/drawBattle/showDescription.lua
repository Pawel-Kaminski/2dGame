function showDescription()
    love.graphics.setColor(255,255,255)
    local description = ""
    if animationId == 1 then
        description = playerActionFlags[1][1]
    elseif animationId == 2 then
        description = playerActionFlags[3][1]
    elseif animationId == 3 then
        description = playerActionFlags[4][1]
    elseif animationId == 4 then
        description = playerActionFlags[2][1]
    elseif animationId == 5 then
        description = "Magiczna eksplozja"
    elseif animationId == 6 then
        description = "Szkodliwy gaz"
    elseif animationId == 7 then
        description = playerActionFlags[2][1]
    elseif animationId == 8 then
        description = playerActionFlags[4][1]
    end
    love.graphics.setFont(secondFont)
    if displayAnimation then
        love.graphics.printf(
            description,
            600, 50, 1000, "left", 0)
    end
    love.graphics.setFont(defaultFont)
end
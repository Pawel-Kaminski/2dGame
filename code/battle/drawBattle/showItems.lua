--number of item: 1-5

function showItems()
    displayingMenu = false
    love.graphics.printf("mikstura lecznicza", 150, 915, 1000, "left", 0)
    love.graphics.printf("eliksir leczniczy", 150, 945, 1000, "left", 0)
    love.graphics.printf("antidotum", 150, 975, 1000, "left", 0)
    love.graphics.printf("trucizna", 150, 1005, 1000, "left", 0)
    love.graphics.printf("eliksir magiczny", 150, 1035, 1000, "left", 0)

    love.graphics.printf(
        "Ilość przedmiotów tego typu w ekwipunku: ",
        1000, 915, 1000, "left", 0)
    local iloscPrzedmiotow = -1
    if arrowY == 900 then
        local iloscPrzedmiotow = 1
    elseif arrowY == 930 then
        local iloscPrzedmiotow = 2
    elseif arrowY == 960 then
        local iloscPrzedmiotow = 3
    elseif arrowY == 990 then
        local iloscPrzedmiotow = 4
    elseif arrowY == 1020 then
        local iloscPrzedmiotow = 5
    end
    love.graphics.printf(iloscPrzedmiotow, 1500, 915, 1000, "left", 0)
end
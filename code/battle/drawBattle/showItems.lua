--number of item: 1-5

function showItems()
    displayingMenu = false
    color(900)
    love.graphics.printf("mikstura lecznicza", 150, 915, 1000, "left", 0)
    color(930)
    love.graphics.printf("eliksir leczniczy", 150, 945, 1000, "left", 0)
    color(960)
    love.graphics.printf("antidotum", 150, 975, 1000, "left", 0)
    color(990)
    love.graphics.printf("trucizna", 150, 1005, 1000, "left", 0)
    color(1020)
    love.graphics.printf("eliksir magiczny", 150, 1035, 1000, "left", 0)

    love.graphics.setColor(255, 255, 255)
    love.graphics.printf(
        "Ilość przedmiotów tego typu w ekwipunku: ",
        1000, 915, 1000, "left", 0)
    if arrowY == 900 then
        iloscPrzedmiotow = items[1][2]
    elseif arrowY == 930 then
        iloscPrzedmiotow = items[2][2]
    elseif arrowY == 960 then
        iloscPrzedmiotow = items[3][2]
    elseif arrowY == 990 then
        iloscPrzedmiotow = items[4][2]
    elseif arrowY == 1020 then
        iloscPrzedmiotow = items[5][2]
    end
    love.graphics.printf(iloscPrzedmiotow, 1500, 915, 1000, "left", 0)
end
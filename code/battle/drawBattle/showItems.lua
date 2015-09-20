--number of item: 1-5
--if no items are available, name of item should be displayed in gray
--if item is available and isn't selected, name should be displayed in white
--if it is selected, name should be displayed in red

function showItems()
    displayingMenu = false
    if items[1][2] == 0 then
        love.graphics.setColor(139, 137, 137)
    else
        color(900)
    end
    love.graphics.printf("mikstura lecznicza", 150, 915, 1000, "left", 0)
    if items[2][2] == 0 then
        love.graphics.setColor(139, 137, 137)
    else
        color(930)
    end
    love.graphics.printf("eliksir leczniczy", 150, 945, 1000, "left", 0)
    if items[3][2] == 0 then
        love.graphics.setColor(139, 137, 137)
    else
        color(960)
    end
    love.graphics.printf("antidotum", 150, 975, 1000, "left", 0)
    if items[4][2] == 0 then
        love.graphics.setColor(139, 137, 137)
    else
        color(990)
    end
    love.graphics.printf("trucizna", 150, 1005, 1000, "left", 0)
    if items[5][2] == 0 then
        love.graphics.setColor(139, 137, 137)
    else
        color(1020)
    end
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
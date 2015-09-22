function useItem(number)
    if number == 1 and items[1][2] > 0 then
        --use health potion
        items[1][2] = items[1][2] - 1
    elseif number == 2 and items[2][2] > 0 then
        --use health elixir
        items[2][2] = items[2][2] - 1
    elseif number == 3 and items[3][2] > 0 then
        --use antidotum
        items[3][2] = items[3][2] - 1
    elseif number == 4 and items[4][2] > 0 then
        --use poison
        items[4][2] = items[4][2] - 1
    elseif number == 5 and items[5][2] > 0 then
        --use magic elixir
        items[5][2] = items[5][2] - 1
    end
end
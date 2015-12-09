function drawSpriteLayer(layer)
    for _, sprite in pairs(layer.sprites) do
        --describes conditions when arrow is displayed
        if (sprite.y ~= arrowY or displayingMenu or displayingActions or defeat
        or selectingEnemy or displayingItems) and sprite.active ~= false then
            local x = math.floor(sprite.x)
            local y = math.floor(sprite.y)
            local r = sprite.r
            love.graphics.draw(sprite.image, x, y, r)
        end
    end
end
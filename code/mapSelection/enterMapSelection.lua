require "mapSelection.enterMapSelection.createLayersMapSelection"

function enterMapSelection()
    DEBUG_MODE = true
    map4 = sti.new("assets/maps/old_map")
    createLayersMapSelection()

    function elements:draw()
        for _, sprite in pairs(self.sprites) do
            if sprite.active then
                local x = math.floor(sprite.x)
                local y = math.floor(sprite.y)
                love.graphics.draw(sprite.image, x, y)
            end
        end
    end

    function background:draw()
        for _, sprite in pairs(self.sprites) do
            if sprite.active then
                local x = math.floor(sprite.x)
                local y = math.floor(sprite.y)
                love.graphics.draw(sprite.image, x, y)
            end
        end
    end

    function locked:draw()
        if map2locked then
            love.graphics.draw(self.sprites.locked.image, 704, 400)
        end
        if map3locked then
            love.graphics.draw(self.sprites.locked.image, 704, 500)
        end
        if map4locked then
            love.graphics.draw(self.sprites.locked.image, 704, 600)
        end
    end
end
function itemsLayerDraw()
        for _, sprite in pairs(itemsLayer.sprites) do
            if sprite.active ~= false then
                local x = math.floor(sprite.x)
                local y = math.floor(sprite.y)
                --local r = sprite.r
                if playerPositionX == x and playerPositionY == y then
                    sprite.active = false
                    --If sprite is null, it doesn't exist on this particular map
                    if itemsLayer.sprites.healthPotion ~= null and
                        x == itemsLayer.sprites.healthPotion.x and
                        y == itemsLayer.sprites.healthPotion.y then
                            items[1][2] = items[1][2] + 1
                            active4 = false
                    elseif itemsLayer.sprites.poison ~= null and
                        x == itemsLayer.sprites.poison.x and
                        y == itemsLayer.sprites.poison.y then
                            items[4][2] = items[4][2] + 1
                            active5 = false
                    elseif itemsLayer.sprites.misteriousPlant ~= null and
                        x == itemsLayer.sprites.misteriousPlant.x and
                        y == itemsLayer.sprites.misteriousPlant.y then
                            items[6][2] = 1
                            active6 = false
                    elseif itemsLayer.sprites.scroll ~= null and
                        x == itemsLayer.sprites.scroll.x and
                        y == itemsLayer.sprites.scroll.y then
                            items[7][2] = 1
                            active7 = false
                    elseif itemsLayer.sprites.windArtefact ~= null and
                        x == itemsLayer.sprites.windArtefact.x and
                        y == itemsLayer.sprites.windArtefact.y then
                            items[9][2] = 1
                            active8 = false
                    elseif itemsLayer.sprites.fireArtefact ~= null and
                        x == itemsLayer.sprites.fireArtefact.x and
                        y == itemsLayer.sprites.fireArtefact.y then
                            items[10][2] = 1
                            active9 = false
                    elseif itemsLayer.sprites.iceArtefact ~= null and
                        x == itemsLayer.sprites.iceArtefact.x and
                        y == itemsLayer.sprites.iceArtefact.y then
                            items[11][2] = 1
                            active10 = false
                    elseif itemsLayer.sprites.healthPotion2 ~= null and
                        x == itemsLayer.sprites.healthPotion2.x and
                        y == itemsLayer.sprites.healthPotion2.y then
                            items[1][2] = items[1][2] + 1
                            active11 = false
                    elseif itemsLayer.sprites.healthElixir ~= null and
                        x == itemsLayer.sprites.healthElixir.x and
                        y == itemsLayer.sprites.healthElixir.y then
                            items[2][2] = items[2][2] + 1
                            active12 = false
                    elseif itemsLayer.sprites.healthPotion3 ~= null and
                        x == itemsLayer.sprites.healthPotion3.x and
                        y == itemsLayer.sprites.healthPotion3.y then
                            items[1][2] = items[1][2] + 1
                            active13 = false
                    elseif itemsLayer.sprites.antidote ~= null and
                        x == itemsLayer.sprites.antidote.x and
                        y == itemsLayer.sprites.antidote.y then
                            items[3][2] = items[3][2] + 1
                            active14 = false
                    elseif itemsLayer.sprites.manaElixir ~= null and
                        x == itemsLayer.sprites.manaElixir.x and
                        y == itemsLayer.sprites.manaElixir.y then
                            items[5][2] = items[5][2] + 1
                            active15 = false
                    end
                end
                love.graphics.draw(sprite.image, x, y)
            end
        end
end
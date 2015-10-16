function removeEnemyFromMap(sprite)
                if selectedMap == 1 then
                    if sprite.y == enemies.sprites.enemy.y then active1 = false end
                    if sprite.y == enemies.sprites.enemy3.y then
                        active3 = false
                        finishQuest(1)
                        --unlock magic attack (action number 3)
                        --to prevent from displaying quest pop-up more than once
                        doNotDisplay = true
                    end
                elseif selectedMap == 2 then
                    --TODO: set variables for map 2
                    if sprite.x == enemies.sprites.enemy.x
                    and sprite.y == enemies.sprites.enemy.y then
                        active16 = false
                    end
                    if sprite.x == enemies.sprites.enemy2.x
                    and sprite.y == enemies.sprites.enemy2.y then
                        active17 = false
                    end
                    if sprite.x == enemies.sprites.enemy3.x
                    and sprite.y == enemies.sprites.enemy3.y then
                        active18 = false
                    end
                    if sprite.x == enemies.sprites.enemy4.x
                    and sprite.y == enemies.sprites.enemy4.y then
                        active19 = false
                    end
                    if sprite.x == enemies.sprites.enemy5.x
                    and sprite.y == enemies.sprites.enemy5.y then
                        active20 = false
                    end
                elseif selectedMap == 3 then
                    --TODO: set variables for map 3
                elseif selectedMap == 4 then
                end
end
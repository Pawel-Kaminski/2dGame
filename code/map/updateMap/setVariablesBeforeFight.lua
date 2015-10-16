function setVariablesBeforeFight(sprite)
                if sprite.name == "thornbush" then
                    firstEnemy = EnemyThornbush_First
                    secondEnemy = EnemyThornbush_Second
                    thirdEnemy = EnemyThornbush_Third
                    stats = EnemyThornbushStatistics
                elseif sprite.name == "creature" then
                    firstEnemy = EnemyDorver_First
                    secondEnemy = EnemyDorver_Second
                    thirdEnemy = EnemyDorver_Third
                    stats = EnemyDorverStatistics
                elseif sprite.name == "forestGuardian" then
                    firstEnemy = EnemyForestGuardian_First
                    secondEnemy = EnemyForestGuardian_Second
                    thirdEnemy = EnemyForestGuardian_Third
                    stats = EnemyForestGuardianStatistics
                elseif sprite.name == "cactus" then
                    firstEnemy = EnemyCactus_First
                    secondEnemy = EnemyCactus_Second
                    thirdEnemy = EnemyCactus_Third
                    stats = EnemyCactusStatistics
                elseif sprite.name == "forestCreature" then
                    firstEnemy = EnemyForestCreature_First
                    secondEnemy = EnemyForestCreature_Second
                    thirdEnemy = EnemyForestCreature_Third
                    stats = EnemyForestCreatureStatistics
                elseif sprite.name == "dragon" then
                    firstEnemy = EnemyDragon_First
                    secondEnemy = EnemyDragon_Second
                    thirdEnemy = EnemyDragon_Third
                    stats = EnemyDragonStatistics
                elseif sprite.name == "airGuardian" then
                    firstEnemy = EnemyAirGuardian_First
                    secondEnemy = EnemyAirGuardian_Second
                    thirdEnemy = EnemyAirGuardian_Third
                    stats = EnemyAirGuardianStatistics
                end
end
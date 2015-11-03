--WARNING: This file uses global variables:
--displayAnimation, animationId, secondSprite, counting, dtotal, speed,
--enemyDestinedToDie, hidebar

require "battle.enterBattle.animationLayer.updateAnimationLayer.startAttackAnimation"
require "battle.enterBattle.animationLayer.updateAnimationLayer.startAttackOfEnemyAnimation"
require "battle.enterBattle.animationLayer.updateAnimationLayer.startDefensiveAnimation"

--animationId = 1 - attack
--= 2 - magic attack
--= 3 - heal
--= 4 - defend
--= 5 - magical explosion (for enemy)
--= 6 - poisoning gas (for enemy)
--= 7 - defend (for enemy)
--= 8 - heal (for enemy)

--= 9 - magical arrow
--= 10 - ice attack
--= 11 - fire attack
--= 12 - fire attack (for enemy)
--= 13 - ice attack (for enemy)
--= 14 - force of elements (for enemy)

function updateAnimationLayer(time)
    if displayAnimation and 
    (animationId == 1 or animationId == 2 or animationId == 9) then
        startAttackAnimation(battleAnimationLayer, animationId)
    elseif displayAnimation and (animationId == 3 or animationId == 4) then
        startDefensiveAnimation(battleAnimationLayer, animationId)
    elseif displayAnimation and (animationId == 5 or animationId == 6) then
        startAttackOfEnemyAnimation(battleAnimationLayer, animationId)
    elseif displayAnimation and (animationId == 7 or animationId == 8) then
        startDefensiveAnimation(battleAnimationLayer, animationId, enemyId)
    end
    if secondSprite ~= null and secondSprite.active then
        counting = counting + time
        dtotal = 0
        if counting ~= null and duration ~= null then
            if counting > duration then
                secondSprite.active = false
                if enemyDestinedToDie ~= null then
                    enemyDestinedToDie.active = false
                    hideBar.active = false
                    enemyDestinedToDie = null
                end
            end
        end
    end
end
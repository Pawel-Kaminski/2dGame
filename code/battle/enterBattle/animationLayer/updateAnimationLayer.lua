--WARNING: This file uses global variables:
--displayAnimation, animationId, secondSprite, counting, dtotal, speed,
--enemyDestinedToDie, hidebar

require "battle.enterBattle.animationLayer.updateAnimationLayer.startAttackAnimation"
require "battle.enterBattle.animationLayer.updateAnimationLayer.startAttackOfEnemyAnimation"
require "battle.enterBattle.animationLayer.updateAnimationLayer.startDefendingOfEnemyAnimation"
require "battle.enterBattle.animationLayer.updateAnimationLayer.startDefensiveAnimation"

function updateAnimationLayer()
    if displayAnimation and (animationId == 1 or animationId == 2) then
        startAttackAnimation(self)
    elseif displayAnimation and (animationId == 3 or animationId == 4) then
        startDefensiveAnimation(self)
    elseif displayAnimation and animationId == 5 then
        startAttackOfEnemyAnimation(self)
    end
    if secondSprite ~= null and secondSprite.active then
        counting = counting + dt
        dtotal = 0
        if counting > speed then
            secondSprite.active = false
            if enemyDestinedToDie ~= null then
                enemyDestinedToDie.active = false
                hideBar.active = false
                enemyDestinedToDie = null
            end
        end
    end
end
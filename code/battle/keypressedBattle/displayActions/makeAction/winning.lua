--WARNING: This file uses global variables:
--displayingActions, displayingMenu, displayTurnInfo, victory, sound3,
--battleSpriteLayer, Player

function winning()
   love.audio.stop()
   displayingActions = false
   displayingMenu = false
   displayTurnInfo = false
   victory = true
   sound3 = love.audio.newSource("music/VictoryTheme.mp3")
   love.audio.play(sound3)

   --do not display first enemy and his lifebar
   battleSpriteLayer.sprites.enemy1.active = false
   battleSpriteLayer.sprites.lifebarEnemy.active = false

   battleSpriteLayer.sprites.enemy2.active = false
   battleSpriteLayer.sprites.lifebarEnemy2.active = false

   battleSpriteLayer.sprites.enemy3.active = false
   battleSpriteLayer.sprites.lifebarEnemy3.active = false

   Player.remainingWaitingTime = 15
end
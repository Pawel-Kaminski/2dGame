--Does not use global variables

require "libraries.TLfres"
sti = require "libraries.sti"
Gamestate = require "libraries.humpGamestate"
playerPositionX = 60 ---Set position of a player on x axis
playerPositionY = 120 ---Set position of a player on y axis
--=================COUNTERS==========================--
dtotal = 0 --time after calling fight(enemy) function
dtotalPause = 0
--===================================================--
map2locked = true
map3locked = true
map4locked = true
require "menu"

function love.load() --this function is called only once
    love.graphics.setFont(love.graphics.newFont("assets/DroidSansMono.ttf", 20))

    --this makes callbacks Gamestate.update(), Gamestate.draw(), etc. work
    Gamestate.registerEvents()

    love.keyboard.setKeyRepeat(false)
    love.mouse.setVisible(false)
    TLfres.setScreen({w=0, h=0, full=true, vsync=false, aa=16}, 1920)
    Gamestate.switch(menuState)
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
    end
end

function love.draw()
    --these functions adjust image to the resolution
    TLfres.transform()
    TLfres.letterbox(16,9)
end
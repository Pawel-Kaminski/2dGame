--Does not use global variables

require "libraries.TLfres"
sti = require "libraries.sti"
Gamestate = require "libraries.hump.gamestate"
require "config"
require "menu"

function love.load() --this function is called only once
    love.graphics.setFont(love.graphics.newFont("assets/DroidSansMono.ttf", 20))

    --this makes callbacks Gamestate.update(), Gamestate.draw(), etc. work
    Gamestate.registerEvents()

    love.keyboard.setKeyRepeat(true)
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
sti = require "sti"
Gamestate = require "hump.gamestate"
require "map"

function love.load() --this function is called only once
    Gamestate.registerEvents() --this makes callbacks Gamestate.update(), Gamestate.draw(), etc. work
    love.keyboard.setKeyRepeat(true)
    love.mouse.setVisible(false)
    love.window.setMode(1920, 1080, {fullscreen=true})
    Gamestate.switch(mapState)
end



function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
    end
end
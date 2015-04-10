require "TLfres"
sti = require "sti"
Gamestate = require "hump.gamestate"
require "map"

function love.load() --this function is called only once
    mainFont = love.graphics.newFont("DroidSansMono.ttf", 20)
    love.graphics.setFont(mainFont)
    Gamestate.registerEvents() --this makes callbacks Gamestate.update(), Gamestate.draw(), etc. work
    love.keyboard.setKeyRepeat(true)
    love.mouse.setVisible(false)
    --love.window.setMode(0, 0, {fullscreen=true})
    TLfres.setScreen({w=0, h=0, full=true, vsync=false, aa=16}, 1920)
    Gamestate.switch(mapState)
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
    end
end

function love.draw()
    TLfres.transform()
    TLfres.letterbox(16,9)
end
require "libraries.TLfres"
sti = require "libraries.sti"
Gamestate = require "libraries.humpGamestate"
DEBUG_MODE = false
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
    defaultFont = love.graphics.newFont("assets/DroidSansMono.ttf", 20)
    secondFont = love.graphics.newFont("assets/ILoveAGinger.ttf", 35)
    love.graphics.setFont(defaultFont)

    --this makes callbacks Gamestate.update(), Gamestate.draw(), etc. work
    Gamestate.registerEvents()

    love.keyboard.setKeyRepeat(false)
    love.mouse.setVisible(false)
    TLfres.setScreen({w=0, h=0, full=true, vsync=false, aa=16}, 1920)
    Gamestate.switch(menuState)
    changeMusic = true
end

function love.keypressed(key)
end

function love.draw()
    --these functions adjust image to the resolution
    TLfres.transform()
    TLfres.letterbox(16,9)
end
local sti = require "sti"

function love.load()
    --Load a map exported to Lua from Tiled
    map = sti.new("assets/maps/example2")
end

function love.update(dt)
    map:update(dt)
end

function love.draw()
    map:draw()
end

function love.resize(w, h)
    map:resize(w, h)
end
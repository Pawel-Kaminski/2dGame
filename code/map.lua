require "battle"
mapState = {} --STI: creates new state called "mapState"
require "map.enterMap"
require "map.updateMap"
require "map.drawMap"
require "map.keypressedMap"

--"active" variables describe if we should display certain enemy or not
active1 = true
active2 = true
active3 = true
doNotDisplay = false

function mapState:enter()
    enterMap()
end

function mapState:update()
    updateMap()
end

function mapState:draw()
    drawMap()
end

function mapState:keypressed(key)
    keypressedMap(key)
end
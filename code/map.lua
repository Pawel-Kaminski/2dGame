--WARNING: This file uses global variables:
--active1, active2, active3, doNotDisplay, playerIsTalking, selectedNPC,
--selectedMap

require "battle"
require "quests"
mapState = {} --STI: creates new state called "mapState"
require "map.enterMap"
require "map.updateMap"
require "map.drawMap"
require "map.keypressedMap"

--"active" variables describe if we should display certain enemy or not
active1 = true
active2 = true
active3 = true
--"active" variables for items
active4 = true
active5 = true
active6 = true
active7 = true
active8 = true
active9 = true
active10 = true
active11 = true
active12 = true
active13 = true
active14 = true
active15 = true

active16 = true
active17 = true
active18 = true
active19 = true
active20 = true
doNotDisplay = false

function mapState:enter()
    enterMap(selectedMap)
end

function mapState:update()
    playerIsTalking = false
    updateMap()
end

function mapState:draw()
    drawMap(playerIsTalking, selectedNPC)
end

function mapState:keypressed(key)
    keypressedMap(key)
end
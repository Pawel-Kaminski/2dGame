require "map"
require "quests"
require "mapSelection.enterMapSelection"
require "mapSelection.keypressedMapSelection"
mapSelectionState = {}
selectedMap = 0

function mapSelectionState:enter()
    enterMapSelection()    
end

function mapSelectionState:update()
    if DEBUG_MODE then
        map2locked = false
        map3locked = false
        map4locked = false
    end
end

function mapSelectionState:draw()
    map4:draw()
end

function mapSelectionState:keypressed(key)
    keypressedMapSelection(key)
end
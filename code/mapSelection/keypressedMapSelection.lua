require "mapSelection.keypressedMapSelection.twoFieldsMenu"
require "mapSelection.keypressedMapSelection.threeFieldsMenu"
require "mapSelection.keypressedMapSelection.fourFieldsMenu"

function keypressedMapSelection(key)
    if not map2locked and map3locked and map4locked then
        twoFieldsMenu(key)
    elseif not map2locked and not map3locked and map4locked then
        threeFieldsMenu(key)
    elseif not map2locked and not map3locked and not map4locked then
        fourFieldsMenu(key)
    end
    if key == "return" then
        if elements.sprites.wioskaLipinkiOn.active then
            selectedMap = 1
        elseif elements.sprites.mrocznyLasOn.active then
            selectedMap = 2
        elseif elements.sprites.krainaRownowagiOn.active then
            selectedMap = 3
        elseif elements.sprites.oltarzPrzeznaczeniaOn.active then
            selectedMap = 4
        end
        Gamestate.switch(mapState)
    end
end
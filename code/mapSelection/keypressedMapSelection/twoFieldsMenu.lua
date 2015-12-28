function twoFieldsMenu(key)
    if key == "down" or key == "up" then
        if elements.sprites.wioskaLipinkiOn.active then
            elements.sprites.wioskaLipinkiOn.active = false
            elements.sprites.wioskaLipinkiOff.active = true
            elements.sprites.mrocznyLasOn.active = true
            elements.sprites.mrocznyLasOff.active = false
        elseif elements.sprites.mrocznyLasOn.active then
            elements.sprites.wioskaLipinkiOn.active = true
            elements.sprites.wioskaLipinkiOff.active = false
            elements.sprites.mrocznyLasOn.active = false
            elements.sprites.mrocznyLasOff.active = true
        end
    end
end
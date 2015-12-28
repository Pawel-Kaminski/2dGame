function threeFieldsMenu(key)
    if key == "down" then
        if elements.sprites.wioskaLipinkiOn.active then
            elements.sprites.wioskaLipinkiOn.active = false
            elements.sprites.wioskaLipinkiOff.active = true
            elements.sprites.mrocznyLasOn.active = true
            elements.sprites.mrocznyLasOff.active = false
        elseif elements.sprites.mrocznyLasOn.active then
            elements.sprites.mrocznyLasOn.active = false
            elements.sprites.mrocznyLasOff.active = true
            elements.sprites.krainaRownowagiOn.active = true
            elements.sprites.krainaRownowagiOff.active = false
        elseif elements.sprites.krainaRownowagiOn.active then
            elements.sprites.wioskaLipinkiOn.active = true
            elements.sprites.wioskaLipinkiOff.active = false
            elements.sprites.krainaRownowagiOn.active = false
            elements.sprites.krainaRownowagiOff.active = true
        end
    end
    if key == "up" then
        if elements.sprites.wioskaLipinkiOn.active then
            elements.sprites.wioskaLipinkiOn.active = false
            elements.sprites.wioskaLipinkiOff.active = true
            elements.sprites.krainaRownowagiOn.active = true
            elements.sprites.krainaRownowagiOff.active = false
        elseif elements.sprites.mrocznyLasOn.active then
            elements.sprites.mrocznyLasOn.active = false
            elements.sprites.mrocznyLasOff.active = true
            elements.sprites.wioskaLipinkiOn.active = true
            elements.sprites.wioskaLipinkiOff.active = false
        elseif elements.sprites.krainaRownowagiOn.active then
            elements.sprites.krainaRownowagiOn.active = false
            elements.sprites.krainaRownowagiOff.active = true
            elements.sprites.mrocznyLasOn.active = true
            elements.sprites.mrocznyLasOff.active = false
        end
    end
end
function fourFieldsMenu(key)
        if key == "down" then
            --TODO: implement map selection
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
                elements.sprites.krainaRownowagiOn.active = false
                elements.sprites.krainaRownowagiOff.active = true
                elements.sprites.oltarzPrzeznaczeniaOn.active = true
                elements.sprites.oltarzPrzeznaczeniaOff.active = false
            elseif elements.sprites.oltarzPrzeznaczeniaOn.active then
                elements.sprites.oltarzPrzeznaczeniaOn.active = false
                elements.sprites.oltarzPrzeznaczeniaOff.active = true
                elements.sprites.wioskaLipinkiOn.active = true
                elements.sprites.wioskaLipinkiOff.active = false
            end
        end
        if key == "up" then
            if elements.sprites.wioskaLipinkiOn.active then
                elements.sprites.wioskaLipinkiOn.active = false
                elements.sprites.wioskaLipinkiOff.active = true
                elements.sprites.oltarzPrzeznaczeniaOn.active = true
                elements.sprites.oltarzPrzeznaczeniaOff.active = false
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
            elseif elements.sprites.oltarzPrzeznaczeniaOn.active then
                elements.sprites.oltarzPrzeznaczeniaOn.active = false
                elements.sprites.oltarzPrzeznaczeniaOff.active = true
                elements.sprites.krainaRownowagiOn.active = true
                elements.sprites.krainaRownowagiOff.active = false
            end
        end
end
function thirdMapNPC()
    NPC.sprites = {
        teleport = {
            image = love.graphics.newImage(
                "assets/sprites/teleporter_active_scaled.gif"),
                x = 0,
                y = 0
        },
        Lidenon = {
            image = love.graphics.newImage(
                "assets/sprites/npc/5-Lidenon/Lidenon.png"),
                x = 240,
                y = 240,
            dialog7 = "Witaj! Jestem Lidenon. "..
                "To miejsce nazywane jest Krainą Równowagi. "..
                "Możesz tu spotkać potężne bestie żywiołów ognia i lodu. "..
                "Nie da się ich pokonać używając zwykłych ataków. "..
                "Jeśli chcesz z nimi walczyć, posłuchaj moich wskazówek. "..
                "Ogniste bestie są wrażliwe jedynie na lodowe ataki. "..
                "Aby zadać obrażenia lodowym bestiom, użyj ogniowych ataków. "..
                "Strażnicy lodu to silniejsze bestie, "..
                "więc radzę ci udać się najpierw na północny zachód "..
                "i zmierzyć się ze strażnikiem ognia."
        }
    }
end
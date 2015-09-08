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
            dialog8 = "Witaj! Jestem Lidenon. "..
                "To miejsce nazywane jest Krainą Równowagi. "..
                "Możesz tu spotkać potężne bestie żywiołów ognia i lodu. "..
                "Legenda głosi, że są one strażnikami pradawnych artefaktów. "..
                "Jednak ja bym się do nich nie wybierał, to zbyt ryzykowne. "..
                "Wiem, że nie da się ich pokonać używając zwykłych ataków. "..
                "Jeśli chcesz z nimi walczyć, posłuchaj moich wskazówek. "..
                "Ogniste bestie są wrażliwe jedynie na lodowe ataki. "..
                "Aby zadać obrażenia lodowym bestiom, użyj ogniowych ataków. "..
                "Strażnicy lodu to silniejsze bestie, "..
                "więc radzę ci udać się najpierw na północny zachód "..
                "i zmierzyć się ze strażnikiem ognia.",
            dialog9 = "Udało ci się pokonać strażników ognia? Świetnie! "..
                "Jeśli chcesz, możesz udać się "..
                "na pojedynek z lodowymi bestami. "..
                "Pamiętaj, możesz zadać im obrażenia wyłącznie korzystając z "..
                "ogniowych ataków. Powodzenia!",
            dialog10 = "Udało ci się pokonać zarówno ogniste, "..
                "jak i lodowe bestie. Jesteś znakomitą wojowniczką! "..
                "Udało ci się również zdobyć artefakty! "..
                "Mam nadzieję, że zrobisz z nich dobry użytek. ",
            quest = "Pokonaj strażników ognia i zdobądź Artefakt Ognia.",
            quest2 = "Pokonaj strażników lodu i zdobądź Artefakt Lodu.",
            quest3 = "Złóż zdobyte artefakty na Ołtarzu Przeznaczenia."
        }
    }
end
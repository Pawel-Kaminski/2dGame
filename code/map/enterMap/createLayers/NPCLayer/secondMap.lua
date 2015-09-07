function secondMapNPC()
    NPC.sprites = {
        teleport = {
            image = love.graphics.newImage(
                "assets/sprites/teleporter_active_scaled.gif"),
                x = 0,
                y = 0
        },
        Tinaldina = {
            image = love.graphics.newImage(
                "assets/sprites/npc/4-Tinaldina/scaled.png"),
                x = 900,
                y = 660,
                dialog5 = "Wyczuwam, że masz przy sobie przedmiot emanujący "..
                    "poteżną energią magiczną. Artefakt Ziemi, nie mylę się? "..
                    "Witaj, mam na imię Tinaldina. "..
                    "My wiedźmy potrafimy wyczuć, jak energia magiczna "..
                    "płynie przez ten świat. Czuję, że on wrócił... "..
                    "Neil Merzenantar, przerażający czarnoksiężnik, "..
                    "powrócił. "..
                    "Ten artefakt może być kluczem "..
                    "do ocalenia twojej wioski. Nie wiem, jakie może mieć "..
                    "zastosowanie, ale stare księgi wspominają "..
                    "o tajemnicznym zwoju z przepowiednią związaną z "..
                    "artefaktami. Ale to tylko legenda... Dla twojej wioski "..
                    "nie ma już nadziei.",
                dialog6 = "Udało ci się znaleźć zwój?! "..
                    "Z pomocą mojej magii uda się go odczytać! "..
                    "Oto treść przepowiedni:\n\n"..
                    "Gdy powstanie już z martwych czarnoksiężnik wrogi\n"..
                    "Niech cztery artefakty będą kluczem drogi\n"..
                    "Gdy moce cztery złączy Ołtarz Przeznaczenia\n"..
                    "Dojdzie do wielkiej bitwy, odwrotu już nie ma\n",
                dialog7 = "Podejrzewam, "..
                    "że tutaj już nic nie uda się odnaleźć. "..
                    "Udaj się do Krainy Równowagi. "..
                    "Tam mogą znajdować się pozostałe artefakty. "..
                    "Jednak wiedz, "..
                    "że ich zdobycie będzie trudne i niebezpieczne. "..
                    "Znajdź człowieka o imieniu Lidenon. "..
                    "Bez jego wskazówek ciężko będzie ci walczyć "..
                    "ze strażnikami artefaktów.",
                quest = "Znajdź zwój z przepowiednią napisaną w starożytnym "..
                    "języku i zanieś Tinaldinie.",
                quest2 = "Pokonaj stażników powietrza "..
                    "i zdobądź Artefakt Powietrza.",
                quest3 = "Uzyskaj wskazówki dotyczące taktyki od Lidenona."
            }
        }
end
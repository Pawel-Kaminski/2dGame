local ending = 
[[Gratulacje!

Udało ci się pokonać złego czarnoksiężnika Neila Merzenantara!

Choroby przestały nękać mieszkańców wioski Lipinki.
Wszyscy mieszkańcy wioski są ci bardzo wdzięczni.]]

function showEnding()
    love.graphics.setColor(255, 255, 255)
    love.graphics.printf(
        ending,
        100, 50, 2000, "left", 0)
end
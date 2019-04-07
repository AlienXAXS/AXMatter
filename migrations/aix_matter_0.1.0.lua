-- Reload this changed recipe
for _, force in pairs(game.forces) do
    if ( force.recipes["ax-matter-cable"] ~= nil ) then
        force.recipes["ax-matter-cable"].reload()
    end
end
for _, force in pairs(game.forces) do
    if ( force.technologies["ax-matter-glowing-fluids"].researched ) then
        force.recipes["ax-matter-gear-wheel"].enabled = true
    end
end
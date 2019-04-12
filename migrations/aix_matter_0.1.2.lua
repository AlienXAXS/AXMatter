for _, force in pairs(game.forces) do
    if ( force.technologies["ax-matter-glowing-fluids"].researched ) then
        force.recipies["ax-matter-gear-wheel"].enabled = true
    end
end
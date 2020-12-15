function string.starts(String,Start)
   return string.sub(String,1,string.len(Start))==Start
end

for _, force in pairs(game.forces) do
    local technologies = force.technologies
    local recipes = force.recipes
	
	-- reset all duplication recipes
	for _, recipe in pairs(recipes) do
		if ( string.starts(recipe.name, "ax-dupe-") ) then
			recipe.enabled = technologies["ax-duplication-technology"].researched
		end
	end

    --recipes["Battle-Locomotive-1"].enabled = technologies["modular-armor"].researched
end
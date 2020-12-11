require("data_scripts.OreConversion")

-- Setup Matter Duplication
require("data_scripts.MatterDuplication")

-- If we have dectorio, change our walls to be a pre-req of that instead
if (mods["Dectorio"] ~= nil and data.raw.technology["dect-advanced-walls"] ~= nil) then
    log("AIX Matter: Found Dectorio, changing ax-matter-walls")
    local matterWallsTech = data.raw.technology["ax-matter-walls"]
    matterWallsTech.prerequisites = {
        "ax-matter-military-science-pack",
        "dect-advanced-walls"
    }
end

if (data.raw.technology["stone-walls"] ~= nil) then
    data.raw.technology["ax-matter-walls"].prerequisites = {"ax-matter-military-science-pack", "stone-walls"}
end

-- If we have Space Ex, then fix space science for ourselves
if (mods["space-exploration"] ~= nil ) then
	local replacementSciencePackName = "se-rocket-science-pack"
	data.raw.recipe["ax-powder-space"].ingredients = {{replacementSciencePackName, 1},{type="fluid", name="ax-pure-liquid-matter", amount=25}}
	data.raw.technology["ax-matter-infused-space"].prerequisites = {"ax-matter-infused-utility",replacementSciencePackName}
	
	-- Remove the pesky changes SpaceEx does to our tech requirements
	LSlib.technology.removeIngredient("ax-matter-logistics-1", "chemical-science-pack")
	LSlib.technology.removeIngredient("ax-matter-logistics-2", "chemical-science-pack")
	LSlib.technology.removeIngredient("ax-matter-logistics-3", "chemical-science-pack")
	
	-- Fixes Space Ex messing with some research tiers	
	-- Fix assemblers
	data.raw.technology["ax-matter-automation-2"].unit.ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
                {"ax-matter-science-matter-infused-logistic", 1},
            }
			
	data.raw.technology["ax-matter-automation-3"].unit.ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
                {"ax-matter-science-matter-infused-logistic", 1},
                {"ax-matter-science-matter-infused-chemical", 1},
                {"ax-matter-science-matter-infused-production", 1},
            }
			
	-- Fix drills
	data.raw.technology["ax-matter-drilling-mk1"].unit.ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
                {"ax-matter-science-matter-infused-logistic", 1},
            }
			
	data.raw.technology["ax-matter-drilling-mk2"].unit.ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
                {"ax-matter-science-matter-infused-logistic", 1},
                {"ax-matter-science-matter-infused-chemical", 1},
            }
			
	data.raw.technology["ax-matter-drilling-mk3"].unit.ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
                {"ax-matter-science-matter-infused-logistic", 1},
                {"ax-matter-science-matter-infused-chemical", 1},
                {"ax-matter-science-matter-infused-production", 1},
            }
	
	-- Removes space science as it's no longer required
	--data.raw.technology["ax-matter-infused-space"] = nil
end
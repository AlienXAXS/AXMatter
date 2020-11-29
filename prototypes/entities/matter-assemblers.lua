local newAssemblyMachineTier2 = util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"])

-- Set new stuff for our new assembler
newAssemblyMachineTier2.name = "ax-matter-assembling-machine-2"
newAssemblyMachineTier2.icon = "__aix_matter__/graphics/icons/matter-assembling-machine-2.png"
newAssemblyMachineTier2.icon_size = 32
newAssemblyMachineTier2.max_health = 375

log("amchine-2-lr before: " .. newAssemblyMachineTier2.animation.layers[1].filename)
log("amchine-2-hr before: " .. newAssemblyMachineTier2.animation.layers[1].hr_version.filename)
newAssemblyMachineTier2.animation.layers[1].filename = "__aix_matter__/graphics/entity/matter-assemblers/matter-assembling-machine-2.png"
newAssemblyMachineTier2.animation.layers[1].hr_version.filename = "__aix_matter__/graphics/entity/matter-assemblers/hr-matter-assembling-machine-2.png"
log("amchine-2-lr before: " .. newAssemblyMachineTier2.animation.layers[1].filename)
log("amchine-2-hr before: " .. newAssemblyMachineTier2.animation.layers[1].hr_version.filename)

newAssemblyMachineTier2.crafting_speed = 1
newAssemblyMachineTier2.minable.result = newAssemblyMachineTier2.name

----------------------------------------------------------------------------------------

local newAssemblyMachineTier3 = util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-3"])

-- Set new stuff for our new assembler
newAssemblyMachineTier3.name = "ax-matter-assembling-machine-3"
newAssemblyMachineTier3.icon = "__aix_matter__/graphics/icons/matter-assembling-machine-3.png"
newAssemblyMachineTier3.icon_size = 32
newAssemblyMachineTier3.max_health = 450
newAssemblyMachineTier3.animation.layers[1].filename = "__aix_matter__/graphics/entity/matter-assemblers/matter-assembling-machine-3.png"
newAssemblyMachineTier3.animation.layers[1].hr_version.filename = "__aix_matter__/graphics/entity/matter-assemblers/hr-matter-assembling-machine-3.png"
newAssemblyMachineTier3.crafting_speed = 1.50
newAssemblyMachineTier3.minable.result = newAssemblyMachineTier3.name

-- Add our new prototypes to the game
data:extend({
	newAssemblyMachineTier2, newAssemblyMachineTier3
})

-- Update replacing vanilla tier 3 machine with AX Matter one
data.raw["assembling-machine"]["assembling-machine-2"].next_upgrade = "ax-matter-assembling-machine-2"
data.raw["assembling-machine"]["assembling-machine-3"].next_upgrade = "ax-matter-assembling-machine-3"
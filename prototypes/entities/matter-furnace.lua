local entity = util.table.deepcopy(data.raw.furnace["electric-furnace"])

-- Set new stuff for our new turret
entity.name = "ax-matter-furnace"
entity.icon = "__aix_matter__/graphics/icons/matter-furnace.png"
--entity.icon_size = 32
entity.max_health = 550
entity.energy_usage = "210kW"
entity.module_specification.module_slots = 4
entity.crafting_speed = 3


-- Modify the base textures, as that's all we're changing here.
entity.animation.layers[1].filename = "__aix_matter__/graphics/entity/matter-furnace/electric-furnace-base.png"
entity.animation.layers[1].hr_version.filename = "__aix_matter__/graphics/entity/matter-furnace/hr-electric-furnace.png"
entity.working_visualisations[1].animation.layers[1].filename = "__aix_matter__/graphics/entity/matter-furnace/electric-furnace-heater.png"
entity.working_visualisations[1].animation.layers[1].hr_version.filename = "__aix_matter__/graphics/entity/matter-furnace/hr-electric-furnace-heater.png"
entity.working_visualisations[2].animation.filename = "__aix_matter__/graphics/entity/matter-furnace/electric-furnace-ground-light.png"
entity.working_visualisations[2].animation.hr_version.filename = "__aix_matter__/graphics/entity/matter-furnace/hr-electric-furnace-ground-light.png"


entity.minable.result = entity.name

-- Add our new prototypes to the game
data:extend({
	entity
})
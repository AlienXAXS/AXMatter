local newBeacon = util.table.deepcopy(data.raw.beacon["beacon"])

-- Set new stuff for our new turret
newBeacon.name = "ax-matter-beacon"
newBeacon.icon = "__aix_matter__/graphics/icons/matter-beacon.png"
--newBeacon.icon_size = 32
newBeacon.max_health = 450
newBeacon.energy_usage = "500kW"

-- Modify the base textures, as that's all we're changing here.
newBeacon.graphics_set.animation_list[1].animation.layers[1].filename = "__aix_matter__/graphics/entity/matter-beacon/beacon-bottom.png"
newBeacon.graphics_set.animation_list[1].animation.layers[1].hr_version.filename = "__aix_matter__/graphics/entity/matter-beacon/hr-beacon-bottom.png"
newBeacon.graphics_set.animation_list[2].animation.filename = "__aix_matter__/graphics/entity/matter-beacon/beacon-top.png"
newBeacon.graphics_set.animation_list[2].animation.hr_version.filename = "__aix_matter__/graphics/entity/matter-beacon/hr-beacon-top.png"
newBeacon.supply_area_distance = 4
newBeacon.distribution_effectivity = 0.75
newBeacon.minable.result = newBeacon.name

-- Add our new prototypes to the game
data:extend({
	newBeacon
})
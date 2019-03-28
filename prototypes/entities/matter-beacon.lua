local newBeacon = util.table.deepcopy(data.raw.beacon["beacon"])

-- Set new stuff for our new turret
newBeacon.name = "ax-matter-beacon"
newBeacon.icon = "__aix_matter__/graphics/icons/matter-beacon.png"
newBeacon.max_health = 450
newBeacon.energy_usage = "500kW"

-- Modify the base textures, as that's all we're changing here.
newBeacon.base_picture.filename = "__aix_matter__/graphics/entity/matter-beacon/beacon-base.png"
newBeacon.animation.filename = "__aix_matter__/graphics/entity/matter-beacon/beacon-antenna.png"
newBeacon.supply_area_distance = 4
newBeacon.distribution_effectivity = 0.75
newBeacon.minable.result = newBeacon.name

-- Add our new prototypes to the game
data:extend({
	newBeacon
})
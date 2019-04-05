local newBeamLaser = util.table.deepcopy(data.raw.beam["laser-beam"])
local newLaserTurret = util.table.deepcopy(data.raw["electric-turret"]["laser-turret"])

-- New beam
newBeamLaser.name = "ax-laser-beam"
newBeamLaser.head.filename = "__aix_matter__/graphics/entity/matter-laser-turret/hr-laser-body.png"
newBeamLaser.tail.filename = "__aix_matter__/graphics/entity/matter-laser-turret/hr-laser-end.png"
newBeamLaser.body[1].filename = "__aix_matter__/graphics/entity/matter-laser-turret/hr-laser-body.png"
-- newBeamLaser.action.action_delivery["target-effects"][1].damage.amount = 20
newBeamLaser.damage_interval = 13.5

-- Set new stuff for our new turret
newLaserTurret.name = "ax-matter-laser-turret"
newLaserTurret.icon = "__aix_matter__/graphics/icons/matter-laser-turret.png"
newLaserTurret.max_health = 1250
newLaserTurret.energy_source.drain = "28kW"

-- Modify the base textures, as that's all we're changing here.
newLaserTurret.base_picture.layers[1].filename = "__aix_matter__/graphics/entity/matter-laser-turret/laser-turret-base.png"
newLaserTurret.base_picture.layers[1].hr_version.filename = "__aix_matter__/graphics/entity/matter-laser-turret/hr-laser-turret-base.png"

-- Change attack params
newLaserTurret.attack_parameters.ammo_type.action.action_delivery.beam = newBeamLaser.name
newLaserTurret.attack_parameters.ammo_type.action.action_delivery.max_length = 28
newLaserTurret.attack_parameters.range = 30
newLaserTurret.attack_parameters.energy_consumption = "975kJ"

-- We get ourself back
newLaserTurret.minable.result = newLaserTurret.name

-- Add our new prototypes to the game
data:extend({newBeamLaser, newLaserTurret})

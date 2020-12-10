local singleItemSpeed = data.raw["transport-belt"]["transport-belt"].speed -- 0.0020833
local transportBelt = util.table.deepcopy(data.raw["transport-belt"]["express-transport-belt"])
transportBelt.name = "ax-matter-transport-belt"
transportBelt.minable.result = transportBelt.name
transportBelt.icon = "__aix_matter__/graphics/icons/matter-transport-belt.png"
transportBelt.icon_size = 32
transportBelt.belt_animation_set.animation_set.filename = "__aix_matter__/graphics/entity/matter-belt/transport-belt/transport-belt.png"
transportBelt.belt_animation_set.animation_set.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/transport-belt/hr-transport-belt.png"
transportBelt.speed = singleItemSpeed * 4

local transportBelt2 = util.table.deepcopy(data.raw["transport-belt"]["express-transport-belt"])
transportBelt2.name = "ax-matter-transport-belt-2"
transportBelt2.minable.result = transportBelt2.name
transportBelt2.icon = "__aix_matter__/graphics/icons/matter-transport-belt-2.png"
transportBelt2.icon_size = 32
transportBelt2.belt_animation_set.animation_set.filename = "__aix_matter__/graphics/entity/matter-belt/transport-belt/transport-belt.png"
transportBelt2.belt_animation_set.animation_set.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/transport-belt/hr-transport-belt.png"
transportBelt2.speed = singleItemSpeed * 5

local transportBelt3 = util.table.deepcopy(data.raw["transport-belt"]["express-transport-belt"])
transportBelt3.name = "ax-matter-transport-belt-3"
transportBelt3.minable.result = transportBelt3.name
transportBelt3.icon = "__aix_matter__/graphics/icons/matter-transport-belt-3.png"
transportBelt3.icon_size = 32
transportBelt3.belt_animation_set.animation_set.filename = "__aix_matter__/graphics/entity/matter-belt/transport-belt/transport-belt.png"
transportBelt3.belt_animation_set.animation_set.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/transport-belt/hr-transport-belt.png"
transportBelt3.speed = singleItemSpeed * 6

local undergroundBeltL12 = util.table.deepcopy(data.raw["underground-belt"]["express-underground-belt"])
undergroundBeltL12.name = "ax-matter-underground-belt-l12"
undergroundBeltL12.minable.result = undergroundBeltL12.name
undergroundBeltL12.icon = "__aix_matter__/graphics/icons/matter-underground-belt-l12.png"
undergroundBeltL12.icon_size = 32
undergroundBeltL12.structure.direction_in.sheet.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/l12/underground-belt-structure.png"
undergroundBeltL12.structure.direction_in.sheet.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/l12/hr-underground-belt-structure.png"
undergroundBeltL12.structure.direction_out.sheet.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/l12/underground-belt-structure.png"
undergroundBeltL12.structure.direction_out.sheet.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/l12/hr-underground-belt-structure.png"
undergroundBeltL12.structure.direction_in_side_loading.sheet.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/l12/underground-belt-structure.png"
undergroundBeltL12.structure.direction_in_side_loading.sheet.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/l12/hr-underground-belt-structure.png"
undergroundBeltL12.structure.direction_out_side_loading.sheet.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/l12/underground-belt-structure.png"
undergroundBeltL12.structure.direction_out_side_loading.sheet.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/l12/hr-underground-belt-structure.png"
undergroundBeltL12.speed = singleItemSpeed * 4
undergroundBeltL12.belt_animation_set = transportBelt.belt_animation_set
undergroundBeltL12.max_distance = 12

local undergroundBeltL16 = util.table.deepcopy(data.raw["underground-belt"]["express-underground-belt"])
undergroundBeltL16.name = "ax-matter-underground-belt-l16"
undergroundBeltL16.minable.result = undergroundBeltL16.name
undergroundBeltL16.icon = "__aix_matter__/graphics/icons/matter-underground-belt-l16.png"
undergroundBeltL16.icon_size = 32
undergroundBeltL16.structure.direction_in.sheet.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/l16/underground-belt-structure.png"
undergroundBeltL16.structure.direction_in.sheet.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/l16/hr-underground-belt-structure.png"
undergroundBeltL16.structure.direction_out.sheet.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/l16/underground-belt-structure.png"
undergroundBeltL16.structure.direction_out.sheet.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/l16/hr-underground-belt-structure.png"
undergroundBeltL16.structure.direction_in_side_loading.sheet.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/l16/underground-belt-structure.png"
undergroundBeltL16.structure.direction_in_side_loading.sheet.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/l16/hr-underground-belt-structure.png"
undergroundBeltL16.structure.direction_out_side_loading.sheet.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/l16/underground-belt-structure.png"
undergroundBeltL16.structure.direction_out_side_loading.sheet.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/l16/hr-underground-belt-structure.png"
undergroundBeltL16.speed = singleItemSpeed * 5
undergroundBeltL16.belt_animation_set = transportBelt.belt_animation_set
undergroundBeltL16.max_distance = 16

local undergroundBeltL20 = util.table.deepcopy(data.raw["underground-belt"]["express-underground-belt"])
undergroundBeltL20.name = "ax-matter-underground-belt-l20"
undergroundBeltL20.minable.result = undergroundBeltL20.name
undergroundBeltL20.icon = "__aix_matter__/graphics/icons/matter-underground-belt-l20.png"
undergroundBeltL20.icon_size = 32
undergroundBeltL20.structure.direction_in.sheet.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/l20/underground-belt-structure.png"
undergroundBeltL20.structure.direction_in.sheet.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/l20/hr-underground-belt-structure.png"
undergroundBeltL20.structure.direction_out.sheet.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/l20/underground-belt-structure.png"
undergroundBeltL20.structure.direction_out.sheet.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/l20/hr-underground-belt-structure.png"
undergroundBeltL20.structure.direction_in_side_loading.sheet.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/l20/underground-belt-structure.png"
undergroundBeltL20.structure.direction_in_side_loading.sheet.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/l20/hr-underground-belt-structure.png"
undergroundBeltL20.structure.direction_out_side_loading.sheet.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/l20/underground-belt-structure.png"
undergroundBeltL20.structure.direction_out_side_loading.sheet.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/l20/hr-underground-belt-structure.png"
undergroundBeltL20.speed = singleItemSpeed * 6
undergroundBeltL20.belt_animation_set = transportBelt.belt_animation_set
undergroundBeltL20.max_distance = 20

local splitter = util.table.deepcopy(data.raw["splitter"]["express-splitter"])
splitter.name = "ax-matter-splitter"
splitter.minable.result = splitter.name
splitter.icon = "__aix_matter__/graphics/icons/matter-splitter.png"
splitter.icon_size = 32
splitter.speed = singleItemSpeed * 4
splitter.structure.north.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/1/splitter-north.png"
splitter.structure.north.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/1/hr-splitter-north.png"
splitter.structure.east.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/1/splitter-east.png"
splitter.structure.east.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/1/hr-splitter-east.png"
splitter.structure.south.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/1/splitter-south.png"
splitter.structure.south.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/1/hr-splitter-south.png"
splitter.structure.west.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/1/splitter-west.png"
splitter.structure.west.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/1/hr-splitter-west.png"
splitter.belt_animation_set = transportBelt.belt_animation_set

local splitter2 = util.table.deepcopy(data.raw["splitter"]["express-splitter"])
splitter2.name = "ax-matter-splitter-2"
splitter2.minable.result = splitter2.name
splitter2.icon = "__aix_matter__/graphics/icons/matter-splitter-2.png"
splitter2.icon_size = 32
splitter2.speed = singleItemSpeed * 5
splitter2.structure.north.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/2/splitter-north.png"
splitter2.structure.north.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/2/hr-splitter-north.png"
splitter2.structure.east.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/2/splitter-east.png"
splitter2.structure.east.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/2/hr-splitter-east.png"
splitter2.structure.south.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/2/splitter-south.png"
splitter2.structure.south.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/2/hr-splitter-south.png"
splitter2.structure.west.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/2/splitter-west.png"
splitter2.structure.west.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/2/hr-splitter-west.png"
splitter2.belt_animation_set = transportBelt.belt_animation_set

local splitter3 = util.table.deepcopy(data.raw["splitter"]["express-splitter"])
splitter3.name = "ax-matter-splitter-3"
splitter3.minable.result = splitter3.name
splitter3.icon = "__aix_matter__/graphics/icons/matter-splitter-3.png"
splitter3.icon_size = 32
splitter3.speed = singleItemSpeed * 6
splitter3.structure.north.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/3/splitter-north.png"
splitter3.structure.north.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/3/hr-splitter-north.png"
splitter3.structure.east.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/3/splitter-east.png"
splitter3.structure.east.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/3/hr-splitter-east.png"
splitter3.structure.south.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/3/splitter-south.png"
splitter3.structure.south.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/3/hr-splitter-south.png"
splitter3.structure.west.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/3/splitter-west.png"
splitter3.structure.west.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/3/hr-splitter-west.png"
splitter3.belt_animation_set = transportBelt.belt_animation_set

data:extend(
	{
		transportBelt,
		transportBelt2,
		transportBelt3,
		undergroundBeltL12,
		undergroundBeltL16,
		undergroundBeltL20,
		splitter,
		splitter2,
		splitter3
	}
)

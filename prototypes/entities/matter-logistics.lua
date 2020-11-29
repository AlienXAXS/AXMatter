local singleItemSpeed = data.raw["transport-belt"]["transport-belt"].speed -- 0.0020833
local transportBelt = util.table.deepcopy(data.raw["transport-belt"]["express-transport-belt"])
transportBelt.name = "ax-matter-transport-belt"
transportBelt.minable.result = transportBelt.name
transportBelt.icon = "__aix_matter__/graphics/icons/matter-transport-belt.png"
transportBelt.icon_size = 32

--[[
transportBelt.belt_animation_set = {
	animation_set =
	{
		filename = "__aix_matter__/graphics/entity/matter-belt/transport-belt/transport-belt.png",
		priority = "extra-high",
		width = 64,
		height = 64,
		frame_count = 16,
		direction_count = 20,
		hr_version =
		{
			filename = "__aix_matter__/graphics/entity/matter-belt/transport-belt/hr-transport-belt.png",
			priority = "extra-high",
			width = 128,
			height = 128,
			scale = 0.5,
			frame_count = 16,
			direction_count = 20
		}
	},
}
]]--

--transportBelt.animations.filename = "__aix_matter__/graphics/entity/matter-belt/transport-belt/transport-belt.png"
--transportBelt.animations.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/transport-belt/hr-transport-belt.png"


transportBelt.belt_animation_set.animation_set.filename = "__aix_matter__/graphics/entity/matter-belt/transport-belt/transport-belt.png"
transportBelt.belt_animation_set.animation_set.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/transport-belt/hr-transport-belt.png"
transportBelt.speed = singleItemSpeed * 4

local undergroundBelt = util.table.deepcopy(data.raw["underground-belt"]["express-underground-belt"])
undergroundBelt.name = "ax-matter-underground-belt"
undergroundBelt.minable.result = undergroundBelt.name
undergroundBelt.icon = "__aix_matter__/graphics/icons/matter-underground-belt.png"
undergroundBelt.icon_size = 32
undergroundBelt.structure.direction_in.sheet.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/underground-belt-structure.png"
undergroundBelt.structure.direction_in.sheet.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/hr-underground-belt-structure.png"
undergroundBelt.structure.direction_out.sheet.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/underground-belt-structure.png"
undergroundBelt.structure.direction_out.sheet.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/hr-underground-belt-structure.png"
undergroundBelt.structure.direction_in_side_loading.sheet.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/underground-belt-structure.png"
undergroundBelt.structure.direction_in_side_loading.sheet.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/hr-underground-belt-structure.png"
undergroundBelt.structure.direction_out_side_loading.sheet.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/underground-belt-structure.png"
undergroundBelt.structure.direction_out_side_loading.sheet.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/underground-belt/hr-underground-belt-structure.png"
undergroundBelt.speed = singleItemSpeed * 4
undergroundBelt.belt_animation_set = transportBelt.belt_animation_set
undergroundBelt.max_distance = 12

local splitter = util.table.deepcopy(data.raw["splitter"]["express-splitter"])
splitter.name = "ax-matter-splitter"
splitter.minable.result = splitter.name
splitter.icon = "__aix_matter__/graphics/icons/matter-splitter.png"
splitter.icon_size = 32
splitter.speed = singleItemSpeed * 4
splitter.structure.north.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/splitter-north.png"
splitter.structure.north.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/hr-splitter-north.png"
splitter.structure.east.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/splitter-east.png"
splitter.structure.east.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/hr-splitter-east.png"
splitter.structure.south.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/splitter-south.png"
splitter.structure.south.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/hr-splitter-south.png"
splitter.structure.west.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/splitter-west.png"
splitter.structure.west.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/splitter/hr-splitter-west.png"
splitter.belt_animation_set = transportBelt.belt_animation_set

data:extend({transportBelt, undergroundBelt, splitter})

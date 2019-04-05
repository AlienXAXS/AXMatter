local gfxPath = "__aix_matter__/graphics/entity/matter-wall"
local matterWall = util.table.deepcopy(data.raw.wall["stone-wall"])

matterWall.name = "ax-matter-wall"
matterWall.icon = "__aix_matter__/graphics/icons/matter-wall.png"
matterWall.max_health = 500
matterWall.minable.result = matterWall.name

matterWall.resistances = {
    {type = "physical", decrease = 3, percent = 35},
    {type = "impact", decrease = 45, percent = 68},
    {type = "explosion", decrease = 10, percent = 45},
    {type = "fire", percent = 100},
    {type = "acid", percent = 80},
    {type = "laser", percent = 78}
}

matterWall.pictures.single.layers[1].filename = gfxPath .. "/wall-single.png"
matterWall.pictures.single.layers[1].hr_version.filename = gfxPath .. "/hr-wall-single.png"

matterWall.pictures.straight_vertical.layers[1].filename = gfxPath .. "/wall-vertical.png"
matterWall.pictures.straight_vertical.layers[1].hr_version.filename = gfxPath .. "/hr-wall-vertical.png"

matterWall.pictures.straight_horizontal.layers[1].filename = gfxPath .. "/wall-horizontal.png"
matterWall.pictures.straight_horizontal.layers[1].hr_version.filename = gfxPath .. "/hr-wall-horizontal.png"

matterWall.pictures.corner_right_down.layers[1].filename = gfxPath .. "/wall-corner-right.png"
matterWall.pictures.corner_right_down.layers[1].hr_version.filename = gfxPath .. "/hr-wall-corner-right.png"

matterWall.pictures.corner_left_down.layers[1].filename = gfxPath .. "/wall-corner-left.png"
matterWall.pictures.corner_left_down.layers[1].hr_version.filename = gfxPath .. "/hr-wall-corner-left.png"

matterWall.pictures["t_up"].layers[1].filename = gfxPath .. "/wall-t.png"
matterWall.pictures["t_up"].layers[1].hr_version.filename = gfxPath .. "/hr-wall-t.png"

matterWall.pictures.ending_right.layers[1].filename = gfxPath .. "/wall-ending-right.png"
matterWall.pictures.ending_right.layers[1].hr_version.filename = gfxPath .. "/hr-wall-ending-right.png"

matterWall.pictures.ending_left.layers[1].filename = gfxPath .. "/wall-ending-left.png"
matterWall.pictures.ending_left.layers[1].hr_version.filename = gfxPath .. "/hr-wall-ending-left.png"

matterWall.pictures.filling.filename = gfxPath .. "/wall-filling.png"
matterWall.pictures.filling.hr_version.filename = gfxPath .. "/hr-wall-filling.png"

matterWall.pictures.water_connection_patch.sheets[1].filename = gfxPath .. "/wall-patch.png"
matterWall.pictures.water_connection_patch.sheets[1].hr_version.filename = gfxPath .. "/hr-wall-patch.png"

matterWall.pictures.gate_connection_patch.sheets[1].filename = gfxPath .. "/wall-gate.png"
matterWall.pictures.gate_connection_patch.sheets[1].hr_version.filename = gfxPath .. "/hr-wall-gate.png"

-- Self healing walls
local selfHealingWall = util.table.deepcopy(matterWall)
selfHealingWall.name = "ax-matter-self-healing-wall"

selfHealingWall.pictures.single.layers[1].filename = gfxPath .. "/self-repair/wall-single.png"
selfHealingWall.pictures.single.layers[1].hr_version.filename = gfxPath .. "/self-repair/hr-wall-single.png"

selfHealingWall.pictures.straight_vertical.layers[1].filename = gfxPath .. "/self-repair/wall-vertical.png"
selfHealingWall.pictures.straight_vertical.layers[1].hr_version.filename = gfxPath .. "/self-repair/hr-wall-vertical.png"

selfHealingWall.pictures.straight_horizontal.layers[1].filename = gfxPath .. "/self-repair/wall-horizontal.png"
selfHealingWall.pictures.straight_horizontal.layers[1].hr_version.filename = gfxPath .. "/self-repair/hr-wall-horizontal.png"

selfHealingWall.pictures.corner_right_down.layers[1].filename = gfxPath .. "/self-repair/wall-corner-right.png"
selfHealingWall.pictures.corner_right_down.layers[1].hr_version.filename = gfxPath .. "/self-repair/hr-wall-corner-right.png"

selfHealingWall.pictures.corner_left_down.layers[1].filename = gfxPath .. "/self-repair/wall-corner-left.png"
selfHealingWall.pictures.corner_left_down.layers[1].hr_version.filename = gfxPath .. "/self-repair/hr-wall-corner-left.png"

selfHealingWall.pictures["t_up"].layers[1].filename = gfxPath .. "/self-repair/wall-t.png"
selfHealingWall.pictures["t_up"].layers[1].hr_version.filename = gfxPath .. "/self-repair/hr-wall-t.png"

selfHealingWall.pictures.ending_right.layers[1].filename = gfxPath .. "/self-repair/wall-ending-right.png"
selfHealingWall.pictures.ending_right.layers[1].hr_version.filename = gfxPath .. "/self-repair/hr-wall-ending-right.png"

selfHealingWall.pictures.ending_left.layers[1].filename = gfxPath .. "/self-repair/wall-ending-left.png"
selfHealingWall.pictures.ending_left.layers[1].hr_version.filename = gfxPath .. "/self-repair/hr-wall-ending-left.png"

selfHealingWall.pictures.filling.filename = gfxPath .. "/self-repair/wall-filling.png"
selfHealingWall.pictures.filling.hr_version.filename = gfxPath .. "/self-repair/hr-wall-filling.png"

selfHealingWall.pictures.water_connection_patch.sheets[1].filename = gfxPath .. "/self-repair/wall-patch.png"
selfHealingWall.pictures.water_connection_patch.sheets[1].hr_version.filename = gfxPath .. "/self-repair/hr-wall-patch.png"

selfHealingWall.pictures.gate_connection_patch.sheets[1].filename = gfxPath .. "/self-repair/wall-gate.png"
selfHealingWall.pictures.gate_connection_patch.sheets[1].hr_version.filename = gfxPath .. "/self-repair/hr-wall-gate.png"

data:extend({matterWall, selfHealingWall})

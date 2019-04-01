----------------------------------------------
-- Matter Boiler
----------------------------------------------
local boilerMk1 = util.table.deepcopy(data.raw.boiler["boiler"])
boilerMk1.name = "ax-matter-boiler-mk1"
boilerMk1.icon = "__aix_matter__/graphics/icons/matter-boiler-mk1.png"
boilerMk1.max_health = 300
boilerMk1.fluid_box.filter = "ax-liquid-matter-mixed-water"
boilerMk1.output_fluid_box.filter = "ax-liquid-matter-steam"
boilerMk1.minable.result = boilerMk1.name

boilerMk1.energy_source.effectivity = 1
boilerMk1.energy_source.smoke[1].name = "ax-power-smoke"

boilerMk1.structure.north.layers[1].filename = "__aix_matter__/graphics/entity/matter-boiler-mk1/boiler-N-idle.png"
boilerMk1.structure.north.layers[1].hr_version.filename = "__aix_matter__/graphics/entity/matter-boiler-mk1/hr-boiler-N-idle.png"

boilerMk1.structure.east.layers[1].filename = "__aix_matter__/graphics/entity/matter-boiler-mk1/boiler-E-idle.png"
boilerMk1.structure.east.layers[1].hr_version.filename = "__aix_matter__/graphics/entity/matter-boiler-mk1/hr-boiler-E-idle.png"

boilerMk1.structure.south.layers[1].filename = "__aix_matter__/graphics/entity/matter-boiler-mk1/boiler-S-idle.png"
boilerMk1.structure.south.layers[1].hr_version.filename = "__aix_matter__/graphics/entity/matter-boiler-mk1/hr-boiler-S-idle.png"

boilerMk1.structure.west.layers[1].filename = "__aix_matter__/graphics/entity/matter-boiler-mk1/boiler-W-idle.png"
boilerMk1.structure.west.layers[1].hr_version.filename = "__aix_matter__/graphics/entity/matter-boiler-mk1/hr-boiler-W-idle.png"

boilerMk1.fire.north.filename = "__aix_matter__/graphics/entity/matter-boiler-mk1/boiler-N-fire.png"
boilerMk1.fire.north.hr_version.filename = "__aix_matter__/graphics/entity/matter-boiler-mk1/hr-boiler-N-fire.png"

boilerMk1.fire.east.filename = "__aix_matter__/graphics/entity/matter-boiler-mk1/boiler-E-fire.png"
boilerMk1.fire.east.hr_version.filename = "__aix_matter__/graphics/entity/matter-boiler-mk1/hr-boiler-E-fire.png"

boilerMk1.fire.south.filename = "__aix_matter__/graphics/entity/matter-boiler-mk1/boiler-S-fire.png"
boilerMk1.fire.south.hr_version.filename = "__aix_matter__/graphics/entity/matter-boiler-mk1/hr-boiler-S-fire.png"

boilerMk1.fire.west.filename = "__aix_matter__/graphics/entity/matter-boiler-mk1/boiler-W-fire.png"
boilerMk1.fire.west.hr_version.filename = "__aix_matter__/graphics/entity/matter-boiler-mk1/hr-boiler-W-fire.png"

----------------------------------------------
-- Matter Power Generator
----------------------------------------------

local matterPowerGeneratorMk1 = util.table.deepcopy(data.raw.generator["steam-engine"])
matterPowerGeneratorMk1.name = "ax-matter-power-generator-mk1"
matterPowerGeneratorMk1.icon = "__aix_matter__/graphics/icons/matter-power-generator-mk1.png"
matterPowerGeneratorMk1.max_health = 500
matterPowerGeneratorMk1.minable.result = matterPowerGeneratorMk1.name
matterPowerGeneratorMk1.fluid_box.filter = "ax-liquid-matter-steam"
matterPowerGeneratorMk1.effectivity = 2.5
matterPowerGeneratorMk1.horizontal_animation.layers[1].filename = "__aix_matter__/graphics/entity/matter-power-generator-mk1/steam-engine-H.png"
matterPowerGeneratorMk1.horizontal_animation.layers[1].hr_version.filename = "__aix_matter__/graphics/entity/matter-power-generator-mk1/hr-steam-engine-H.png"
matterPowerGeneratorMk1.vertical_animation.layers[1].filename = "__aix_matter__/graphics/entity/matter-power-generator-mk1/steam-engine-V.png"
matterPowerGeneratorMk1.vertical_animation.layers[1].hr_version.filename = "__aix_matter__/graphics/entity/matter-power-generator-mk1/hr-steam-engine-V.png"
matterPowerGeneratorMk1.smoke[1].name = "ax-power-smoke"

function trivial_smoke(opts)
  return
  {
    type = "trivial-smoke",
    name = opts.name,
    duration = opts.duration or 600,
    fade_in_duration = opts.fade_in_duration or 0,
    fade_away_duration = opts.fade_away_duration or ((opts.duration or 600) - (opts.fade_in_duration or 0)),
    spread_duration = opts.spread_duration or 600,
    start_scale = opts.start_scale or 0.20,
    end_scale = opts.end_scale or 1.0,
    color = opts.color,
    cyclic = true,
    affected_by_wind = opts.affected_by_wind or true,
    animation =
    {
      width = 152,
      height = 120,
      line_length = 5,
      frame_count = 60,
      shift = {-0.53125, -0.4375},
      priority = "high",
      animation_speed = 0.25,
      filename = "__base__/graphics/entity/smoke/smoke.png",
      flags = { "smoke" }
    }
  }
end

data:extend({
    boilerMk1,
    matterPowerGeneratorMk1,
    trivial_smoke{name = "ax-power-smoke", color = {r = 0.4, g = 0.4, b = 1.0, a = 0.4}}
})
data:extend({
{
    type = "resource",
    name = "ax-matter-coal",
    icon = "__ax_matter__/graphics/icons/matter-ores/matter-coal.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order="a-b-e",
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
	enabled=false,
    minable =
    {
      mining_particle = "stone-particle",
      mining_time = 1.75,
      result = "ax-matter-coal",
      fluid_amount = 55,
      required_fluid = "ax-liquid-matter"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings{
      name = "ax-matter-ore",
      order = "c",
      base_density = 0,
      base_spots_per_km2 = 0,
      has_starting_area_placement = false,
      random_spot_size_minimum = 0,
      random_spot_size_maximum = 0,
      resource_index = resource_autoplace.get_next_resource_index(),
      regular_rq_factor_multiplier = 0
    },
    stage_counts = {10000, 6330, 3670, 1930, 870, 270, 100, 50},
    stages =
    {
      sheet =
      {
        filename = "__ax_matter__/graphics/entity/matter-coal/matter-coal.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version =
        {
          filename = "__ax_matter__/graphics/entity/matter-coal/hr-matter-coal.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5
        }
      }
    },
    stages_effect =
    {
      sheet =
      {
        filename = "__ax_matter__/graphics/entity/matter-ore/matter-ore-glow.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        frame_count = 8,
        variation_count = 8,
        blend_mode = "additive",
        flags = {"light"},
        hr_version =
        {
          filename = "__ax_matter__/graphics/entity/matter-ore/hr-matter-ore-glow.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5,
          blend_mode = "additive",
          flags = {"light"}
        }
      }
    },
    effect_animation_period = 5,
    effect_animation_period_deviation = 1,
    effect_darkness_multiplier = 3.6,
    min_effect_alpha = 0.2,
    max_effect_alpha = 0.25,
    map_color = {r=0.803, g=0.388, b=0.215}
  }
})
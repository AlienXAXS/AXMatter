data:extend({
  {
    type = "lab",
    name = "ax-matter-lab",
    icon = "__ax_matter__/graphics/icons/matter-lab.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "lab"},
    max_health = 150,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    light = {intensity = 0.75, size = 8, color = {r = 1.0, g = 1.0, b = 1.0}},
    on_animation =
    {
      layers =
      {
        {
          filename = "__ax_matter__/graphics/entity/matter-lab/matter-lab.png",
          width = 98,
          height = 87,
          frame_count = 33,
          line_length = 11,
          animation_speed = 1 / 3,
          shift = util.by_pixel(0, 1.5),
          hr_version =
          {
            filename = "__ax_matter__/graphics/entity/matter-lab/hr-matter-lab.png",
            width = 194,
            height = 174,
            frame_count = 33,
            line_length = 11,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 1.5),
            scale = 0.5
          }
        },
        {
          filename = "__ax_matter__/graphics/entity/matter-lab/matter-lab-integration.png",
          width = 122,
          height = 81,
          frame_count = 1,
          line_length = 1,
          repeat_count = 33,
          animation_speed = 1 / 3,
          shift = util.by_pixel(0, 15.5),
          hr_version =
          {
            filename = "__ax_matter__/graphics/entity/matter-lab/hr-matter-lab-integration.png",
            width = 242,
            height = 162,
            frame_count = 1,
            line_length = 1,
            repeat_count = 33,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 15.5),
            scale = 0.5
          }
        },
        {
          filename = "__ax_matter__/graphics/entity/matter-lab/matter-lab-shadow.png",
          width = 122,
          height = 68,
          frame_count = 1,
          line_length = 1,
          repeat_count = 33,
          animation_speed = 1 / 3,
          shift = util.by_pixel(13, 11),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__ax_matter__/graphics/entity/matter-lab/hr-matter-lab-shadow.png",
            width = 242,
            height = 136,
            frame_count = 1,
            line_length = 1,
            repeat_count = 33,
            animation_speed = 1 / 3,
            shift = util.by_pixel(13, 11),
            scale = 0.5,
            draw_as_shadow = true
          }
        }
      }
    },
    off_animation =
    {
      layers =
      {
        {
          filename = "__ax_matter__/graphics/entity/matter-lab/matter-lab.png",
          width = 98,
          height = 87,
          frame_count = 1,
          shift = util.by_pixel(0, 1.5),
          hr_version =
          {
            filename = "__ax_matter__/graphics/entity/matter-lab/hr-matter-lab.png",
            width = 194,
            height = 174,
            frame_count = 1,
            shift = util.by_pixel(0, 1.5),
            scale = 0.5
          }
        },
        {
          filename = "__ax_matter__/graphics/entity/matter-lab/matter-lab-integration.png",
          width = 122,
          height = 81,
          frame_count = 1,
          shift = util.by_pixel(0, 15.5),
          hr_version =
          {
            filename = "__ax_matter__/graphics/entity/matter-lab/hr-matter-lab-integration.png",
            width = 242,
            height = 162,
            frame_count = 1,
            shift = util.by_pixel(0, 15.5),
            scale = 0.5
          }
        },
        {
          filename = "__ax_matter__/graphics/entity/matter-lab/matter-lab-shadow.png",
          width = 122,
          height = 68,
          frame_count = 1,
          shift = util.by_pixel(13, 11),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__ax_matter__/graphics/entity/matter-lab/hr-matter-lab-shadow.png",
            width = 242,
            height = 136,
            frame_count = 1,
            shift = util.by_pixel(13, 11),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7
      },
      apparent_volume = 1
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "120kW",
    researching_speed = 1,
    inputs =
    {
      "ax-matter-science-matter-infused-automation",
      "ax-matter-science-matter-infused-logistic",
      "ax-matter-science-matter-infused-chemical",
      "ax-matter-science-matter-infused-military",
      "ax-matter-science-matter-infused-production",
      "ax-matter-science-matter-infused-utility",
      "ax-matter-science-matter-infused-space",
      "automation-science-pack",
      "logistic-science-pack",
      "chemical-science-pack",
      "military-science-pack",
      "production-science-pack",
      "utility-science-pack",
      "space-science-pack"
    },
    module_specification =
    {
      module_slots = 1,
      max_entity_info_module_icons_per_row = 3,
      max_entity_info_module_icon_rows = 1,
      module_info_icon_shift = {0, 0.9}
    }
  }
})
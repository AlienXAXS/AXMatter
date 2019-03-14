data:extend({
{
    type = "assembling-machine",
    name = "ax-matter-cracker",
    icon = "__ax_matter__/graphics/icons/matter-cracker.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.1, result = "ax-matter-cracker"},
    max_health = 350,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.5, -2.2}, {1.5, 1.5}},

    always_draw_idle_animation = true,
    idle_animation =
    {
      layers =
      {
        -- ax-matter-cracker A
        {
          filename = "__ax_matter__/graphics/entity/matter-cracker/matter-cracker-C.png",
          priority = "high",
          line_length = 8,
          width = 119,
          height = 107,
          frame_count = 64,
          shift = util.by_pixel(-0.5, -26.5),
          hr_version =
          {
            filename = "__ax_matter__/graphics/entity/matter-cracker/hr-matter-cracker-C.png",
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 237,
            height = 214,
            frame_count = 64,
            shift = util.by_pixel(-0.25, -26.5)
          }
        },
        {
          filename = "__ax_matter__/graphics/entity/matter-cracker/matter-cracker-C-shadow.png",
          draw_as_shadow = true,
          priority = "high",
          line_length = 8,
          width = 132,
          height = 74,
          frame_count = 64,
          shift = util.by_pixel(20, -10),
          hr_version =
          {
            filename = "__ax_matter__/graphics/entity/matter-cracker/hr-matter-cracker-C-shadow.png",
            draw_as_shadow = true,
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 279,
            height = 152,
            frame_count = 64,
            shift = util.by_pixel(16.75, -10)
          }
        },
        -- ax-matter-cracker B
        {
          filename = "__ax_matter__/graphics/entity/matter-cracker/matter-cracker-B.png",
          priority = "high",
          line_length = 8,
          width = 78,
          height = 117,
          frame_count = 64,
          shift = util.by_pixel(23, 6.5),
          hr_version =
          {
            filename = "__ax_matter__/graphics/entity/matter-cracker/hr-matter-cracker-B.png",
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 156,
            height = 234,
            frame_count = 64,
            shift = util.by_pixel(23, 6.5)
          }
        },
        {
          filename = "__ax_matter__/graphics/entity/matter-cracker/matter-cracker-B-shadow.png",
          draw_as_shadow = true,
          priority = "high",
          line_length = 8,
          width = 124,
          height = 74,
          frame_count = 64,
          shift = util.by_pixel(63, 16),
          hr_version =
          {
            filename = "__ax_matter__/graphics/entity/matter-cracker/hr-matter-cracker-B-shadow.png",
            draw_as_shadow = true,
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 251,
            height = 149,
            frame_count = 64,
            shift = util.by_pixel(63.25, 15.25)
          }
        },
        -- ax-matter-cracker A
        {
          filename = "__ax_matter__/graphics/entity/matter-cracker/matter-cracker-A.png",
          priority = "high",
          line_length = 8,
          width = 70,
          height = 123,
          frame_count = 64,
          shift = util.by_pixel(-26, 3.5),
          hr_version =
          {
            filename = "__ax_matter__/graphics/entity/matter-cracker/hr-matter-cracker-A.png",
            priority = "high",
            scale = 0.5,
            line_length = 8,
            width = 139,
            height = 246,
            frame_count = 64,
            shift = util.by_pixel(-26.25, 3.5)
          }
        },
        {
          filename = "__ax_matter__/graphics/entity/matter-cracker/matter-cracker-A-shadow.png",
          priority = "high",
          draw_as_shadow = true,
          line_length = 8,
          width = 108,
          height = 54,
          frame_count = 64,
          shift = util.by_pixel(6, 27),
          hr_version =
          {
            filename = "__ax_matter__/graphics/entity/matter-cracker/hr-matter-cracker-A-shadow.png",
            priority = "high",
            draw_as_shadow = true,
            scale = 0.5,
            line_length = 8,
            width = 230,
            height = 124,
            frame_count = 64,
            shift = util.by_pixel(8.5, 23.5)
          }
        }
      }
    },

    animation =
    {
      layers =
      {
        -- ax-matter-cracker C
        {
          filename = "__ax_matter__/graphics/entity/matter-cracker/matter-cracker-C-light.png",
          priority = "high",
          blend_mode = "additive", -- ax-matter-cracker
          line_length = 8,
          width = 96,
          height = 104,
          frame_count = 64,
          shift = util.by_pixel(0, -27),

          hr_version =
          {
            filename = "__ax_matter__/graphics/entity/matter-cracker/hr-matter-cracker-C-light.png",
            priority = "high",
            scale = 0.5,
            blend_mode = "additive", -- ax-matter-cracker
            line_length = 8,
            width = 190,
            height = 207,
            frame_count = 64,
            shift = util.by_pixel(0, -27.25)
          }
        },
        -- ax-matter-cracker B
        {
          filename = "__ax_matter__/graphics/entity/matter-cracker/matter-cracker-B-light.png",
          priority = "high",
          blend_mode = "additive", -- ax-matter-cracker
          line_length = 8,
          width = 65,
          height = 103,
          frame_count = 64,
          shift = util.by_pixel(16.5, 0.5),
          hr_version =
          {
            filename = "__ax_matter__/graphics/entity/matter-cracker/hr-matter-cracker-B-light.png",
            priority = "high",
            scale = 0.5,
            blend_mode = "additive", -- ax-matter-cracker
            line_length = 8,
            width = 131,
            height = 206,
            frame_count = 64,
            shift = util.by_pixel(16.75, 0.5)
          }
        },
        -- ax-matter-cracker A
        {
          filename = "__ax_matter__/graphics/entity/matter-cracker/matter-cracker-A-light.png",
          priority = "high",
          blend_mode = "additive", -- ax-matter-cracker
          line_length = 8,
          width = 55,
          height = 98,
          frame_count = 64,
          shift = util.by_pixel(-23.5, -2),
          hr_version =
          {
            filename = "__ax_matter__/graphics/entity/matter-cracker/hr-matter-cracker-A-light.png",
            priority = "high",
            scale = 0.5,
            blend_mode = "additive", -- ax-matter-cracker
            line_length = 8,
            width = 108,
            height = 197,
            frame_count = 64,
            shift = util.by_pixel(-23.5, -1.75)
          }
        }
      }
    },

    working_visualisations =
    {
      {
        effect = "uranium-glow", -- changes alpha based on energy source light intensity
        light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 0.0, g = 1.0, b = 0.0}}
      }
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/assembling-machine-t2-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t2-2.ogg",
          volume = 0.8
        }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5
    },
    crafting_speed = 1,
    crafting_categories = {"ax-matter-cracker"},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.04 / 2.5
    },
    energy_usage = "350kW",
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  }
})
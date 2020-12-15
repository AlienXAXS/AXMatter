local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

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
transportBelt2.belt_animation_set.animation_set.filename = "__aix_matter__/graphics/entity/matter-belt/transport-belt/transport-belt-2.png"
transportBelt2.belt_animation_set.animation_set.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/transport-belt/hr-transport-belt-2.png"
transportBelt2.speed = singleItemSpeed * 5

local transportBelt3 = util.table.deepcopy(data.raw["transport-belt"]["express-transport-belt"])
transportBelt3.name = "ax-matter-transport-belt-3"
transportBelt3.minable.result = transportBelt3.name
transportBelt3.icon = "__aix_matter__/graphics/icons/matter-transport-belt-3.png"
transportBelt3.icon_size = 32
transportBelt3.belt_animation_set.animation_set.filename = "__aix_matter__/graphics/entity/matter-belt/transport-belt/transport-belt-3.png"
transportBelt3.belt_animation_set.animation_set.hr_version.filename = "__aix_matter__/graphics/entity/matter-belt/transport-belt/hr-transport-belt-3.png"
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


-- Corpses
data:extend({
  {
    type = "corpse",
    name = "ax-matter-splitter-corpse",
    icon = "__aix_matter__/graphics/icons/matter-splitter.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "not-on-map"},
    subgroup = "belt-remnants",
    order = "a-i-a",
    selection_box = {{-0.9, -0.5}, {0.9, 0.5}},
    tile_width = 2,
    tile_height = 1,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation =
    {
      filename = "__aix_matter__/graphics/entity/matter-belt/splitter/1/remnants/express-splitter-remnants.png",
      line_length = 1,
      width = 96,
      height = 96,
      frame_count = 1,
      variation_count = 1,
      axially_symmetrical = false,
      direction_count = 4,
      shift = util.by_pixel(4, 1.5),
      hr_version =
      {
        filename = "__aix_matter__/graphics/entity/matter-belt/splitter/1/remnants/hr-express-splitter-remnants.png",
        line_length = 1,
        width = 190,
        height = 190,
        frame_count = 1,
        variation_count = 1,
        axially_symmetrical = false,
        direction_count = 4,
        shift = util.by_pixel(3.5, 1.5),
        scale = 0.5
      }
    }
  },
  {
    type = "corpse",
    name = "ax-matter-splitter-2-corpse",
    icon = "__aix_matter__/graphics/icons/matter-splitter-2.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "not-on-map"},
    subgroup = "belt-remnants",
    order = "a-i-a",
    selection_box = {{-0.9, -0.5}, {0.9, 0.5}},
    tile_width = 2,
    tile_height = 1,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation =
    {
      filename = "__aix_matter__/graphics/entity/matter-belt/splitter/2/remnants/express-splitter-remnants.png",
      line_length = 1,
      width = 96,
      height = 96,
      frame_count = 1,
      variation_count = 1,
      axially_symmetrical = false,
      direction_count = 4,
      shift = util.by_pixel(4, 1.5),
      hr_version =
      {
        filename = "__aix_matter__/graphics/entity/matter-belt/splitter/2/remnants/hr-express-splitter-remnants.png",
        line_length = 1,
        width = 190,
        height = 190,
        frame_count = 1,
        variation_count = 1,
        axially_symmetrical = false,
        direction_count = 4,
        shift = util.by_pixel(3.5, 1.5),
        scale = 0.5
      }
    }
  },
  {
    type = "corpse",
    name = "ax-matter-splitter-3-corpse",
    icon = "__aix_matter__/graphics/icons/matter-splitter-3.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "not-on-map"},
    subgroup = "belt-remnants",
    order = "a-i-a",
    selection_box = {{-0.9, -0.5}, {0.9, 0.5}},
    tile_width = 2,
    tile_height = 1,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation =
    {
      filename = "__aix_matter__/graphics/entity/matter-belt/splitter/3/remnants/express-splitter-remnants.png",
      line_length = 1,
      width = 96,
      height = 96,
      frame_count = 1,
      variation_count = 1,
      axially_symmetrical = false,
      direction_count = 4,
      shift = util.by_pixel(4, 1.5),
      hr_version =
      {
        filename = "__aix_matter__/graphics/entity/matter-belt/splitter/3/remnants/hr-express-splitter-remnants.png",
        line_length = 1,
        width = 190,
        height = 190,
        frame_count = 1,
        variation_count = 1,
        axially_symmetrical = false,
        direction_count = 4,
        shift = util.by_pixel(3.5, 1.5),
        scale = 0.5
      }
    }
  },
})

local mb_anim_set_1 =
{
  animation_set =
  {
    filename = "__aix_matter__/graphics/entity/matter-belt/transport-belt/transport-belt.png",
    priority = "extra-high",
    width = 64,
    height = 64,
    frame_count = 32,
    direction_count = 20,
    hr_version =
    {
      filename = "__aix_matter__/graphics/entity/matter-belt/transport-belt/hr-transport-belt.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
      frame_count = 32,
      direction_count = 20
    }
  },
}

local mb_anim_set_2 =
{
  animation_set =
  {
    filename = "__aix_matter__/graphics/entity/matter-belt/transport-belt/transport-belt-2.png",
    priority = "extra-high",
    width = 64,
    height = 64,
    frame_count = 32,
    direction_count = 20,
    hr_version =
    {
      filename = "__aix_matter__/graphics/entity/matter-belt/transport-belt/hr-transport-belt-2.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
      frame_count = 32,
      direction_count = 20
    }
  },
}

local mb_anim_set_3 =
{
  animation_set =
  {
    filename = "__aix_matter__/graphics/entity/matter-belt/transport-belt/transport-belt-3.png",
    priority = "extra-high",
    width = 64,
    height = 64,
    frame_count = 32,
    direction_count = 20,
    hr_version =
    {
      filename = "__aix_matter__/graphics/entity/matter-belt/transport-belt/hr-transport-belt-3.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
      frame_count = 32,
      direction_count = 20
    }
  },
}

data:extend({
  {
    type = "splitter",
    name = "ax-matter-splitter",
    icon = "__aix_matter__/graphics/icons/matter-splitter.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "ax-matter-splitter"},
    max_health = 220,
    corpse = "ax-matter-splitter-corpse",
    dying_explosion = "express-splitter-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 60
      },
	  {
        type = "acid",
        percent = 25
      }
    },
    collision_box = {{-0.9, -0.4}, {0.9, 0.4}},
    selection_box = {{-0.9, -0.5}, {0.9, 0.5}},
    damaged_trigger_effect = hit_effects.entity(),
    animation_speed_coefficient = 32,
    structure_animation_speed_coefficient = 1.2,
    structure_animation_movement_cooldown = 10,
    belt_animation_set = mb_anim_set_1,
    fast_replaceable_group = "transport-belt",
    speed = singleItemSpeed * 4,
    working_sound = sounds.express_splitter,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    structure =
    {
      north =
      {
        filename = "__aix_matter__/graphics/entity/matter-belt/splitter/1/express-splitter-north.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 82,
        height = 36,
        shift = util.by_pixel(6, 0),
        hr_version =
        {
          filename = "__aix_matter__/graphics/entity/matter-belt/splitter/1/hr-express-splitter-north.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 160,
          height = 70,
          shift = util.by_pixel(7, 0),
          scale = 0.5
        }
      },
      east =
      {
        filename = "__aix_matter__/graphics/entity/matter-belt/splitter/1/express-splitter-east.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 46,
        height = 44,
        shift = util.by_pixel(4, 12),
        hr_version =
        {
          filename = "__aix_matter__/graphics/entity/matter-belt/splitter/1/hr-express-splitter-east.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 90,
          height = 84,
          shift = util.by_pixel(4, 13),
          scale = 0.5
        }
      },
      south =
      {
        filename = "__aix_matter__/graphics/entity/matter-belt/splitter/1/express-splitter-south.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 82,
        height = 32,
        shift = util.by_pixel(4, 0),
        hr_version =
        {
          filename = "__aix_matter__/graphics/entity/matter-belt/splitter/1/hr-express-splitter-south.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 164,
          height = 64,
          shift = util.by_pixel(4, 0),
          scale = 0.5
        }
      },
      west =
      {
        filename = "__aix_matter__/graphics/entity/matter-belt/splitter/1/express-splitter-west.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 46,
        height = 44,
        shift = util.by_pixel(6, 12),
        hr_version =
        {
          filename = "__aix_matter__/graphics/entity/matter-belt/splitter/1/hr-express-splitter-west.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 94,
          height = 86,
          shift = util.by_pixel(5, 12),
          scale = 0.5
        }
      }
    },
    structure_patch =
    {
      north = util.empty_sprite(),
      east =
      {
        filename = "__aix_matter__/graphics/entity/matter-belt/splitter/1/express-splitter-east-top_patch.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 46,
        height = 52,
        shift = util.by_pixel(4, -20),
        hr_version =
        {
          filename = "__aix_matter__/graphics/entity/matter-belt/splitter/1/hr-express-splitter-east-top_patch.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 90,
          height = 104,
          shift = util.by_pixel(4, -20),
          scale = 0.5
        }
      },
      south = util.empty_sprite(),
      west =
      {
        filename = "__aix_matter__/graphics/entity/matter-belt/splitter/1/express-splitter-west-top_patch.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 46,
        height = 48,
        shift = util.by_pixel(6, -18),
        hr_version =
        {
          filename = "__aix_matter__/graphics/entity/matter-belt/splitter/1/hr-express-splitter-west-top_patch.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 94,
          height = 96,
          shift = util.by_pixel(5, -18),
          scale = 0.5
        }
      }
    }
  },
  {
    type = "splitter",
    name = "ax-matter-splitter-2",
    icon = "__aix_matter__/graphics/icons/matter-splitter-2.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "ax-matter-splitter-2"},
    max_health = 220,
    corpse = "ax-matter-splitter-2-corpse",
    dying_explosion = "express-splitter-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 60
      },
	  {
        type = "acid",
        percent = 25
      }
    },
    collision_box = {{-0.9, -0.4}, {0.9, 0.4}},
    selection_box = {{-0.9, -0.5}, {0.9, 0.5}},
    damaged_trigger_effect = hit_effects.entity(),
    animation_speed_coefficient = 32,
    structure_animation_speed_coefficient = 1.2,
    structure_animation_movement_cooldown = 10,
    belt_animation_set = mb_anim_set_2,
    fast_replaceable_group = "transport-belt",
    speed = singleItemSpeed * 5,
    working_sound = sounds.express_splitter,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    structure =
    {
      north =
      {
        filename = "__aix_matter__/graphics/entity/matter-belt/splitter/2/express-splitter-north.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 82,
        height = 36,
        shift = util.by_pixel(6, 0),
        hr_version =
        {
          filename = "__aix_matter__/graphics/entity/matter-belt/splitter/2/hr-express-splitter-north.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 160,
          height = 70,
          shift = util.by_pixel(7, 0),
          scale = 0.5
        }
      },
      east =
      {
        filename = "__aix_matter__/graphics/entity/matter-belt/splitter/2/express-splitter-east.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 46,
        height = 44,
        shift = util.by_pixel(4, 12),
        hr_version =
        {
          filename = "__aix_matter__/graphics/entity/matter-belt/splitter/2/hr-express-splitter-east.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 90,
          height = 84,
          shift = util.by_pixel(4, 13),
          scale = 0.5
        }
      },
      south =
      {
        filename = "__aix_matter__/graphics/entity/matter-belt/splitter/2/express-splitter-south.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 82,
        height = 32,
        shift = util.by_pixel(4, 0),
        hr_version =
        {
          filename = "__aix_matter__/graphics/entity/matter-belt/splitter/2/hr-express-splitter-south.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 164,
          height = 64,
          shift = util.by_pixel(4, 0),
          scale = 0.5
        }
      },
      west =
      {
        filename = "__aix_matter__/graphics/entity/matter-belt/splitter/2/express-splitter-west.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 46,
        height = 44,
        shift = util.by_pixel(6, 12),
        hr_version =
        {
          filename = "__aix_matter__/graphics/entity/matter-belt/splitter/2/hr-express-splitter-west.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 94,
          height = 86,
          shift = util.by_pixel(5, 12),
          scale = 0.5
        }
      }
    },
    structure_patch =
    {
      north = util.empty_sprite(),
      east =
      {
        filename = "__aix_matter__/graphics/entity/matter-belt/splitter/2/express-splitter-east-top_patch.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 46,
        height = 52,
        shift = util.by_pixel(4, -20),
        hr_version =
        {
          filename = "__aix_matter__/graphics/entity/matter-belt/splitter/2/hr-express-splitter-east-top_patch.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 90,
          height = 104,
          shift = util.by_pixel(4, -20),
          scale = 0.5
        }
      },
      south = util.empty_sprite(),
      west =
      {
        filename = "__aix_matter__/graphics/entity/matter-belt/splitter/2/express-splitter-west-top_patch.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 46,
        height = 48,
        shift = util.by_pixel(6, -18),
        hr_version =
        {
          filename = "__aix_matter__/graphics/entity/matter-belt/splitter/2/hr-express-splitter-west-top_patch.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 94,
          height = 96,
          shift = util.by_pixel(5, -18),
          scale = 0.5
        }
      }
    }
  },
  {
    type = "splitter",
    name = "ax-matter-splitter-3",
    icon = "__aix_matter__/graphics/icons/matter-splitter-3.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "ax-matter-splitter-3"},
    max_health = 220,
    corpse = "ax-matter-splitter-3-corpse",
    dying_explosion = "express-splitter-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 60
      },
	  {
        type = "acid",
        percent = 25
      }
    },
    collision_box = {{-0.9, -0.4}, {0.9, 0.4}},
    selection_box = {{-0.9, -0.5}, {0.9, 0.5}},
    damaged_trigger_effect = hit_effects.entity(),
    animation_speed_coefficient = 32,
    structure_animation_speed_coefficient = 1.2,
    structure_animation_movement_cooldown = 10,
    belt_animation_set = mb_anim_set_3,
    fast_replaceable_group = "transport-belt",
    speed = singleItemSpeed * 6,
    working_sound = sounds.express_splitter,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    structure =
    {
      north =
      {
        filename = "__aix_matter__/graphics/entity/matter-belt/splitter/3/express-splitter-north.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 82,
        height = 36,
        shift = util.by_pixel(6, 0),
        hr_version =
        {
          filename = "__aix_matter__/graphics/entity/matter-belt/splitter/3/hr-express-splitter-north.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 160,
          height = 70,
          shift = util.by_pixel(7, 0),
          scale = 0.5
        }
      },
      east =
      {
        filename = "__aix_matter__/graphics/entity/matter-belt/splitter/3/express-splitter-east.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 46,
        height = 44,
        shift = util.by_pixel(4, 12),
        hr_version =
        {
          filename = "__aix_matter__/graphics/entity/matter-belt/splitter/3/hr-express-splitter-east.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 90,
          height = 84,
          shift = util.by_pixel(4, 13),
          scale = 0.5
        }
      },
      south =
      {
        filename = "__aix_matter__/graphics/entity/matter-belt/splitter/3/express-splitter-south.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 82,
        height = 32,
        shift = util.by_pixel(4, 0),
        hr_version =
        {
          filename = "__aix_matter__/graphics/entity/matter-belt/splitter/3/hr-express-splitter-south.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 164,
          height = 64,
          shift = util.by_pixel(4, 0),
          scale = 0.5
        }
      },
      west =
      {
        filename = "__aix_matter__/graphics/entity/matter-belt/splitter/3/express-splitter-west.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 46,
        height = 44,
        shift = util.by_pixel(6, 12),
        hr_version =
        {
          filename = "__aix_matter__/graphics/entity/matter-belt/splitter/3/hr-express-splitter-west.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 94,
          height = 86,
          shift = util.by_pixel(5, 12),
          scale = 0.5
        }
      }
    },
    structure_patch =
    {
      north = util.empty_sprite(),
      east =
      {
        filename = "__aix_matter__/graphics/entity/matter-belt/splitter/3/express-splitter-east-top_patch.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 46,
        height = 52,
        shift = util.by_pixel(4, -20),
        hr_version =
        {
          filename = "__aix_matter__/graphics/entity/matter-belt/splitter/3/hr-express-splitter-east-top_patch.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 90,
          height = 104,
          shift = util.by_pixel(4, -20),
          scale = 0.5
        }
      },
      south = util.empty_sprite(),
      west =
      {
        filename = "__aix_matter__/graphics/entity/matter-belt/splitter/3/express-splitter-west-top_patch.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 46,
        height = 48,
        shift = util.by_pixel(6, -18),
        hr_version =
        {
          filename = "__aix_matter__/graphics/entity/matter-belt/splitter/3/hr-express-splitter-west-top_patch.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 94,
          height = 96,
          shift = util.by_pixel(5, -18),
          scale = 0.5
        }
      }
    }
  },
})

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

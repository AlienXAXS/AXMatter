data:extend({
    {
        type = "assembling-machine",
        name = "ax-oxygen-collector-mk1",
        icon = "__aix_matter__/graphics/icons/oxygen-collector/oxygen-collector-mk1.png",
        icon_size = 32,
        flags = {
            "placeable-neutral",
            "placeable-player",
            "player-creation"
        },
        minable = {
            hardness = 0.2,
            mining_time = 0.5,
            result = "ax-oxygen-collector-mk1"
        },
        fast_replaceable_group = "ax-oxygen-collector",
        max_health = 150,
        corpse = "big-remnants",
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        animation = {
            filename = "__aix_matter__/graphics/entity/oxygen-collector/oxygen-collector-mk1.png",
            priority = "high",
            width = 99,
            height = 102,
            frame_count = 32,
            line_length = 8,
            shift = {0.4, -0.06}
        },
        fluid_boxes = {
            {
                production_type = "output",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = 1,
                pipe_connections = {{type = "output", position = {0, 2}}}
            },
            off_when_no_fluid_recipe = true
        },
        open_sound = {
            filename = "__base__/sound/machine-open.ogg",
            volume = 0.85
        },
        close_sound = {
            filename = "__base__/sound/machine-close.ogg",
            volume = 0.75
        },
        working_sound = {
            sound = {
                {
                    filename = "__base__/sound/electric-furnace.ogg",
                    volume = 0.7
                }
            },
            idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
            apparent_volume = 1.5,
        },
        crafting_categories = {"ax-oxygen-production"},
        source_inventory_size = 1,
        result_inventory_size = 1,
        crafting_speed = 1.0,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions = -0.06
        },
        energy_usage = "200kW",
        ingredient_count = 1,
        module_slots = 0,
        fixed_recipe = "ax-dirty-air-flow"
    },
    --------------------------------------------------------------------------------------------------------------------------------------------
    {
        type = "assembling-machine",
        name = "ax-oxygen-collector-mk2",
        icon = "__aix_matter__/graphics/icons/oxygen-collector/oxygen-collector-mk2.png",
        icon_size = 32,
        flags = {
            "placeable-neutral",
            "placeable-player",
            "player-creation"
        },
        minable = {
            hardness = 0.2,
            mining_time = 0.5,
            result = "ax-oxygen-collector-mk2"
        },
        fast_replaceable_group = "ax-oxygen-collector",
        max_health = 250,
        corpse = "big-remnants",
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        animation = {
            filename = "__aix_matter__/graphics/entity/oxygen-collector/oxygen-collector-mk2.png",
            priority = "high",
            width = 99,
            height = 102,
            frame_count = 32,
            line_length = 8,
            shift = {0.4, -0.06}
        },
        fluid_boxes = {
            {
                production_type = "output",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = 1,
                pipe_connections = {{type = "output", position = {0, 2}}}
            },
            off_when_no_fluid_recipe = true
        },
        open_sound = {
            filename = "__base__/sound/machine-open.ogg",
            volume = 0.85
        },
        close_sound = {
            filename = "__base__/sound/machine-close.ogg",
            volume = 0.75
        },
        working_sound = {
            sound = {
                {
                    filename = "__base__/sound/electric-furnace.ogg",
                    volume = 0.7
                }
            },
            idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
            apparent_volume = 1.5,
        },
        crafting_categories = {"ax-oxygen-production"},
        source_inventory_size = 1,
        result_inventory_size = 1,
        crafting_speed = 1.275,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions = -0.06
        },
        energy_usage = "200kW",
        ingredient_count = 1,
        module_slots = 0,
        fixed_recipe = "ax-dirty-air-flow"
    },
    --------------------------------------------------------------------------------------------------------------------------------------------
    {
        type = "assembling-machine",
        name = "ax-oxygen-collector-mk3",
        icon = "__aix_matter__/graphics/icons/oxygen-collector/oxygen-collector-mk3.png",
        icon_size = 32,
        flags = {
            "placeable-neutral",
            "placeable-player",
            "player-creation"
        },
        minable = {
            hardness = 0.2,
            mining_time = 0.5,
            result = "ax-oxygen-collector-mk3"
        },
        fast_replaceable_group = "ax-oxygen-collector",
        max_health = 375,
        corpse = "big-remnants",
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        animation = {
            filename = "__aix_matter__/graphics/entity/oxygen-collector/oxygen-collector-mk3.png",
            priority = "high",
            width = 99,
            height = 102,
            frame_count = 32,
            line_length = 8,
            shift = {0.4, -0.06}
        },
        fluid_boxes = {
            {
                production_type = "output",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = 1,
                pipe_connections = {{type = "output", position = {0, 2}}}
            },
            off_when_no_fluid_recipe = true
        },
        open_sound = {
            filename = "__base__/sound/machine-open.ogg",
            volume = 0.85
        },
        close_sound = {
            filename = "__base__/sound/machine-close.ogg",
            volume = 0.75
        },
        working_sound = {
            sound = {
                {
                    filename = "__base__/sound/electric-furnace.ogg",
                    volume = 0.7
                }
            },
            idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
            apparent_volume = 1.5,
        },
        crafting_categories = {"ax-oxygen-production"},
        source_inventory_size = 1,
        result_inventory_size = 1,
        crafting_speed = 1.5,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions = -0.06
        },
        energy_usage = "200kW",
        ingredient_count = 1,
        module_slots = 0,
        fixed_recipe = "ax-dirty-air-flow"
    }
})

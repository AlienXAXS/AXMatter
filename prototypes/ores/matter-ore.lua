data:extend({
    {
        type = "autoplace-control",
        name = "ax-matter-ore",
        richness = true,
        order = "b-f",
        category = "resource"
    },
    {type = "noise-layer", name = "ax-matter-ore"},
    {
        type = "resource",
        name = "ax-matter-ore",
        icon = "__aix_matter__/graphics/icons/matter-ore.png",
        icon_size = 32,
        flags = {"placeable-neutral"},
        order = "a-b-e",
        tree_removal_probability = 0.7,
        tree_removal_max_distance = 32 * 32,
        minable = {
            mining_particle = "stone-particle",
            mining_time = 1.75,
            result = "ax-matter-ore",
            fluid_amount = 20,
            required_fluid = "ax-liquid-matter"
        },
        collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        autoplace = resource_autoplace.resource_autoplace_settings{
            name = "ax-matter-ore",
            order = "c",
            base_density = 1.6,
            base_spots_per_km2 = 1.25,
            has_starting_area_placement = true,
            random_spot_size_minimum = 2,
            random_spot_size_maximum = 4,
            regular_rq_factor_multiplier = 1,
            starting_rq_factor_multiplier = 1.5
        },
        stage_counts = {10000, 6330, 3670, 1930, 870, 270, 100, 50},
        stages = {
            sheet = {
                filename = "__aix_matter__/graphics/entity/matter-ore/matter-ore.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 8,
                variation_count = 8,
                hr_version = {
                    filename = "__aix_matter__/graphics/entity/matter-ore/hr-matter-ore.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    frame_count = 8,
                    variation_count = 8,
                    scale = 0.5
                }
            }
        },
        stages_effect = {
            sheet = {
                filename = "__aix_matter__/graphics/entity/matter-ore/matter-ore-glow.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 8,
                variation_count = 8,
                blend_mode = "additive",
                flags = {"light"},
                hr_version = {
                    filename = "__aix_matter__/graphics/entity/matter-ore/hr-matter-ore-glow.png",
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
        max_effect_alpha = 0.8,
        map_color = {r = 0.72, g = 0.94, b = 1},
    }
})

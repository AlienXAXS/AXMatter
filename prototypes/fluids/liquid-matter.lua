data:extend({
    {
        type = "fluid",
        name = "ax-liquid-matter",
        default_temperature = 25,
        heat_capacity = "0.1KJ",
        base_color = {r = 1, g = 1, b = 1},
        flow_color = {r = 0.2, g = 0.25, b = 0.80},
        max_temperature = 100,
        icon = "__aix_matter__/graphics/icons/liquid-matter.png",
        icon_size = 32,
        order = "a[fluid]-b[liquid-matter]"
    },
    {
        type = "fluid",
        name = "ax-pure-liquid-matter",
        default_temperature = 25,
        heat_capacity = "0.1KJ",
        base_color = {r = 1, g = 1, b = 1},
        flow_color = {r = 0.45, g = 0, b = 1},
        max_temperature = 100,
        icon = "__aix_matter__/graphics/icons/pure-liquid-matter.png",
        icon_size = 32,
        order = "a[fluid]-b[liquid-matter]"
    },
    {
        type = "fluid",
        name = "ax-liquid-matter-steam",
        default_temperature = 15,
        max_temperature = 1000,
        heat_capacity = "0.2KJ",
        icon = "__aix_matter__/graphics/icons/liquid-matter-steam.png",
        icon_size = 32,
        base_color = {r = 0.5, g = 0.5, b = 0.5},
        flow_color = {r = 1.0, g = 1.0, b = 1.0},
        order = "a[fluid]-b[steam]",
        gas_temperature = 15,
        auto_barrel = false
    },
    {
        type = "fluid",
        name = "ax-liquid-matter-mixed-water",
        default_temperature = 25,
        heat_capacity = "0.1KJ",
        base_color = {r = 1, g = 1, b = 1},
        flow_color = {r = 0.2, g = 0.25, b = 0.80},
        max_temperature = 100,
        icon = "__aix_matter__/graphics/icons/liquid-matter-mixed-water.png",
        icon_size = 32,
        order = "a[fluid]-b[liquid-matter]"
    },
    {
        type = "autoplace-control",
        name = "ax-liquid-matter",
        richness = true,
        order = "b-f",
        category = "resource"
    },
    {
        type = "resource",
        name = "ax-liquid-matter",
        icon = "__aix_matter__/graphics/icons/liquid-matter.png",
        icon_size = 32,
        flags = {"placeable-neutral"},
        category = "basic-fluid",
        order = "a-b-a",
        infinite = true,
        highlight = true,
        minimum = 60000,
        normal = 300000,
        infinite_depletion_amount = 10,
        resource_patch_search_radius = 12,
        tree_removal_probability = 0.7,
        tree_removal_max_distance = 32 * 32,
        minable = {
            mining_time = 1,
            results = {
                {
                    type = "fluid",
                    name = "ax-liquid-matter",
                    amount_min = 10,
                    amount_max = 10,
                    probability = 1
                }
            }
        },
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        autoplace = resource_autoplace.resource_autoplace_settings{
            name = "ax-liquid-matter",
            order = "c",
            base_density = 8.2,
            base_spots_per_km2 = 1.8,
            random_probability = 1 / 48,
            random_spot_size_minimum = 1,
            random_spot_size_maximum = 1,
            additional_richness = 320000,
            has_starting_area_placement = true,
            resource_index = resource_autoplace.get_next_resource_index() + 35,
            regular_rq_factor_multiplier = 1,
            starting_rq_factor_multiplier = 1.5
        },
        stage_counts = {0},
        stages = {
            sheet = {
                filename = "__aix_matter__/graphics/entity/liquid-matter/liquid-matter.png",
                priority = "extra-high",
                width = 75,
                height = 61,
                frame_count = 4,
                variation_count = 1
            }
        },
        map_color = {r = 0.72, g = 0.94, b = 1},
        map_grid = false
    }
})

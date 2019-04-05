data:extend({
    {
        type = "technology",
        name = "ax-matter-power-supply",
        icon = "__aix_matter__/graphics/technology/matter-power-supply.png",
        icon_size = "128",
        prerequisites = {
            "ax-matter-power-generation",
            "electric-energy-distribution-1"
        },
        effects = {
            -- Med Pole
            {
                type = "unlock-recipe",
                recipe = "ax-matter-medium-electric-pole-from-pole"
            },
            {
                type = "unlock-recipe",
                recipe = "ax-matter-medium-electric-pole"
            },

            -- Big Pole
            {
                type = "unlock-recipe",
                recipe = "ax-matter-big-electric-pole-from-pole"
            },
            {
                type = "unlock-recipe",
                recipe = "ax-matter-big-electric-pole"
            },
        },
        unit = {
            count = 50,
            ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
                {"ax-matter-science-matter-infused-logistic", 1},
            },
            time = 30
        },
        order = "a"
    }
})

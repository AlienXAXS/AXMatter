data:extend({
    {
        type = "technology",
        name = "ax-matter-power-generation",
        icon = "__aix_matter__/graphics/technology/matter-power-generation.png",
        icon_size = "128",
        prerequisites = {"ax-matter-glowing-fluids"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ax-matter-combiner"
            },
            {
                type = "unlock-recipe",
                recipe = "ax-liquid-matter-mixed-water"
            },
            {
                type = "unlock-recipe",
                recipe = "ax-matter-boiler-mk1"
            },
            {
                type = "unlock-recipe",
                recipe = "ax-matter-power-generator-mk1"
            },
        },
        unit = {
            count = 100,
            ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
                {"ax-matter-science-matter-infused-logistic", 1},
            },
            time = 30
        },
        order = "d-a-a"
    }
})

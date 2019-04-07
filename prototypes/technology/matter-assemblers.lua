data:extend({
    {
        type = "technology",
        name = "ax-matter-automation-2",
        icon = "__aix_matter__/graphics/technology/automation-2.png",
        icon_size = "128",
        prerequisites = {"automation-2", "ax-matter-glowing-fluids"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ax-matter-assembling-machine-2"
            },
        },
        unit = {
            count = 55,
            ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
                {"ax-matter-science-matter-infused-logistic", 1},
            },
            time = 30
        },
        order = "d-a-a"
    },
    {
        type = "technology",
        name = "ax-matter-automation-3",
        icon = "__aix_matter__/graphics/technology/automation-3.png",
        icon_size = "128",
        prerequisites = {
            "automation-3",
            "ax-matter-infused-production"
        },
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ax-matter-assembling-machine-3"
            },
        },
        unit = {
            count = 55,
            ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
                {"ax-matter-science-matter-infused-logistic", 1},
                {"ax-matter-science-matter-infused-chemical", 1},
                {"ax-matter-science-matter-infused-production", 1},
            },
            time = 30
        },
        order = "d-a-a"
    }
})

data:extend({
    {
        type = "technology",
        name = "ax-matter-drilling-mk1",
        icon = "__aix_matter__/graphics/technology/matter-drilling-mk1.png",
        icon_size = "64",
        prerequisites = {"ax-matter-logistic-science-pack", "speed-module"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ax-matter-drill-mk1"
            },
        },
        unit = {
            count = 145,
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
        name = "ax-matter-drilling-mk2",
        icon = "__aix_matter__/graphics/technology/matter-drilling-mk2.png",
        icon_size = "64",
        prerequisites = {"ax-matter-drilling-mk1", "speed-module-2", "ax-matter-chemical-testing"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ax-matter-drill-mk2"
            },
        },
        unit = {
            count = 120,
            ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
                {"ax-matter-science-matter-infused-logistic", 1},
                {"ax-matter-science-matter-infused-chemical", 1},
            },
            time = 30
        },
        order = "d-a-a"
    },
    {
        type = "technology",
        name = "ax-matter-drilling-mk3",
        icon = "__aix_matter__/graphics/technology/matter-drilling-mk3.png",
        icon_size = "64",
        prerequisites = {"ax-matter-drilling-mk2", "speed-module-3", "ax-matter-infused-production"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ax-matter-drill-mk3"
            },
        },
        unit = {
            count = 100,
            ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
                {"ax-matter-science-matter-infused-logistic", 1},
                {"ax-matter-science-matter-infused-chemical", 1},
                {"ax-matter-science-matter-infused-production", 1},
            },
            time = 30
        },
        order = "d-a-a"
    },
})

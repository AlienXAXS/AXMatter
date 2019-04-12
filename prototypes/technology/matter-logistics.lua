data:extend({
    {
        type = "technology",
        name = "ax-matter-logistics",
        icon = "__aix_matter__/graphics/technology/matter-logistics.png",
        icon_size = "128",
        prerequisites = {
            "ax-matter-infused-utility",
        },
        effects = {
            {type = "unlock-recipe", recipe = "ax-matter-transport-belt"},
            {type = "unlock-recipe", recipe = "ax-matter-underground-belt"},
            {type = "unlock-recipe", recipe = "ax-matter-splitter"},
        },
        unit = {
            count = 180,
            ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
                {"ax-matter-science-matter-infused-logistic", 1},
                {"ax-matter-science-matter-infused-chemical", 1},
                {"ax-matter-science-matter-infused-production", 1},
                {"ax-matter-science-matter-infused-utility", 1}
            },
            time = 30
        },
        order = "d-a-a"
    }
})

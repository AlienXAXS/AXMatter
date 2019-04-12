data:extend({
    {
        type = "technology",
        name = "ax-matter-infused-space",
        icon = "__aix_matter__/graphics/technology/matter-infused-space.png",
        icon_size = "128",
        prerequisites = {
            "ax-matter-infused-utility",
            "space-science-pack"
        },
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ax-matter-science-matter-infused-space"
            },
            {
                type = "unlock-recipe",
                recipe = "ax-powder-space"
            },
        },
        unit = {
            count = 125,
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

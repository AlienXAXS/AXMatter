data:extend({
    {
        type = "technology",
        name = "ax-matter-infused-utility",
        icon = "__aix_matter__/graphics/technology/matter-infused-utility.png",
        icon_size = "128",
        prerequisites = {
            "ax-pure-liquid-matter",
            "utility-science-pack",
            "ax-matter-weaponry"
        },
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ax-matter-science-matter-infused-utility"
            },
            {type = "unlock-recipe", recipe = "ax-powder-utility"},
        },
        unit = {
            count = 125,
            ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
                {"ax-matter-science-matter-infused-logistic", 1},
                {"ax-matter-science-matter-infused-chemical", 1},
                {"ax-matter-science-matter-infused-production", 1}
            },
            time = 30
        },
        order = "d-a-a"
    }
})

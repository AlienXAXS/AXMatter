data:extend({
    {
        type = "technology",
        name = "ax-pure-liquid-matter",
        icon = "__aix_matter__/graphics/technology/pure-liquid-matter.png",
        icon_size = "128",
        prerequisites = {
            "ax-matter-infused-production"
        },
        effects = {
            {type = "unlock-recipe", recipe = "ax-oxygen"},
            {type = "unlock-recipe", recipe = "ax-pure-liquid-matter"},
            {type = "unlock-recipe", recipe = "ax-matter-infuser"},
            {type = "unlock-recipe", recipe = "ax-oxygen-collector-mk1"},
            {type = "unlock-recipe", recipe = "ax-air-filter"},
        },
        unit = {
            count = 125,
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

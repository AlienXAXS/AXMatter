data:extend({
    {
        type = "technology",
        name = "ax-matter-effect-transmission",
        icon = "__aix_matter__/graphics/technology/matter-effect-transmission.png",
        icon_size = "128",
        prerequisites = {
            "effect-transmission",
            "ax-matter-infused-production"
        },
        effects = {
            {type = "unlock-recipe", recipe = "ax-matter-beacon"},
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

data:extend({
    {
        type = "technology",
        name = "ax-matter-furnace",
        icon = "__aix_matter__/graphics/technology/matter-furnace.png",
        icon_size = "128",
        prerequisites = {"ax-matter-chemical-testing"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ax-matter-furnace"
            },
        },
        unit = {
            count = 300,
            ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
                {"ax-matter-science-matter-infused-logistic", 1},
                {"ax-matter-science-matter-infused-chemical", 1},
            },
            time = 30
        },
        order = "d-a-a"
    }
})

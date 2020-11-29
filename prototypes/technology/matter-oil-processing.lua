data:extend({
    {
        type = "technology",
        name = "ax-matter-oil-processing",
        icon = "__aix_matter__/graphics/technology/matter-oil-processing.png",
        icon_size = "128",
        prerequisites = {"advanced-oil-processing", "ax-matter-chemical-testing"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ax-matter-oil-processing"
            },
            {
                type = "unlock-recipe",
                recipe = "ax-matter-heavy-oil-cracking"
            },
            {
                type = "unlock-recipe",
                recipe = "ax-matter-light-oil-cracking"
            },
			{type = "unlock-recipe", recipe = "matter-solid-fuel"},
        },
        unit = {
            count = 100,
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

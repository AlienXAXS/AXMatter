data:extend({
    {
        type = "technology",
        name = "ax-matter-cracking",
        icon = "__aix_matter__/graphics/technology/matter-cracking.png",
        icon_size = "128",
        prerequisites = {
            "chemical-science-pack",
            "sulfur-processing",
            "ax-matter-chemical-testing",
			"uranium-processing"
        },
        effects = {
            {type = "unlock-recipe", recipe = "ax-matter-cracker"},
            {
                type = "unlock-recipe",
                recipe = "ax-matter-processing"
            },
            {
                type = "unlock-recipe",
                recipe = "ax-matter-drain-cracked-9001"
            },
            {
                type = "unlock-recipe",
                recipe = "ax-cracked-matter-9000-to-mixed-liquid"
            }
        },
        unit = {
            count = 225,
            ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
                {"ax-matter-science-matter-infused-logistic", 1},
                {"ax-matter-science-matter-infused-chemical", 1}
            },
            time = 30
        },
        order = "d-a-a"
    },
	{
        type = "technology",
        name = "ax-enrichment-process",
        icon = "__aix_matter__/graphics/technology/alienxs-enrichment-process.png",
        icon_size = "128",
        prerequisites = {
            "ax-matter-cracking",
            "ax-matter-infused-utility"
        },
        effects = {
            {type = "unlock-recipe", recipe = "ax-matter-enrichment-process"}
        },
        unit = {
            count = 2650,
            ingredients = {
				{"ax-matter-science-matter-infused-automation", 1},
                {"ax-matter-science-matter-infused-logistic", 1},
                {"ax-matter-science-matter-infused-chemical", 1},
				{"ax-matter-science-matter-infused-utility", 1}
            },
            time = 30
        },
        order = "d-a-a"
    }
})

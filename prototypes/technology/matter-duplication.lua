data:extend({
	{
        type = "technology",
        name = "ax-duplication-technology",
        icon = "__aix_matter__/graphics/technology/duplication-technology.png",
        icon_size = "128",
        prerequisites = {
            "ax-enrichment-process",
        },
        effects = {
			{ type = "unlock-recipe", recipe = "ax-duplication-liquid" },
			{ type = "unlock-recipe", recipe = "ax-depleated-fuel-cell-to-iridium" }
        },
        unit = {
            count = 5000,
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
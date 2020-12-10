data:extend({
    {
        type = "technology",
        name = "ax-matter-logistics-1",
        icon = "__aix_matter__/graphics/technology/matter-logistics-1.png",
		icon_size = 256, icon_mipmaps = 4,
        prerequisites = {
            "ax-matter-infused-utility",
        },
        effects = {
            {type = "unlock-recipe", recipe = "ax-matter-transport-belt"},
            {type = "unlock-recipe", recipe = "ax-matter-underground-belt-l12"},
            {type = "unlock-recipe", recipe = "ax-matter-splitter"},
        },
        unit = {
            count = 250,
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
    },
	{
        type = "technology",
        name = "ax-matter-logistics-2",
        icon = "__aix_matter__/graphics/technology/matter-logistics-2.png",
		icon_size = 256, icon_mipmaps = 4,
        prerequisites = {
            "ax-matter-infused-utility",
			"ax-matter-cracking"
        },
        effects = {
            {type = "unlock-recipe", recipe = "ax-matter-transport-belt-2"},
			{type = "unlock-recipe", recipe = "ax-matter-underground-belt-l16"},
            {type = "unlock-recipe", recipe = "ax-matter-splitter-2"},
        },
        unit = {
            count = 420,
            ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
                {"ax-matter-science-matter-infused-logistic", 1},
                {"ax-matter-science-matter-infused-chemical", 1},
                {"ax-matter-science-matter-infused-production", 1},
                {"ax-matter-science-matter-infused-utility", 1}
            },
            time = 30
        },
        order = "d-a-b"
    },
	{
        type = "technology",
        name = "ax-matter-logistics-3",
        icon = "__aix_matter__/graphics/technology/matter-logistics-3.png",
		icon_size = 256, icon_mipmaps = 4,
        prerequisites = {
            "ax-matter-infused-utility",
			"ax-matter-infused-space"
        },
        effects = {
            {type = "unlock-recipe", recipe = "ax-matter-transport-belt-3"},
			{type = "unlock-recipe", recipe = "ax-matter-underground-belt-l20"},
            {type = "unlock-recipe", recipe = "ax-matter-splitter-3"},
        },
        unit = {
            count = 768,
            ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
                {"ax-matter-science-matter-infused-logistic", 1},
                {"ax-matter-science-matter-infused-chemical", 1},
                {"ax-matter-science-matter-infused-production", 1},
                {"ax-matter-science-matter-infused-utility", 1}
            },
            time = 30
        },
        order = "d-a-c"
    }
})

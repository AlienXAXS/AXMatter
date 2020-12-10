data:extend({
    {
        type = "technology",
        name = "ax-matter-iron-plate",
        icon = "__aix_matter__/graphics/technology/matter-iron-plate.png",
        icon_size = "128",
        prerequisites = {"ax-matter-glowing-fluids"},
        effects = {
            {type = "unlock-recipe", recipe = "ax-matter-covered-iron-plate"},
            {type = "unlock-recipe", recipe = "ax-matter-iron-plate"},
            {type = "unlock-recipe", recipe = "ax-matter-stick"},
            {type = "unlock-recipe", recipe = "ax-matter-gear-wheel"},
        },
        unit = {
            count = 100,
            ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
            },
            time = 30
        },
        order = "a"
    },
	{
        type = "technology",
        name = "ax-matter-copper-plate",
        icon = "__aix_matter__/graphics/technology/matter-copper-plate.png",
        icon_size = "128",
        prerequisites = {"ax-matter-glowing-fluids"},
        effects = {
            {type = "unlock-recipe", recipe = "ax-matter-covered-copper-plate"},
            {type = "unlock-recipe", recipe = "ax-matter-copper-plate"},
            {type = "unlock-recipe", recipe = "ax-matter-cable"},
        },
        unit = {
            count = 100,
            ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
            },
            time = 30
        },
        order = "b"
    },
	{
        type = "technology",
        name = "ax-matter-steel-plate",
        icon = "__aix_matter__/graphics/technology/matter-steel-plate.png",
        icon_size = "128",
        prerequisites = {"ax-matter-glowing-fluids"},
        effects = {
            {type = "unlock-recipe", recipe = "ax-matter-covered-steel-plate"},
            {type = "unlock-recipe", recipe = "ax-matter-steel-plate"},
        },
        unit = {
            count = 100,
            ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
            },
            time = 30
        },
        order = "c"
    },
	{
        type = "technology",
        name = "ax-matter-logistic-science-pack",
        icon = "__aix_matter__/graphics/technology/matter-logistic-science-pack.png",
        icon_size = "128",
        prerequisites = {"ax-matter-iron-plate","ax-matter-copper-plate","ax-matter-steel-plate"},
        effects = {
            {type = "unlock-recipe", recipe = "ax-matter-science-matter-infused-logistic"},
            {type = "unlock-recipe", recipe = "ax-powder-logistic"},
        },
        unit = {
            count = 100,
            ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
            },
            time = 30
        },
        order = "d-a-a"
    },
})

data:extend({
    {
        type = "technology",
        name = "ax-matter-weaponry",
        icon = "__aix_matter__/graphics/technology/matter-bullets.png",
        icon_size = "128",
        prerequisites = {"ax-matter-military-science-pack"},
        effects = {
            {type = "unlock-recipe", recipe = "ax-matter-bullets"},
            {
                type = "unlock-recipe",
                recipe = "ax-matter-magazine"
            }
        },
        unit = {
            count = 100,
            ingredients = {
                {"ax-matter-science-matter-infused-military", 1},
            },
            time = 30
        },
        order = "d-a-a"
    },
    {
        type = "technology",
        name = "ax-matter-walls",
        icon = "__aix_matter__/graphics/technology/matter-stone-walls.png",
        icon_size = "128",
        prerequisites = {
            "ax-matter-military-science-pack",
            "stone-wall"
        },
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ax-matter-clay-brick"
            },
            {
                type = "unlock-recipe",
                recipe = "ax-matter-stone-brick"
            },
            {type = "unlock-recipe", recipe = "ax-matter-wall"}
        },
        unit = {
            count = 50,
            ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
                {"ax-matter-science-matter-infused-military", 1},
            },
            time = 30
        },
        order = "d-a-a"
    },
    {
        type = "technology",
        name = "ax-matter-self-healing-walls",
        icon = "__aix_matter__/graphics/technology/matter-self-healing-walls.png",
        icon_size = "128",
        prerequisites = {"ax-matter-walls", "ax-matter-infused-production"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ax-matter-self-healing-wall"
            },
        },
        unit = {
            count = 50,
            ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
                {"ax-matter-science-matter-infused-military", 1},
                {"ax-matter-science-matter-infused-chemical", 1},
                {"ax-matter-science-matter-infused-production", 1},
            },
            time = 30
        },
        order = "d-a-a"
    },
    {
        type = "technology",
        name = "ax-matter-laser-rifles",
        icon = "__aix_matter__/graphics/technology/laser-rifle.png",
        icon_size = "256",
        prerequisites = {"ax-matter-military-science-pack", "advanced-electronics"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ax-matter-laser-rifle-cartridge"
            },
            {
                type = "unlock-recipe",
                recipe = "ax-matter-laser-rifle"
            },
        },
        unit = {
            count = 50,
            ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
                {"ax-matter-science-matter-infused-logistic", 1},
                {"ax-matter-science-matter-infused-military", 1},
            },
            time = 30
        },
        order = "d-a-a"
    },
})

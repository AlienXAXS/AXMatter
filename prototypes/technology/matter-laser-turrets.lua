data:extend({
    {
        type = "technology",
        name = "ax-matter-laser-turrets",
        icon = "__aix_matter__/graphics/technology/matter-laser-turrets.png",
        icon_size = "128",
        prerequisites = {
            "ax-matter-military-science-pack",
            "laser-turret"
        },
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ax-matter-laser-turret"
            },
            {
                type = "unlock-recipe",
                recipe = "ax-matter-laser-turret-from-turret"
            }
        },
        unit = {
            count = 100,
            ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
                {"ax-matter-science-matter-infused-logistic", 1},
                {"ax-matter-science-matter-infused-military", 1},
            },
            time = 30
        },
        order = "d-a-a"
    }
})

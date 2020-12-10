data:extend({
    {
        type = "technology",
        name = "ax-matter-glowing-fluids",
        icon = "__aix_matter__/graphics/technology/glowing-fluids.png",
        icon_size = "128",
        prerequisites = {"ax-matter-weird-material", "oil-processing"},
        effects = {
        },
        unit = {
            count = 100,
            ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
            },
            time = 30
        },
        order = "d-a-a"
    }
})

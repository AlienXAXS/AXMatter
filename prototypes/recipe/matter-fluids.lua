data:extend({
    {
        type = "recipe",
        name = "ax-liquid-matter-mixed-water",
        category = "ax-matter-combiner",
        energy_required = 2.5,
        ingredients = {
            {type = "fluid", name = "water", amount = 270},
            {type = "fluid", name = "ax-liquid-matter", amount = 30}
        },
        results = {
            {
                type = "fluid",
                name = "ax-liquid-matter-mixed-water",
                amount = 300
            }
        },
        icon = "__aix_matter__/graphics/icons/recipe-liquid-matter-mixed-water.png",
        icon_size = 32,
        subgroup = "aix-matter-fluids",
        enabled = false,
        order = "b",
        crafting_machine_tint = {
            primary = {r = 0.270, g = 0.122, b = 0.000, a = 0.000}, -- #441f0000
            secondary = {r = 0.735, g = 0.546, b = 0.325, a = 0.000}, -- #bb8b5200
            tertiary = {r = 0.610, g = 0.348, b = 0.000, a = 0.000}, -- #9b580000
        }
    },
})

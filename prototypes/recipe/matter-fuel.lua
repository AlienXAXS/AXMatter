data:extend({
    {
        type = "recipe",
        name = "matter-solid-fuel",
        category = "chemistry",
        energy_required = 4,
        ingredients = {
            {type = "fluid", name = "ax-liquid-matter", amount = 10},
            {"ax-matter-iron-plate", 2}
        },
        results = {
            {
                type = "item",
                name = "ax-matter-solid-fuel",
                amount = 1
            }
        },
        icon = "__aix_matter__/graphics/icons/matter-solid-fuel-recipe.png",
        icon_size = 32,
        subgroup = "fluid-recipes",
        enabled = false,
        order = "b[fluid-chemistry]-c[solid-fuel-from-light-oil]",
        crafting_machine_tint = {
            primary = {r = 0.270, g = 0.122, b = 0.000, a = 0.000}, -- #441f0000
            secondary = {r = 0.735, g = 0.546, b = 0.325, a = 0.000}, -- #bb8b5200
            tertiary = {r = 0.610, g = 0.348, b = 0.000, a = 0.000}, -- #9b580000
        }
    },
})

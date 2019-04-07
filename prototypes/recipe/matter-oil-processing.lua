data:extend({
    {
        type = "recipe",
        name = "ax-matter-oil-processing",
        category = "oil-processing",
        enabled = false,
        energy_required = 5,
        ingredients = {
            {type = "fluid", name = "ax-liquid-matter-mixed-water", amount = 50},
            {type = "fluid", name = "crude-oil", amount = 100}
        },
        results = {
            {type = "fluid", name = "heavy-oil", amount = 20},
            {type = "fluid", name = "light-oil", amount = 65},
            {type = "fluid", name = "petroleum-gas", amount = 75}
        },
        icons = {
            {
                icon = "__base__/graphics/icons/fluid/advanced-oil-processing.png",

            },
            {
                icon = "__aix_matter__/graphics/icons/liquid-matter-mixed-water.png",
                scale = 0.5,
                shift = {16, 12}
            }
        },
        icon_size = 32,
        subgroup = "fluid-recipes",
        order = "a[oil-processing]-b[advanced-oil-processing]"
    },
    {
        type = "recipe",
        name = "ax-matter-heavy-oil-cracking",
        category = "chemistry",
        enabled = false,
        energy_required = 2,
        ingredients = {
            {type = "fluid", name = "ax-liquid-matter-mixed-water", amount = 30},
            {type = "fluid", name = "heavy-oil", amount = 40}
        },
        results = {{type = "fluid", name = "light-oil", amount = 38}},
        main_product = "",
        icons = {
            {
                icon = "__base__/graphics/icons/fluid/heavy-oil-cracking.png"
            },
            {
                icon = "__aix_matter__/graphics/icons/liquid-matter-mixed-water.png",
                scale = 0.5,
                shift = {16, 12}
            }
        },
        icon_size = 32,
        subgroup = "fluid-recipes",
        order = "b[fluid-chemistry]-a[heavy-oil-cracking]",
        crafting_machine_tint = {
            primary = {r = 0.290, g = 0.027, b = 0.000, a = 0.000}, -- #49060000
            secondary = {r = 0.722, g = 0.465, b = 0.190, a = 0.000}, -- #b8763000
            tertiary = {r = 0.870, g = 0.365, b = 0.000, a = 0.000}, -- #dd5d0000
        }
    },
    {
        type = "recipe",
        name = "ax-matter-light-oil-cracking",
        category = "chemistry",
        enabled = false,
        energy_required = 2,
        ingredients = {
            {type = "fluid", name = "ax-liquid-matter-mixed-water", amount = 30},
            {type = "fluid", name = "light-oil", amount = 30}
        },
        results = {{type = "fluid", name = "petroleum-gas", amount = 28}},
        main_product = "",
        icons = {
            {
                icon = "__base__/graphics/icons/fluid/light-oil-cracking.png"
            },
            {
                icon = "__aix_matter__/graphics/icons/liquid-matter-mixed-water.png",
                scale = 0.5,
                shift = {16, 12}
            }
        },
        icon_size = 32,
        subgroup = "fluid-recipes",
        order = "b[fluid-chemistry]-b[light-oil-cracking]",
        crafting_machine_tint = {
            primary = {r = 0.785, g = 0.406, b = 0.000, a = 0.000}, -- #c8670000
            secondary = {r = 0.795, g = 0.805, b = 0.605, a = 0.000}, -- #cacd9a00
            tertiary = {r = 0.835, g = 0.551, b = 0.000, a = 0.000}, -- #d48c0000
        }
    },
})

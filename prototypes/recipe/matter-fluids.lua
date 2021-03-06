data:extend({
    {
        type = "recipe",
        name = "ax-liquid-matter-mixed-water",
        category = "ax-matter-combiner",
        energy_required = 2.5,
        ingredients = {
            {type = "fluid", name = "water", amount = 290},
            {type = "fluid", name = "ax-liquid-matter", amount = 10}
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
    {
        type = "recipe",
        name = "ax-oxygen",
        category = "ax-matter-infuser",
        energy_required = 4,
        ingredients = {
            {type = "fluid", name = "ax-dirty-air", amount = 250},
            {"ax-air-filter",1}
        },
        results = {
            {
                type = "fluid",
                name = "ax-oxygen",
                amount = 100
            }
        },
        icon = "__aix_matter__/graphics/icons/pure-oxygen.png",
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
    {
        type = "recipe",
        name = "ax-pure-liquid-matter",
        category = "ax-matter-infuser",
        energy_required = 2.5,
        ingredients = {
            {type = "fluid", name = "ax-oxygen", amount = 50},
            {type = "fluid", name = "ax-liquid-matter", amount = 50}
        },
        results = {
            {
                type = "fluid",
                name = "ax-pure-liquid-matter",
                amount = 50
            }
        },
        icon = "__aix_matter__/graphics/icons/pure-liquid-matter.png",
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
	{
        type = "recipe",
        name = "ax-duplication-liquid",
        category = "ax-matter-infuser",
        energy_required = 14,
        ingredients = {
            {type = "fluid", name = "ax-pure-liquid-matter", amount = 50},
            {type = "item", name = "ax-iridium-coin", amount = 6},
			{type = "item", name = "ax-cracked-matter-9001", amount = 10},
			{type = "item", name = "ax-cracked-matter-9000", amount = 4},
			{type = "fluid", name = "steam", amount = 500}
        },
        results = {
            {
                type = "fluid",
                name = "ax-duplication-liquid",
                amount = 60
            }
        },
        icon = "__aix_matter__/graphics/icons/duplication-liquid.png",
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

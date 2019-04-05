data:extend({
    {type = "recipe-category", name = "ax-matter-cracker"},
    {
        type = "recipe",
        name = "ax-matter-cracker",
        enabled = false,
        energy_required = 20,
        ingredients = {
            {"centrifuge", 1},
            {"ax-matter-iron-plate", 50},
            {"electronic-circuit", 20},
            {"advanced-circuit", 20}
        },
        result = "ax-matter-cracker"
    },
    {
        type = "recipe",
        name = "ax-matter-processing",
        energy_required = 12,
        enabled = false,
        category = "ax-matter-cracker",
        ingredients = {{"ax-matter-ore", 2}},
        icon = "__aix_matter__/graphics/icons/matter-cracker-processing.png",
        icon_size = 32,
        subgroup = "raw-material",
        order = "k[ax-matter-cracker]", -- k ordering so it shows up after explosives which is j ordering
        results = {
            {
                name = "ax-cracked-matter-9001",
                probability = 0.10,
                amount = 1
            },
            {
                name = "ax-cracked-matter-9000",
                probability = 0.90,
                amount = 1
            }
        }
    },
    {
        type = "recipe",
        name = "ax-matter-drain-cracked-9001",
        enabled = false,
        energy_required = 20,
        category = "ax-matter-cracker",
        ingredients = {{"ax-cracked-matter-9001", 1}},
        result = "ax-cracked-matter-9000"
    },
    {
        type = "recipe",
        name = "ax-matter-beacon",
        enabled = false,
        energy_required = 15,
        ingredients = {
            {"electronic-circuit", 20},
            {"advanced-circuit", 20},
            {"steel-plate", 10},
            {"copper-cable", 10}
        },
        result = "ax-matter-beacon"
    },
    {
        type = "recipe",
        name = "ax-cracked-matter-9000-to-mixed-liquid",
        enabled = false,
        category = "crafting-with-fluid",
        energy_required = 15,
        ingredients = {{"ax-cracked-matter-9000", 20},},
        results = {
            {
                type = "fluid",
                name = "ax-liquid-matter-mixed-water",
                amount = 400
            }
        }
    },
})

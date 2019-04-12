data:extend({

    -- IRON
    {
        type = "recipe",
        name = "ax-matter-covered-iron-plate",
        enabled = false,
        energy_required = 2.5,
        category = "crafting-with-fluid",
        ingredients = {
            {"iron-plate", 1},
            {"ax-matter-ore", 6},
            {type = "fluid", name = "ax-liquid-matter", amount = 24}
        },
        result = "ax-matter-covered-iron-plate"
    },
    {
        type = "recipe",
        name = "ax-matter-iron-plate",
        category = "smelting",
        enabled = false,
        energy_required = 7,
        ingredients = {{"ax-matter-covered-iron-plate", 1}},
        result = "ax-matter-iron-plate"
    },
    {
        type = "recipe",
        name = "ax-matter-stick",
        enabled = false,
        energy_required = 2.5,
        ingredients = {{"ax-matter-iron-plate", 1},},
        results = {{"ax-matter-stick", 2}}
    },
    {
        type = "recipe",
        name = "ax-matter-gear-wheel",
        enabled = false,
        energy_required = 2.5,
        ingredients = {{"ax-matter-iron-plate", 1},},
        results = {{"ax-matter-gear-wheel", 2}}
    },
    {
        type = "recipe",
        name = "ax-air-filter",
        enabled = false,
        energy_required = 2.5,
        ingredients = {{"ax-matter-iron-plate", 1},{"coal", 4}},
        results = {{"ax-air-filter", 1}}
    },

    -- COPPER

    {
        type = "recipe",
        name = "ax-matter-covered-copper-plate",
        enabled = false,
        energy_required = 2.5,
        category = "crafting-with-fluid",
        ingredients = {
            {"copper-plate", 1},
            {"ax-matter-ore", 6},
            {type = "fluid", name = "ax-liquid-matter", amount = 24}
        },
        result = "ax-matter-covered-copper-plate"
    },
    {
        type = "recipe",
        name = "ax-matter-copper-plate",
        category = "smelting",
        enabled = false,
        energy_required = 7,
        ingredients = {{"ax-matter-covered-copper-plate", 1}},
        result = "ax-matter-copper-plate"
    },

    -- STEEL
    {
        type = "recipe",
        name = "ax-matter-covered-steel-plate",
        enabled = false,
        energy_required = 2.5,
        category = "crafting-with-fluid",
        ingredients = {
            {"steel-plate", 1},
            {"ax-matter-ore", 6},
            {type = "fluid", name = "ax-liquid-matter", amount = 24}
        },
        result = "ax-matter-covered-steel-plate"
    },
    {
        type = "recipe",
        name = "ax-matter-steel-plate",
        category = "smelting",
        enabled = false,
        energy_required = 7,
        ingredients = {{"ax-matter-covered-steel-plate", 1}},
        result = "ax-matter-steel-plate"
    }
})

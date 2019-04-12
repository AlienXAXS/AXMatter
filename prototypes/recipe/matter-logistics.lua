data:extend({
    {
        type = "recipe",
        name = "ax-matter-transport-belt",
        enabled = false,
        energy_required = 2.5,
        category="crafting-with-fluid",
        ingredients = {
            {"express-transport-belt", 1},
            {"ax-matter-iron-plate", 4},
            {"ax-matter-gear-wheel", 10},
            {type="fluid", name="ax-pure-liquid-matter", amount=35}
        },
        results = {{"ax-matter-transport-belt", 1}}
    },
    {
        type = "recipe",
        name = "ax-matter-underground-belt",
        enabled = false,
        energy_required = 2.5,
        category="crafting-with-fluid",
        ingredients = {
            {"express-underground-belt", 2},
            {"ax-matter-iron-plate", 4},
            {"ax-matter-gear-wheel", 10},
            {type="fluid", name="ax-pure-liquid-matter", amount=35}
        },
        results = {{"ax-matter-underground-belt", 2}}
    },
    {
        type = "recipe",
        name = "ax-matter-splitter",
        enabled = false,
        energy_required = 2.5,
        category="crafting-with-fluid",
        ingredients = {
            {"express-splitter", 1},
            {"ax-matter-gear-wheel", 10},
            {"processing-unit", 2},
            {type="fluid", name="ax-pure-liquid-matter", amount=35}
        },
        results = {{"ax-matter-splitter", 1}}
    },
})

data:extend({
    {
        type = "recipe",
        name = "ax-matter-transport-belt",
        enabled = false,
        energy_required = 2.5,
        category="crafting-with-fluid",
        ingredients = {
            {"express-transport-belt", 1},
            {"ax-matter-gear-wheel", 15},
            {type="fluid", name="ax-liquid-matter", amount=35}
        },
        results = {{"ax-matter-transport-belt", 1}}
    },
	{
        type = "recipe",
        name = "ax-matter-transport-belt-2",
        enabled = false,
        energy_required = 2.5,
        category="crafting-with-fluid",
        ingredients = {
            {"ax-matter-transport-belt", 1},
            {"ax-matter-gear-wheel", 20},
            {type="fluid", name="ax-pure-liquid-matter", amount=35}
        },
        results = {{"ax-matter-transport-belt-2", 1}}
    },
	{
        type = "recipe",
        name = "ax-matter-transport-belt-3",
        enabled = false,
        energy_required = 2.5,
        category="crafting-with-fluid",
        ingredients = {
            {"ax-matter-transport-belt-2", 1},
            {"ax-matter-gear-wheel", 25},
            {type="fluid", name="ax-pure-liquid-matter", amount=35}
        },
        results = {{"ax-matter-transport-belt-3", 1}}
    },
    {
        type = "recipe",
        name = "ax-matter-underground-belt-l12",
        enabled = false,
        energy_required = 2.5,
        category="crafting-with-fluid",
        ingredients = {
            {"express-underground-belt", 2},
            {"ax-matter-gear-wheel", 100},
            {type="fluid", name="ax-liquid-matter", amount=35}
        },
        results = {{"ax-matter-underground-belt-l12", 2}}
    },
	{
        type = "recipe",
        name = "ax-matter-underground-belt-l16",
        enabled = false,
        energy_required = 2.5,
        category="crafting-with-fluid",
        ingredients = {
            {"ax-matter-underground-belt-l12", 2},
            {"ax-matter-gear-wheel", 120},
            {type="fluid", name="ax-pure-liquid-matter", amount=35}
        },
        results = {{"ax-matter-underground-belt-l16", 2}}
    },
	{
        type = "recipe",
        name = "ax-matter-underground-belt-l20",
        enabled = false,
        energy_required = 2.5,
        category="crafting-with-fluid",
        ingredients = {
            {"ax-matter-underground-belt-l16", 2},
            {"ax-matter-iron-plate", 4},
			{"ax-matter-gear-wheel", 140},
            {type="fluid", name="ax-pure-liquid-matter", amount=35}
        },
        results = {{"ax-matter-underground-belt-l20", 2}}
    },
    {
        type = "recipe",
        name = "ax-matter-splitter",
        enabled = false,
        energy_required = 2.5,
        category="crafting-with-fluid",
        ingredients = {
            {"express-splitter", 1},
            {"ax-matter-gear-wheel", 15},
            {"advanced-circuit", 2},
            {type="fluid", name="ax-liquid-matter", amount=35}
        },
        results = {{"ax-matter-splitter", 1}}
    },
	{
        type = "recipe",
        name = "ax-matter-splitter-2",
        enabled = false,
        energy_required = 2.5,
        category="crafting-with-fluid",
        ingredients = {
            {"ax-matter-splitter", 1},
            {"ax-matter-gear-wheel", 20},
            {"advanced-circuit", 15},
            {type="fluid", name="ax-pure-liquid-matter", amount=25}
        },
        results = {{"ax-matter-splitter-2", 1}}
    },
	{
        type = "recipe",
        name = "ax-matter-splitter-3",
        enabled = false,
        energy_required = 2.5,
        category="crafting-with-fluid",
        ingredients = {
            {"ax-matter-splitter-2", 1},
            {"ax-matter-gear-wheel", 25},
			{"advanced-circuit", 10},
            {"processing-unit", 6},
            {type="fluid", name="ax-pure-liquid-matter", amount=35}
        },
        results = {{"ax-matter-splitter-3", 1}}
    },
})

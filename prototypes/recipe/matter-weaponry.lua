data:extend({
    {
        type = "recipe",
        name = "ax-matter-bullets",
        enabled = false,
        energy_required = 2,
        ingredients = {
            {"firearm-magazine", 1},
            {"ax-matter-iron-plate", 4},
            {"copper-plate", 4}
        },
        result = "ax-matter-bullets"
    },
    {
        type = "recipe",
        name = "ax-matter-magazine",
        enabled = false,
        energy_required = 5,
        ingredients = {
            {"ax-matter-bullets", 4},
            {"ax-matter-iron-plate", 1}
        },
        result = "ax-matter-magazine"
    },
    {
        type = "recipe",
        name = "ax-matter-laser-turret",
        enabled = false,
        energy_required = 20,
        ingredients = {
            {"ax-matter-iron-plate", 20},
            {"ax-matter-steel-plate", 20},
            {"electronic-circuit", 20},
            {"battery", 12}
        },
        result = "ax-matter-laser-turret"
    },
    {
        type = "recipe",
        name = "ax-matter-laser-turret-from-turret",
        enabled = false,
        energy_required = 20,
        ingredients = {
            {"laser-turret", 1},
            {"ax-matter-steel-plate", 12},
            {"ax-matter-iron-plate", 12},
        },
        result = "ax-matter-laser-turret"
    },
    {
        type = "recipe",
        name = "ax-matter-clay-brick",
        category = "crafting-with-fluid",
        enabled = false,
        energy_required = 5,
        ingredients = {
            {"stone", 10},
            {type = "fluid", name = "ax-liquid-matter", amount = 25}
        },
        result = "ax-matter-clay-brick"
    },
    {
        type = "recipe",
        name = "ax-matter-stone-brick",
        enabled = false,
        energy_required = 5,
        category = "smelting",
        ingredients = {{"ax-matter-clay-brick", 1},},
        result = "ax-matter-stone-brick"
    },
    {
        type = "recipe",
        name = "ax-matter-wall",
        enabled = false,
        energy_required = 5,
        ingredients = {{"ax-matter-stone-brick", 20},},
        result = "ax-matter-wall"
    },
    {
        type = "recipe",
        name = "ax-matter-self-healing-wall",
        enabled = false,
        category = "crafting-with-fluid",
        energy_required = 5,
        ingredients = {
            {"ax-matter-wall", 1},
            {type = "fluid", name = "ax-liquid-matter", amount = 50}
        },
        result = "ax-matter-self-healing-wall"
    },
    {
        type = "recipe",
        name = "ax-matter-laser-rifle",
        enabled = false,
        category = "crafting",
        energy_required = 5,
        ingredients = {
            {"ax-matter-steel-plate", 10},
            {"battery", 4},
            {"advanced-circuit", 20},
            {"ax-matter-cable", 1}
        },
        result = "ax-matter-laser-rifle"
    },
    {
        type = "recipe",
        name = "ax-matter-laser-rifle-cartridge",
        enabled = false,
        category = "crafting-with-fluid",
        energy_required = 30,
        ingredients = {
            {"ax-matter-steel-plate", 4},
            {type="fluid", name="ax-liquid-matter", amount=100}
        },
        results = {{type="item", name="ax-matter-laser-rifle-cartridge", amount=12}}
    },
})

data:extend({
    {
        type = "recipe-category",
        name = "ax-oxygen-production"
    },
    {
        type = "recipe",
        name = "ax-oxygen-collector-mk1",
        enabled = false,
        energy_required = 20,
        ingredients = {
            {"steel-plate", 16},
            {"ax-matter-iron-plate", 12},
            {"electronic-circuit", 8},
            {"pipe", 12},
        },
        result = "ax-oxygen-collector-mk1"
    },
    {
        type = "recipe",
        name = "ax-oxygen-collector-mk2",
        enabled = false,
        energy_required = 20,
        ingredients = {
            {"steel-plate", 16},
            {"ax-matter-iron-plate", 12},
            {"electronic-circuit", 8},
            {"pipe", 12},
        },
        result = "ax-oxygen-collector-mk2"
    },
    {
        type = "recipe",
        name = "ax-oxygen-collector-mk3",
        enabled = false,
        energy_required = 20,
        ingredients = {
            {"steel-plate", 16},
            {"ax-matter-iron-plate", 12},
            {"electronic-circuit", 8},
            {"pipe", 12},
        },
        result = "ax-oxygen-collector-mk3"
    },
    {
        type = "recipe",
        name = "ax-dirty-air-flow",
        enabled = true,
        hidden = true,
        energy_required = 0.5,
        category = "ax-oxygen-production",
        ingredients = {},
        results = {{type = "fluid", name = "ax-dirty-air", amount = 25},},
    }
})

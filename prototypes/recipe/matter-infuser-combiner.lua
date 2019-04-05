data:extend({
    {type = "recipe-category", name = "ax-matter-infuser"},
    {
        type = "recipe-category",
        name = "ax-matter-combiner"
    },
    {
        type = "recipe",
        name = "ax-matter-infuser",
        enabled = false,
        energy_required = 20,
        ingredients = {
            {"steel-plate", 16},
            {"iron-gear-wheel", 12},
            {"electronic-circuit", 8},
            {"pipe", 12},
        },
        result = "ax-matter-infuser"
    },
    {
        type = "recipe",
        name = "ax-matter-combiner",
        enabled = false,
        energy_required = 20,
        ingredients = {
            {"ax-matter-iron-plate", 16},
            {"steel-plate", 12},
            {"electronic-circuit", 8},
            {"pipe", 12},
        },
        result = "ax-matter-combiner"
    },
})

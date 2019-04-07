data:extend({
    {
        type = "recipe",
        name = "ax-matter-drill-mk1",
        enabled = false,
        ingredients = {
            {"electric-mining-drill", 1},
            {"speed-module", 2},
            {"ax-matter-iron-plate", 4}
        },
        result = "ax-matter-drill-mk1"
    },
    {
        type = "recipe",
        name = "ax-matter-drill-mk2",
        enabled = false,
        ingredients = {
            {"ax-matter-drill-mk1", 1},
            {"speed-module-2", 2},
            {"ax-matter-iron-plate", 4}
        },
        result = "ax-matter-drill-mk2"
    },
    {
        type = "recipe",
        name = "ax-matter-drill-mk3",
        enabled = false,
        ingredients = {
            {"ax-matter-drill-mk2", 1},
            {"speed-module-3", 2},
            {"ax-matter-iron-plate", 4},
            {"ax-matter-steel-plate", 4}
        },
        result = "ax-matter-drill-mk3"
    },
})
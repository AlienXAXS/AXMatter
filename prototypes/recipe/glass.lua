data:extend({
    {
        type = "recipe",
        name = "ax-sand",
        enabled = false,
        energy_required = 2.5,
        category = "crafting-with-fluid",
        ingredients = {
            {"stone", 10},
            {type = "fluid", name = "water", amount = 35}
        },
        result = "ax-sand"
    },
    {
        type = "recipe",
        name = "ax-science-flask",
        category = "smelting",
        enabled = false,
        energy_required = 7,
        ingredients = {{"ax-sand", 1}},
        result = "ax-science-flask"
    }
})

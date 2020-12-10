data:extend({

    ------------------------------
    --  MATTER INFUSED AUTOMATION SCIENCE PACK
    ------------------------------
    {
        type = "recipe",
        name = "ax-powder-automation",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"automation-science-pack", 1},
            {"ax-matter-ore", 10}
        },
        result = "ax-powder-automation"
    },
    {
        type = "recipe",
        name = "ax-matter-science-matter-infused-automation",
        enabled = false,
        energy_required = 2,
        category = "crafting-with-fluid",
        ingredients = {
            {"ax-science-flask", 1},
            {"ax-powder-automation", 1},
            {type = "fluid", name = "water", amount = 50}
        },
        result = "ax-matter-science-matter-infused-automation"
    },

    ------------------------------
    --  MATTER INFUSED LOGISTIC SCIENCE PACK
    ------------------------------
    {
        type = "recipe",
        name = "ax-powder-logistic",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"ax-matter-iron-plate", 4},
            {"logistic-science-pack", 1}
        },
        result = "ax-powder-logistic"
    },
    {
        type = "recipe",
        name = "ax-matter-science-matter-infused-logistic",
        enabled = false,
        energy_required = 2,
        category = "crafting-with-fluid",
        ingredients = {
            {"ax-science-flask", 1},
            {"ax-powder-logistic", 1},
            {type = "fluid", name = "water", amount = 50}
        },
        result = "ax-matter-science-matter-infused-logistic"
    },

    ------------------------------
    --  MATTER INFUSED MILITARY SCIENCE PACK
    ------------------------------
    {
        type = "recipe",
        name = "ax-powder-military",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"ax-matter-iron-plate", 4},
            {"military-science-pack", 1},
            {"firearm-magazine", 2}
        },
        result = "ax-powder-military"
    },
    {
        type = "recipe",
        name = "ax-matter-science-matter-infused-military",
        enabled = false,
        energy_required = 2,
        category = "crafting-with-fluid",
        ingredients = {
            {"ax-science-flask", 1},
            {"ax-powder-military", 1},
            {type = "fluid", name = "water", amount = 50}
        },
        result = "ax-matter-science-matter-infused-military"
    },

    ------------------------------
    --  MATTER INFUSED CHEMICAL SCIENCE PACK
    ------------------------------
    {
        type = "recipe",
        name = "ax-powder-chemical",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"chemical-science-pack", 1},
            {"ax-matter-iron-plate", 4},
            {"ax-matter-steel-plate", 1}
        },
        result = "ax-powder-chemical"
    },
    {
        type = "recipe",
        name = "ax-matter-science-matter-infused-chemical",
        enabled = false,
        energy_required = 2,
        category = "crafting-with-fluid",
        ingredients = {
            {"ax-science-flask", 1},
            {"ax-powder-chemical", 1},
            {type = "fluid", name = "water", amount = 50}
        },
        result = "ax-matter-science-matter-infused-chemical"
    },

    ------------------------------
    --  MATTER INFUSED PRODUCTION SCIENCE PACK
    ------------------------------
    {
        type = "recipe",
        name = "ax-powder-production",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"production-science-pack", 1},
            {"ax-matter-iron-plate", 4},
            {"ax-cracked-matter-9001", 1},
            {"ax-cracked-matter-9000", 12}
        },
        result = "ax-powder-production"
    },
    {
        type = "recipe",
        name = "ax-matter-science-matter-infused-production",
        enabled = false,
        energy_required = 2,
        category = "crafting-with-fluid",
        ingredients = {
            {"ax-science-flask", 1},
            {"ax-powder-production", 1},
            {type = "fluid", name = "water", amount = 50}
        },
        result = "ax-matter-science-matter-infused-production"
    },

    ------------------------------
    --  MATTER INFUSED UTILITY SCIENCE PACK
    ------------------------------
    {
        type = "recipe",
        name = "ax-powder-utility",
        enabled = false,
        energy_required = 10,
        category="crafting-with-fluid",
        ingredients = {
            {"utility-science-pack", 1},
            {"ax-matter-magazine", 1},
            {type="fluid", name="ax-pure-liquid-matter", amount=35}
        },
        result = "ax-powder-utility"
    },
    {
        type = "recipe",
        name = "ax-matter-science-matter-infused-utility",
        enabled = false,
        energy_required = 2,
        category = "crafting-with-fluid",
        ingredients = {
            {"ax-science-flask", 1},
            {"ax-powder-utility", 1},
            {type = "fluid", name = "water", amount = 50}
        },
        result = "ax-matter-science-matter-infused-utility"
    },

    ------------------------------
    --  MATTER INFUSED SPACE SCIENCE PACK
    ------------------------------
    {
        type = "recipe",
        name = "ax-powder-space",
        enabled = false,
        energy_required = 10,
        category="crafting-with-fluid",
        ingredients = {
            {"space-science-pack", 1},
            {type="fluid", name="ax-pure-liquid-matter", amount=25}
        },
        result = "ax-powder-space"
    },
    {
        type = "recipe",
        name = "ax-matter-science-matter-infused-space",
        enabled = false,
        energy_required = 2,
        category = "crafting-with-fluid",
        ingredients = {
            {"ax-science-flask", 1},
            {"ax-powder-space", 1},
            {type = "fluid", name = "water", amount = 50}
        },
        result = "ax-matter-science-matter-infused-space"
    }
})

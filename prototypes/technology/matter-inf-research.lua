data:extend({
    {
        type = "technology",
        name = "ax-inserter-capacity-bonus",
		icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/inserter-capacity.png",
        prerequisites = {
            "inserter-capacity-bonus-7",
            "ax-matter-infused-space"
        },
        effects = {
            {type = "inserter-stack-size-bonus", modifier = 0.5},
        },
        unit = {
            count_formula = "200+2^(L-4)*50",
            ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
                {"ax-matter-science-matter-infused-logistic", 1},
                {"ax-matter-science-matter-infused-chemical", 1},
                {"ax-matter-science-matter-infused-production", 1},
                {"ax-matter-science-matter-infused-utility", 1},
                {"ax-matter-science-matter-infused-space", 1},
            },
            time = 30
        },
        max_level = "infinite",
        upgrade = true,
        order = "x"
    },
    {
        type = "technology",
        name = "ax-stack-inserter-capacity-bonus",
		icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/inserter-capacity.png",
        prerequisites = {
            --"inserter-capacity-bonus-7",
            "ax-matter-infused-space"
        },
        effects = {
            {type = "stack-inserter-capacity-bonus", modifier = 2}
        },
        unit = {
            count_formula = "200+2^(L-4)*50",
            ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
                {"ax-matter-science-matter-infused-logistic", 1},
                {"ax-matter-science-matter-infused-chemical", 1},
                {"ax-matter-science-matter-infused-production", 1},
                {"ax-matter-science-matter-infused-utility", 1},
                {"ax-matter-science-matter-infused-space", 1},
            },
            time = 30
        },
        max_level = "infinite",
        upgrade = true,
        order = "x"
    },
    {
        type = "technology",
        name = "worker-robots-storage-4",
		icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/worker-robots-storage.png",
        prerequisites = {
            "worker-robots-storage-3",
            "ax-matter-infused-space"
        },
        effects = {{type = "worker-robot-storage", modifier = 1}},
        unit = {
            count_formula = "1.5^(L-1)*200",
            ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
                {"ax-matter-science-matter-infused-logistic", 1},
                {"ax-matter-science-matter-infused-chemical", 1},
                {"ax-matter-science-matter-infused-production", 1},
                {"ax-matter-science-matter-infused-utility", 1},
                {"ax-matter-science-matter-infused-space", 1},
            },
            time = 30
        },
        max_level = "infinite",
        upgrade = true,
        order = "x"
    },
    {
        type = "technology",
        name = "braking-force-8",
		icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/braking-force.png",
        effects = {
            {type = "train-braking-force-bonus", modifier = 0.08}
        },
        prerequisites = {"braking-force-7", "ax-matter-infused-space"},
        unit = {
            count_formula = "100*(L)",
            ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
                {"ax-matter-science-matter-infused-logistic", 1},
                {"ax-matter-science-matter-infused-chemical", 1},
                {"ax-matter-science-matter-infused-production", 1},
                {"ax-matter-science-matter-infused-utility", 1},
                {"ax-matter-science-matter-infused-space", 1},
            },
            time = 60
        },
        upgrade = true,
        max_level = "infinite",
        order = "x"
    },
    {
        type = "technology",
        name = "research-speed-7",
		icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/research-speed.png",
        effects = {{type = "laboratory-speed", modifier = 0.1}},
        prerequisites = {"research-speed-6", "ax-matter-infused-space"},
        unit = {
            count_formula = "500*(L-5)",
            ingredients = {
                {"ax-matter-science-matter-infused-automation", 1},
                {"ax-matter-science-matter-infused-logistic", 1},
                {"ax-matter-science-matter-infused-chemical", 1},
                {"ax-matter-science-matter-infused-production", 1},
                {"ax-matter-science-matter-infused-utility", 1},
                {"ax-matter-science-matter-infused-space", 1},
            },
            time = 30
        },
        max_level = "infinite",
        order = "x"
    },
})

data:extend({
    {
        type = "explosion",
        name = "ax-matter-laser-rifle-beam",
        flags = {"not-on-map"},
        rotate = true,
        beam = true,
        animations = {
            {
                filename = "__aix_matter__/graphics/weapon/rifle-beam.png",
                priority = "extra-high",
                width = 187,
                height = 1,
                frame_count = 6
            }
        },
        light = {intensity = 1, size = 10, color = {r = 1.0, g = 1.0, b = 1.0}},
        smoke = "smoke-fast",
        smoke_count = 2,
        smoke_slow_down_factor = 1
    },
    {
        type = "ammo",
        name = "ax-matter-laser-rifle-cartridge",
        icon = "__aix_matter__/graphics/icons/laser-rifle-cartridge.png",
        icon_size = 32,
        flags = {"hidden"},
        ammo_type = {
            category = "laser-rifle",
            action = {
                type = "line",
                range = 25,
                width = 0.05,

                source_effects = {
                    type = "create-explosion",
                    entity_name = "ax-matter-laser-rifle-beam"
                },
                action_delivery = {
                    type = "instant",
                    target_effects = {
                        type = "damage",
                        damage = {amount = 26, type = "physical"}
                    }
                }
            }
        },
        magazine_size = 20,
        subgroup = "aix-matter-weaponry",
        order = "c[railgun]",
        stack_size = 200
    },
    {
        type = "gun",
        name = "ax-matter-laser-rifle",
        icon = "__aix_matter__/graphics/icons/matter-laser-rifle.png",
        icon_size = 32,
        subgroup = "aix-matter-weaponry",
        order = "a",
        attack_parameters = {
            type = "projectile",
            ammo_category = "laser-rifle",
            cooldown = 10,
            movement_slow_down_factor = 0.7,
            projectile_creation_distance = 0.6,
            range = 25,
            sound = {
                {
                    filename = "__aix_matter__/sound/weapon/laser-rifle-1.ogg",
                    volume = 0.8
                },
                {
                    filename = "__aix_matter__/sound/weapon/laser-rifle-2.ogg",
                    volume = 0.8
                },
                {
                    filename = "__aix_matter__/sound/weapon/laser-rifle-3.ogg",
                    volume = 0.8
                },
                {
                    filename = "__aix_matter__/sound/weapon/laser-rifle-4.ogg",
                    volume = 0.8
                },
                {
                    filename = "__aix_matter__/sound/weapon/laser-rifle-5.ogg",
                    volume = 0.8
                },
            }
        },
        stack_size = 5
    }
})

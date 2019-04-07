-- Sets the mining speed of a drill based off Factorio's vanilla Electric-Mining-Drill
local drillSpeedMultipliers = {
    mk1 = 1.5,
    mk2 = 2.0,
    mk3 = 2.5
}

data:extend({
    {
        type = "mining-drill",
        name = "ax-matter-drill-mk1",
        icon = "__aix_matter__/graphics/icons/matter-drill-mk1.png",
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.3, result = "electric-mining-drill"},
        max_health = 300,
        resource_categories = {"basic-solid"},
        corpse = "big-remnants",
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        input_fluid_box = (not data.is_demo) and {
            production_type = "input-output",
            pipe_picture = assembler2pipepictures(),
            pipe_covers = pipecoverspictures(),
            base_area = 1,
            height = 2,
            base_level = -1,
            pipe_connections = {
                {position = {-2, 0}},
                {position = {2, 0}},
                {position = {0, 2}}
            }
        } or nil,
        mining_speed = data.raw["mining-drill"]["electric-mining-drill"].mining_speed * drillSpeedMultipliers.mk1,
        energy_source = {
            type = "electric",
            emissions_per_second_per_watt = 10 / 90000,
            usage_priority = "secondary-input"
        },
        energy_usage = "90kW",
        resource_searching_radius = 2.49,
        vector_to_place_result = {0, -1.85},
        module_specification = {module_slots = 3},
        radius_visualisation_picture = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
            width = 10,
            height = 10
        },
        monitor_visualization_tint = {r = 78, g = 173, b = 255},
        fast_replaceable_group = "mining-drill",

        circuit_wire_connection_points = circuit_connector_definitions["electric-mining-drill"].points,
        circuit_connector_sprites = circuit_connector_definitions["electric-mining-drill"].sprites,
        circuit_wire_max_distance = default_circuit_wire_max_distance,
        working_sound = {
            sound = {
                filename = "__base__/sound/electric-mining-drill.ogg",
                volume = 0.75
            },
            apparent_volume = 1.5
        },
        vehicle_impact_sound = {
            filename = "__base__/sound/car-metal-impact.ogg",
            volume = 0.65
        },
        animations = {
            north = {
                priority = "high",
                filename = "__aix_matter__/graphics/entity/matter-drill/mk1/lr-miner-1-working-N.png",
                line_length = 8,
                width = 64,
                height = 64,
                frame_count = 32,
                animation_speed = 0.5,
                direction_count = 1,
                -- shift = util.by_pixel(0, -8.5),
                -- run_mode = "forward-then-backward",
                hr_version = {
                    priority = "high",
                    filename = "__aix_matter__/graphics/entity/matter-drill/mk1/miner-1-working-N.png",
                    line_length = 8,
                    width = 192,
                    height = 192,
                    frame_count = 32,
                    animation_speed = 0.5,
                    direction_count = 1,
                    -- shift = util.by_pixel(0, -8),
                    -- run_mode = "forward-then-backward",
                    scale = 0.5
                }
            },
            east = {
                priority = "high",
                filename = "__aix_matter__/graphics/entity/matter-drill/mk1/lr-miner-1-working-E.png",
                line_length = 8,
                width = 64,
                height = 64,
                frame_count = 32,
                animation_speed = 0.5,
                direction_count = 1,
                -- shift = util.by_pixel(0, -8.5),
                -- run_mode = "forward-then-backward",
                hr_version = {
                    priority = "high",
                    filename = "__aix_matter__/graphics/entity/matter-drill/mk1/miner-1-working-E.png",
                    line_length = 8,
                    width = 192,
                    height = 192,
                    frame_count = 32,
                    animation_speed = 0.5,
                    direction_count = 1,
                    -- shift = util.by_pixel(0, -8),
                    -- run_mode = "forward-then-backward",
                    scale = 0.5
                }
            },
            south = {
                priority = "high",
                filename = "__aix_matter__/graphics/entity/matter-drill/mk1/lr-miner-1-working-S.png",
                line_length = 8,
                width = 64,
                height = 64,
                frame_count = 32,
                animation_speed = 0.5,
                direction_count = 1,
                -- shift = util.by_pixel(0, -8.5),
                -- run_mode = "forward-then-backward",
                hr_version = {
                    priority = "high",
                    filename = "__aix_matter__/graphics/entity/matter-drill/mk1/miner-1-working-S.png",
                    line_length = 8,
                    width = 192,
                    height = 192,
                    frame_count = 32,
                    animation_speed = 0.5,
                    direction_count = 1,
                    -- shift = util.by_pixel(0, -8),
                    -- run_mode = "forward-then-backward",
                    scale = 0.5
                }
            },
            west = {
                priority = "high",
                filename = "__aix_matter__/graphics/entity/matter-drill/mk1/lr-miner-1-working-W.png",
                line_length = 8,
                width = 64,
                height = 64,
                frame_count = 32,
                animation_speed = 0.5,
                direction_count = 1,
                -- shift = util.by_pixel(0, -8.5),
                -- run_mode = "forward-then-backward",
                hr_version = {
                    priority = "high",
                    filename = "__aix_matter__/graphics/entity/matter-drill/mk1/miner-1-working-W.png",
                    line_length = 8,
                    width = 192,
                    height = 192,
                    frame_count = 32,
                    animation_speed = 0.5,
                    direction_count = 1,
                    -- shift = util.by_pixel(0, -8),
                    -- run_mode = "forward-then-backward",
                    scale = 0.5
                }
            }
        },
        input_fluid_patch_sprites = {
            north = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-patch.png",
                width = 100,
                height = 111,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(0, -6.5),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-patch.png",
                    width = 200,
                    height = 222,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-0.5, -6.5),
                    scale = 0.5
                }
            },
            east = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-patch.png",
                width = 100,
                height = 110,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(0, -6),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-patch.png",
                    width = 200,
                    height = 219,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(0, -5.75),
                    scale = 0.5
                }
            },
            south = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-patch.png",
                width = 100,
                height = 113,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(0, -7.5),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-patch.png",
                    width = 200,
                    height = 226,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-0.5, -7.5),
                    scale = 0.5
                }
            },
            west = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-patch.png",
                width = 100,
                height = 108,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(0, -5),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-patch.png",
                    width = 200,
                    height = 220,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-0.5, -6),
                    scale = 0.5
                }
            }
        },
        input_fluid_patch_shadow_sprites = {
            north = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-patch-shadow.png",
                flags = {"shadow"},
                width = 110,
                height = 98,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(5, 0),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-patch-shadow.png",
                    flags = {"shadow"},
                    width = 220,
                    height = 197,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(5, -0.25),
                    scale = 0.5
                }
            },
            east = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-patch-shadow.png",
                flags = {"shadow"},
                width = 112,
                height = 98,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(6, 0),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-patch-shadow.png",
                    flags = {"shadow"},
                    width = 224,
                    height = 198,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(6, 0),
                    scale = 0.5
                }
            },
            south = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-patch-shadow.png",
                flags = {"shadow"},
                width = 110,
                height = 98,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(5, 0),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-patch-shadow.png",
                    flags = {"shadow"},
                    width = 220,
                    height = 197,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(5, -0.25),
                    scale = 0.5
                }
            },
            west = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-patch-shadow.png",
                flags = {"shadow"},
                width = 110,
                height = 98,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(5, 0),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-patch-shadow.png",
                    flags = {"shadow"},
                    width = 220,
                    height = 197,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(5, -0.25),
                    scale = 0.5
                }
            }
        },
        input_fluid_patch_window_sprites = {
            north = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-window-background.png",
                width = 72,
                height = 54,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(-1, 1),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-window-background.png",
                    width = 142,
                    height = 107,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-1, 0.75),
                    scale = 0.5
                }
            },
            east = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-window-background.png",
                width = 51,
                height = 74,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(-11.5, -11),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-window-background.png",
                    width = 104,
                    height = 147,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-11, -11.25),
                    scale = 0.5
                }
            },
            south = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-window-background.png",
                width = 71,
                height = 44,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(-1.5, -29),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-window-background.png",
                    width = 141,
                    height = 86,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-1.75, -29),
                    scale = 0.5
                }
            },
            west = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-window-background.png",
                width = 41,
                height = 69,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(11.5, -11.5),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-window-background.png",
                    width = 80,
                    height = 137,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(11.5, -11.25),
                    scale = 0.5
                }
            }
        },

        input_fluid_patch_window_flow_sprites = {
            {
                north = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-fluid-flow.png",
                    width = 68,
                    height = 50,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-2, -1),
                    hr_version = {
                        priority = "extra-high",
                        filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-fluid-flow.png",
                        width = 136,
                        height = 99,
                        frame_count = 1,
                        direction_count = 1,
                        shift = util.by_pixel(-2.5, -0.75),
                        scale = 0.5
                    }
                },
                east = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-fluid-flow.png",
                    width = 41,
                    height = 70,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-11.5, -11),
                    hr_version = {
                        priority = "extra-high",
                        filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-fluid-flow.png",
                        width = 82,
                        height = 139,
                        frame_count = 1,
                        direction_count = 1,
                        shift = util.by_pixel(-11.5, -11.25),
                        scale = 0.5
                    }
                },
                south = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-fluid-flow.png",
                    width = 68,
                    height = 40,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-2, -29),
                    hr_version = {
                        priority = "extra-high",
                        filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-fluid-flow.png",
                        width = 136,
                        height = 80,
                        frame_count = 1,
                        direction_count = 1,
                        shift = util.by_pixel(-2.5, -29.5),
                        scale = 0.5
                    }
                },
                west = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-fluid-flow.png",
                    width = 42,
                    height = 70,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(11, -11),
                    hr_version = {
                        priority = "extra-high",
                        filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-fluid-flow.png",
                        width = 83,
                        height = 140,
                        frame_count = 1,
                        direction_count = 1,
                        shift = util.by_pixel(10.75, -11),
                        scale = 0.5
                    }
                }
            }
        },
        input_fluid_patch_window_base_sprites = {
            {
                north = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-fluid-background.png",
                    width = 70,
                    height = 48,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-2, 0),
                    hr_version = {
                        priority = "extra-high",
                        filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-fluid-background.png",
                        width = 138,
                        height = 94,
                        frame_count = 1,
                        direction_count = 1,
                        shift = util.by_pixel(-2, 0),
                        scale = 0.5
                    }
                },
                east = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-fluid-background.png",
                    width = 42,
                    height = 70,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-12, -11),
                    hr_version = {
                        priority = "extra-high",
                        filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-fluid-background.png",
                        width = 84,
                        height = 138,
                        frame_count = 1,
                        direction_count = 1,
                        shift = util.by_pixel(-12, -11),
                        scale = 0.5
                    }
                },
                south = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-fluid-background.png",
                    width = 70,
                    height = 40,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-2, -29),
                    hr_version = {
                        priority = "extra-high",
                        filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-fluid-background.png",
                        width = 138,
                        height = 80,
                        frame_count = 1,
                        direction_count = 1,
                        shift = util.by_pixel(-2, -29),
                        scale = 0.5
                    }
                },
                west = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-fluid-background.png",
                    width = 42,
                    height = 69,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(12, -10.5),
                    hr_version = {
                        priority = "extra-high",
                        filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-fluid-background.png",
                        width = 83,
                        height = 137,
                        frame_count = 1,
                        direction_count = 1,
                        shift = util.by_pixel(11.75, -10.75),
                        scale = 0.5
                    }
                }
            }
        },
    },
    {
        type = "mining-drill",
        name = "ax-matter-drill-mk2",
        icon = "__aix_matter__/graphics/icons/matter-drill-mk2.png",
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.3, result = "electric-mining-drill"},
        max_health = 300,
        resource_categories = {"basic-solid"},
        corpse = "big-remnants",
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        input_fluid_box = (not data.is_demo) and {
            production_type = "input-output",
            pipe_picture = assembler2pipepictures(),
            pipe_covers = pipecoverspictures(),
            base_area = 1,
            height = 2,
            base_level = -1,
            pipe_connections = {
                {position = {-2, 0}},
                {position = {2, 0}},
                {position = {0, 2}}
            }
        } or nil,
        mining_speed = data.raw["mining-drill"]["electric-mining-drill"].mining_speed * drillSpeedMultipliers.mk2,
        energy_source = {
            type = "electric",
            emissions_per_second_per_watt = 10 / 90000,
            usage_priority = "secondary-input"
        },
        energy_usage = "90kW",
        resource_searching_radius = 2.49,
        vector_to_place_result = {0, -1.85},
        module_specification = {module_slots = 3},
        radius_visualisation_picture = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
            width = 10,
            height = 10
        },
        monitor_visualization_tint = {r = 78, g = 173, b = 255},
        fast_replaceable_group = "mining-drill",

        circuit_wire_connection_points = circuit_connector_definitions["electric-mining-drill"].points,
        circuit_connector_sprites = circuit_connector_definitions["electric-mining-drill"].sprites,
        circuit_wire_max_distance = default_circuit_wire_max_distance,
        working_sound = {
            sound = {
                filename = "__base__/sound/electric-mining-drill.ogg",
                volume = 0.75
            },
            apparent_volume = 1.5
        },
        vehicle_impact_sound = {
            filename = "__base__/sound/car-metal-impact.ogg",
            volume = 0.65
        },
        animations = {
            north = {
                priority = "high",
                filename = "__aix_matter__/graphics/entity/matter-drill/mk2/lr-miner-2-working-N.png",
                line_length = 8,
                width = 64,
                height = 64,
                frame_count = 32,
                animation_speed = 0.5,
                direction_count = 1,
                -- shift = util.by_pixel(0, -8.5),
                -- run_mode = "forward-then-backward",
                hr_version = {
                    priority = "high",
                    filename = "__aix_matter__/graphics/entity/matter-drill/mk2/miner-2-working-N.png",
                    line_length = 8,
                    width = 192,
                    height = 192,
                    frame_count = 32,
                    animation_speed = 0.5,
                    direction_count = 1,
                    -- shift = util.by_pixel(0, -8),
                    -- run_mode = "forward-then-backward",
                    scale = 0.5
                }
            },
            east = {
                priority = "high",
                filename = "__aix_matter__/graphics/entity/matter-drill/mk2/lr-miner-2-working-E.png",
                line_length = 8,
                width = 64,
                height = 64,
                frame_count = 32,
                animation_speed = 0.5,
                direction_count = 1,
                -- shift = util.by_pixel(0, -8.5),
                -- run_mode = "forward-then-backward",
                hr_version = {
                    priority = "high",
                    filename = "__aix_matter__/graphics/entity/matter-drill/mk2/miner-2-working-E.png",
                    line_length = 8,
                    width = 192,
                    height = 192,
                    frame_count = 32,
                    animation_speed = 0.5,
                    direction_count = 1,
                    -- shift = util.by_pixel(0, -8),
                    -- run_mode = "forward-then-backward",
                    scale = 0.5
                }
            },
            south = {
                priority = "high",
                filename = "__aix_matter__/graphics/entity/matter-drill/mk2/lr-miner-2-working-S.png",
                line_length = 8,
                width = 64,
                height = 64,
                frame_count = 32,
                animation_speed = 0.5,
                direction_count = 1,
                -- shift = util.by_pixel(0, -8.5),
                -- run_mode = "forward-then-backward",
                hr_version = {
                    priority = "high",
                    filename = "__aix_matter__/graphics/entity/matter-drill/mk2/miner-2-working-S.png",
                    line_length = 8,
                    width = 192,
                    height = 192,
                    frame_count = 32,
                    animation_speed = 0.5,
                    direction_count = 1,
                    -- shift = util.by_pixel(0, -8),
                    -- run_mode = "forward-then-backward",
                    scale = 0.5
                }
            },
            west = {
                priority = "high",
                filename = "__aix_matter__/graphics/entity/matter-drill/mk2/lr-miner-2-working-W.png",
                line_length = 8,
                width = 64,
                height = 64,
                frame_count = 32,
                animation_speed = 0.5,
                direction_count = 1,
                -- shift = util.by_pixel(0, -8.5),
                -- run_mode = "forward-then-backward",
                hr_version = {
                    priority = "high",
                    filename = "__aix_matter__/graphics/entity/matter-drill/mk2/miner-2-working-W.png",
                    line_length = 8,
                    width = 192,
                    height = 192,
                    frame_count = 32,
                    animation_speed = 0.5,
                    direction_count = 1,
                    -- shift = util.by_pixel(0, -8),
                    -- run_mode = "forward-then-backward",
                    scale = 0.5
                }
            }
        },
        input_fluid_patch_sprites = {
            north = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-patch.png",
                width = 100,
                height = 111,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(0, -6.5),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-patch.png",
                    width = 200,
                    height = 222,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-0.5, -6.5),
                    scale = 0.5
                }
            },
            east = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-patch.png",
                width = 100,
                height = 110,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(0, -6),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-patch.png",
                    width = 200,
                    height = 219,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(0, -5.75),
                    scale = 0.5
                }
            },
            south = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-patch.png",
                width = 100,
                height = 113,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(0, -7.5),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-patch.png",
                    width = 200,
                    height = 226,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-0.5, -7.5),
                    scale = 0.5
                }
            },
            west = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-patch.png",
                width = 100,
                height = 108,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(0, -5),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-patch.png",
                    width = 200,
                    height = 220,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-0.5, -6),
                    scale = 0.5
                }
            }
        },
        input_fluid_patch_shadow_sprites = {
            north = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-patch-shadow.png",
                flags = {"shadow"},
                width = 110,
                height = 98,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(5, 0),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-patch-shadow.png",
                    flags = {"shadow"},
                    width = 220,
                    height = 197,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(5, -0.25),
                    scale = 0.5
                }
            },
            east = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-patch-shadow.png",
                flags = {"shadow"},
                width = 112,
                height = 98,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(6, 0),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-patch-shadow.png",
                    flags = {"shadow"},
                    width = 224,
                    height = 198,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(6, 0),
                    scale = 0.5
                }
            },
            south = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-patch-shadow.png",
                flags = {"shadow"},
                width = 110,
                height = 98,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(5, 0),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-patch-shadow.png",
                    flags = {"shadow"},
                    width = 220,
                    height = 197,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(5, -0.25),
                    scale = 0.5
                }
            },
            west = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-patch-shadow.png",
                flags = {"shadow"},
                width = 110,
                height = 98,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(5, 0),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-patch-shadow.png",
                    flags = {"shadow"},
                    width = 220,
                    height = 197,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(5, -0.25),
                    scale = 0.5
                }
            }
        },
        input_fluid_patch_window_sprites = {
            north = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-window-background.png",
                width = 72,
                height = 54,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(-1, 1),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-window-background.png",
                    width = 142,
                    height = 107,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-1, 0.75),
                    scale = 0.5
                }
            },
            east = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-window-background.png",
                width = 51,
                height = 74,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(-11.5, -11),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-window-background.png",
                    width = 104,
                    height = 147,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-11, -11.25),
                    scale = 0.5
                }
            },
            south = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-window-background.png",
                width = 71,
                height = 44,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(-1.5, -29),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-window-background.png",
                    width = 141,
                    height = 86,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-1.75, -29),
                    scale = 0.5
                }
            },
            west = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-window-background.png",
                width = 41,
                height = 69,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(11.5, -11.5),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-window-background.png",
                    width = 80,
                    height = 137,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(11.5, -11.25),
                    scale = 0.5
                }
            }
        },

        input_fluid_patch_window_flow_sprites = {
            {
                north = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-fluid-flow.png",
                    width = 68,
                    height = 50,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-2, -1),
                    hr_version = {
                        priority = "extra-high",
                        filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-fluid-flow.png",
                        width = 136,
                        height = 99,
                        frame_count = 1,
                        direction_count = 1,
                        shift = util.by_pixel(-2.5, -0.75),
                        scale = 0.5
                    }
                },
                east = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-fluid-flow.png",
                    width = 41,
                    height = 70,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-11.5, -11),
                    hr_version = {
                        priority = "extra-high",
                        filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-fluid-flow.png",
                        width = 82,
                        height = 139,
                        frame_count = 1,
                        direction_count = 1,
                        shift = util.by_pixel(-11.5, -11.25),
                        scale = 0.5
                    }
                },
                south = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-fluid-flow.png",
                    width = 68,
                    height = 40,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-2, -29),
                    hr_version = {
                        priority = "extra-high",
                        filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-fluid-flow.png",
                        width = 136,
                        height = 80,
                        frame_count = 1,
                        direction_count = 1,
                        shift = util.by_pixel(-2.5, -29.5),
                        scale = 0.5
                    }
                },
                west = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-fluid-flow.png",
                    width = 42,
                    height = 70,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(11, -11),
                    hr_version = {
                        priority = "extra-high",
                        filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-fluid-flow.png",
                        width = 83,
                        height = 140,
                        frame_count = 1,
                        direction_count = 1,
                        shift = util.by_pixel(10.75, -11),
                        scale = 0.5
                    }
                }
            }
        },
        input_fluid_patch_window_base_sprites = {
            {
                north = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-fluid-background.png",
                    width = 70,
                    height = 48,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-2, 0),
                    hr_version = {
                        priority = "extra-high",
                        filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-fluid-background.png",
                        width = 138,
                        height = 94,
                        frame_count = 1,
                        direction_count = 1,
                        shift = util.by_pixel(-2, 0),
                        scale = 0.5
                    }
                },
                east = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-fluid-background.png",
                    width = 42,
                    height = 70,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-12, -11),
                    hr_version = {
                        priority = "extra-high",
                        filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-fluid-background.png",
                        width = 84,
                        height = 138,
                        frame_count = 1,
                        direction_count = 1,
                        shift = util.by_pixel(-12, -11),
                        scale = 0.5
                    }
                },
                south = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-fluid-background.png",
                    width = 70,
                    height = 40,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-2, -29),
                    hr_version = {
                        priority = "extra-high",
                        filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-fluid-background.png",
                        width = 138,
                        height = 80,
                        frame_count = 1,
                        direction_count = 1,
                        shift = util.by_pixel(-2, -29),
                        scale = 0.5
                    }
                },
                west = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-fluid-background.png",
                    width = 42,
                    height = 69,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(12, -10.5),
                    hr_version = {
                        priority = "extra-high",
                        filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-fluid-background.png",
                        width = 83,
                        height = 137,
                        frame_count = 1,
                        direction_count = 1,
                        shift = util.by_pixel(11.75, -10.75),
                        scale = 0.5
                    }
                }
            }
        },
    },
    {
        type = "mining-drill",
        name = "ax-matter-drill-mk3",
        icon = "__aix_matter__/graphics/icons/matter-drill-mk3.png",
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.3, result = "electric-mining-drill"},
        max_health = 300,
        resource_categories = {"basic-solid"},
        corpse = "big-remnants",
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        input_fluid_box = (not data.is_demo) and {
            production_type = "input-output",
            pipe_picture = assembler2pipepictures(),
            pipe_covers = pipecoverspictures(),
            base_area = 1,
            height = 2,
            base_level = -1,
            pipe_connections = {
                {position = {-2, 0}},
                {position = {2, 0}},
                {position = {0, 2}}
            }
        } or nil,
        mining_speed = data.raw["mining-drill"]["electric-mining-drill"].mining_speed * drillSpeedMultipliers.mk3,
        energy_source = {
            type = "electric",
            emissions_per_second_per_watt = 10 / 90000,
            usage_priority = "secondary-input"
        },
        energy_usage = "90kW",
        resource_searching_radius = 2.49,
        vector_to_place_result = {0, -1.85},
        module_specification = {module_slots = 3},
        radius_visualisation_picture = {
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
            width = 10,
            height = 10
        },
        monitor_visualization_tint = {r = 78, g = 173, b = 255},
        fast_replaceable_group = "mining-drill",

        circuit_wire_connection_points = circuit_connector_definitions["electric-mining-drill"].points,
        circuit_connector_sprites = circuit_connector_definitions["electric-mining-drill"].sprites,
        circuit_wire_max_distance = default_circuit_wire_max_distance,
        working_sound = {
            sound = {
                filename = "__base__/sound/electric-mining-drill.ogg",
                volume = 0.75
            },
            apparent_volume = 1.5
        },
        vehicle_impact_sound = {
            filename = "__base__/sound/car-metal-impact.ogg",
            volume = 0.65
        },
        animations = {
            north = {
                priority = "high",
                filename = "__aix_matter__/graphics/entity/matter-drill/mk3/lr-miner-3-working-N.png",
                line_length = 8,
                width = 64,
                height = 64,
                frame_count = 32,
                animation_speed = 0.5,
                direction_count = 1,
                -- shift = util.by_pixel(0, -8.5),
                -- run_mode = "forward-then-backward",
                hr_version = {
                    priority = "high",
                    filename = "__aix_matter__/graphics/entity/matter-drill/mk3/miner-3-working-N.png",
                    line_length = 8,
                    width = 192,
                    height = 192,
                    frame_count = 32,
                    animation_speed = 0.5,
                    direction_count = 1,
                    -- shift = util.by_pixel(0, -8),
                    -- run_mode = "forward-then-backward",
                    scale = 0.5
                }
            },
            east = {
                priority = "high",
                filename = "__aix_matter__/graphics/entity/matter-drill/mk3/lr-miner-3-working-E.png",
                line_length = 8,
                width = 64,
                height = 64,
                frame_count = 32,
                animation_speed = 0.5,
                direction_count = 1,
                -- shift = util.by_pixel(0, -8.5),
                -- run_mode = "forward-then-backward",
                hr_version = {
                    priority = "high",
                    filename = "__aix_matter__/graphics/entity/matter-drill/mk3/miner-3-working-E.png",
                    line_length = 8,
                    width = 192,
                    height = 192,
                    frame_count = 32,
                    animation_speed = 0.5,
                    direction_count = 1,
                    -- shift = util.by_pixel(0, -8),
                    -- run_mode = "forward-then-backward",
                    scale = 0.5
                }
            },
            south = {
                priority = "high",
                filename = "__aix_matter__/graphics/entity/matter-drill/mk3/lr-miner-3-working-S.png",
                line_length = 8,
                width = 64,
                height = 64,
                frame_count = 32,
                animation_speed = 0.5,
                direction_count = 1,
                -- shift = util.by_pixel(0, -8.5),
                -- run_mode = "forward-then-backward",
                hr_version = {
                    priority = "high",
                    filename = "__aix_matter__/graphics/entity/matter-drill/mk3/miner-3-working-S.png",
                    line_length = 8,
                    width = 192,
                    height = 192,
                    frame_count = 32,
                    animation_speed = 0.5,
                    direction_count = 1,
                    -- shift = util.by_pixel(0, -8),
                    -- run_mode = "forward-then-backward",
                    scale = 0.5
                }
            },
            west = {
                priority = "high",
                filename = "__aix_matter__/graphics/entity/matter-drill/mk3/lr-miner-3-working-W.png",
                line_length = 8,
                width = 64,
                height = 64,
                frame_count = 32,
                animation_speed = 0.5,
                direction_count = 1,
                -- shift = util.by_pixel(0, -8.5),
                -- run_mode = "forward-then-backward",
                hr_version = {
                    priority = "high",
                    filename = "__aix_matter__/graphics/entity/matter-drill/mk3/miner-3-working-W.png",
                    line_length = 8,
                    width = 192,
                    height = 192,
                    frame_count = 32,
                    animation_speed = 0.5,
                    direction_count = 1,
                    -- shift = util.by_pixel(0, -8),
                    -- run_mode = "forward-then-backward",
                    scale = 0.5
                }
            }
        },
        input_fluid_patch_sprites = {
            north = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-patch.png",
                width = 100,
                height = 111,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(0, -6.5),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-patch.png",
                    width = 200,
                    height = 222,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-0.5, -6.5),
                    scale = 0.5
                }
            },
            east = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-patch.png",
                width = 100,
                height = 110,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(0, -6),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-patch.png",
                    width = 200,
                    height = 219,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(0, -5.75),
                    scale = 0.5
                }
            },
            south = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-patch.png",
                width = 100,
                height = 113,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(0, -7.5),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-patch.png",
                    width = 200,
                    height = 226,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-0.5, -7.5),
                    scale = 0.5
                }
            },
            west = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-patch.png",
                width = 100,
                height = 108,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(0, -5),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-patch.png",
                    width = 200,
                    height = 220,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-0.5, -6),
                    scale = 0.5
                }
            }
        },
        input_fluid_patch_shadow_sprites = {
            north = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-patch-shadow.png",
                flags = {"shadow"},
                width = 110,
                height = 98,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(5, 0),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-patch-shadow.png",
                    flags = {"shadow"},
                    width = 220,
                    height = 197,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(5, -0.25),
                    scale = 0.5
                }
            },
            east = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-patch-shadow.png",
                flags = {"shadow"},
                width = 112,
                height = 98,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(6, 0),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-patch-shadow.png",
                    flags = {"shadow"},
                    width = 224,
                    height = 198,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(6, 0),
                    scale = 0.5
                }
            },
            south = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-patch-shadow.png",
                flags = {"shadow"},
                width = 110,
                height = 98,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(5, 0),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-patch-shadow.png",
                    flags = {"shadow"},
                    width = 220,
                    height = 197,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(5, -0.25),
                    scale = 0.5
                }
            },
            west = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-patch-shadow.png",
                flags = {"shadow"},
                width = 110,
                height = 98,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(5, 0),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-patch-shadow.png",
                    flags = {"shadow"},
                    width = 220,
                    height = 197,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(5, -0.25),
                    scale = 0.5
                }
            }
        },
        input_fluid_patch_window_sprites = {
            north = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-window-background.png",
                width = 72,
                height = 54,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(-1, 1),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-window-background.png",
                    width = 142,
                    height = 107,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-1, 0.75),
                    scale = 0.5
                }
            },
            east = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-window-background.png",
                width = 51,
                height = 74,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(-11.5, -11),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-window-background.png",
                    width = 104,
                    height = 147,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-11, -11.25),
                    scale = 0.5
                }
            },
            south = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-window-background.png",
                width = 71,
                height = 44,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(-1.5, -29),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-window-background.png",
                    width = 141,
                    height = 86,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-1.75, -29),
                    scale = 0.5
                }
            },
            west = {
                priority = "extra-high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-window-background.png",
                width = 41,
                height = 69,
                frame_count = 1,
                direction_count = 1,
                shift = util.by_pixel(11.5, -11.5),
                hr_version = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-window-background.png",
                    width = 80,
                    height = 137,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(11.5, -11.25),
                    scale = 0.5
                }
            }
        },

        input_fluid_patch_window_flow_sprites = {
            {
                north = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-fluid-flow.png",
                    width = 68,
                    height = 50,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-2, -1),
                    hr_version = {
                        priority = "extra-high",
                        filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-fluid-flow.png",
                        width = 136,
                        height = 99,
                        frame_count = 1,
                        direction_count = 1,
                        shift = util.by_pixel(-2.5, -0.75),
                        scale = 0.5
                    }
                },
                east = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-fluid-flow.png",
                    width = 41,
                    height = 70,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-11.5, -11),
                    hr_version = {
                        priority = "extra-high",
                        filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-fluid-flow.png",
                        width = 82,
                        height = 139,
                        frame_count = 1,
                        direction_count = 1,
                        shift = util.by_pixel(-11.5, -11.25),
                        scale = 0.5
                    }
                },
                south = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-fluid-flow.png",
                    width = 68,
                    height = 40,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-2, -29),
                    hr_version = {
                        priority = "extra-high",
                        filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-fluid-flow.png",
                        width = 136,
                        height = 80,
                        frame_count = 1,
                        direction_count = 1,
                        shift = util.by_pixel(-2.5, -29.5),
                        scale = 0.5
                    }
                },
                west = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-fluid-flow.png",
                    width = 42,
                    height = 70,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(11, -11),
                    hr_version = {
                        priority = "extra-high",
                        filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-fluid-flow.png",
                        width = 83,
                        height = 140,
                        frame_count = 1,
                        direction_count = 1,
                        shift = util.by_pixel(10.75, -11),
                        scale = 0.5
                    }
                }
            }
        },
        input_fluid_patch_window_base_sprites = {
            {
                north = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-fluid-background.png",
                    width = 70,
                    height = 48,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-2, 0),
                    hr_version = {
                        priority = "extra-high",
                        filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-fluid-background.png",
                        width = 138,
                        height = 94,
                        frame_count = 1,
                        direction_count = 1,
                        shift = util.by_pixel(-2, 0),
                        scale = 0.5
                    }
                },
                east = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-fluid-background.png",
                    width = 42,
                    height = 70,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-12, -11),
                    hr_version = {
                        priority = "extra-high",
                        filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-fluid-background.png",
                        width = 84,
                        height = 138,
                        frame_count = 1,
                        direction_count = 1,
                        shift = util.by_pixel(-12, -11),
                        scale = 0.5
                    }
                },
                south = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-fluid-background.png",
                    width = 70,
                    height = 40,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(-2, -29),
                    hr_version = {
                        priority = "extra-high",
                        filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-fluid-background.png",
                        width = 138,
                        height = 80,
                        frame_count = 1,
                        direction_count = 1,
                        shift = util.by_pixel(-2, -29),
                        scale = 0.5
                    }
                },
                west = {
                    priority = "extra-high",
                    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-fluid-background.png",
                    width = 42,
                    height = 69,
                    frame_count = 1,
                    direction_count = 1,
                    shift = util.by_pixel(12, -10.5),
                    hr_version = {
                        priority = "extra-high",
                        filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-fluid-background.png",
                        width = 83,
                        height = 137,
                        frame_count = 1,
                        direction_count = 1,
                        shift = util.by_pixel(11.75, -10.75),
                        scale = 0.5
                    }
                }
            }
        },
    }
})

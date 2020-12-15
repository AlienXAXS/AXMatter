require("power")
require("fuel")

data:extend({
    ------------------------------
    -- ORES
    ------------------------------
    {
        type = "item",
        name = "ax-matter-ore",
        icon = "__aix_matter__/graphics/icons/matter-ore.png",
        icon_size = 32,
        subgroup = "aix-matter-ores",
        order = "g[matter-ore]",
        stack_size = 50
    },
    ------------------------------
    -- NUCLEAR REACTOR WASTE MANAGEMENT (used-up-uranium-fuel-cell)
    ------------------------------
	{
        type = "item",
        name = "ax-iridium-coin",
        icon = "__aix_matter__/graphics/icons/iridium-coin.png",
        icon_size = 32,
        subgroup = "aix-matter-products",
        order = "a-b-c",
        stack_size = 50
    },
	
    -------------------------------
    -- FUELS
    -------------------------------
    {
        type = "item",
        name = "ax-matter-solid-fuel",
        icon = "__aix_matter__/graphics/icons/matter-solid-fuel.png",
        icon_size = 32,
        fuel_category = "chemical",
        fuel_value = "50MJ",
        fuel_acceleration_multiplier = 1.5,
        fuel_top_speed_multiplier = 1.15,
        subgroup = "aix-matter-products",
        order = "a",
        stack_size = 50
    },
    -------------------------------
    -- STUFF
    -------------------------------
    {
        type = "item",
        name = "ax-science-flask",
        icon = "__aix_matter__/graphics/icons/science-flask.png",
        icon_size = 32,
        subgroup = "aix-matter-products",
        order = "a-b",
        stack_size = 100
    },
    {
        type = "item",
        name = "ax-sand",
        icon = "__aix_matter__/graphics/icons/sand.png",
        icon_size = 32,
        subgroup = "aix-matter-products",
        order = "a",
        stack_size = 100
    },
    {
        type = "item",
        name = "ax-matter-laser-turret",
        icon = "__aix_matter__/graphics/icons/matter-laser-turret.png",
        icon_size = 32,
        subgroup = "aix-matter-weaponry",
        order = "c",
        place_result = "ax-matter-laser-turret",
        stack_size = 50
    },
    {
        type = "item",
        name = "ax-matter-cable",
        icon = "__aix_matter__/graphics/icons/matter-cable.png",
        icon_size = 32,
        subgroup = "aix-matter-products",
        order = "a",
        stack_size = 200,
        wire_count = 1
    },
    {
        type = "item",
        name = "ax-air-filter",
        icon = "__aix_matter__/graphics/icons/air-filter.png",
        icon_size = 32,
        subgroup = "aix-matter-products",
        order = "b",
        stack_size = 200,
        wire_count = 1
    },
    -------------------------------
    -- WEAPONRY
    -------------------------------
    {
        type = "item",
        name = "ax-matter-bullets",
        icon = "__aix_matter__/graphics/icons/matter-bullets.png",
        icon_size = 32,
        subgroup = "aix-matter-weaponry",
        order = "a",
        stack_size = 100
    },
    {
        type = "ammo",
        name = "ax-matter-magazine",
        icon = "__aix_matter__/graphics/icons/matter-magazine.png",
        icon_size = 32,
        ammo_type = {
            category = "bullet",
            action = {
                {
                    type = "direct",
                    action_delivery = {
                        {
                            type = "instant",
                            source_effects = {
                                {
                                    type = "create-explosion",
                                    entity_name = "explosion-gunshot"
                                }
                            },
                            target_effects = {
                                {
                                    type = "create-entity",
                                    entity_name = "explosion-hit"
                                },
                                {
                                    type = "damage",
                                    damage = {amount = 14.5, type = "physical"}
                                }
                            }
                        }
                    }
                }
            }
        },
        magazine_size = 24,
        subgroup = "aix-matter-weaponry",
        order = "b",
        stack_size = 200
    },
    -------------------------------
    -- MATERIALS
    -------------------------------
    {
        type = "item",
        name = "ax-matter-ore",
        icon = "__aix_matter__/graphics/icons/matter-ore.png",
        icon_size = 32,
        subgroup = "aix-matter-ores",
        order = "b[ax-matter-ore]",
        stack_size = 100
    },
    {
        type = "item",
        name = "ax-matter-stone-brick",
        icon = "__aix_matter__/graphics/icons/matter-stone-brick.png",
        icon_size = 32,
        subgroup = "aix-matter-weaponry",
        order = "r-b",
        stack_size = 100
    },
    {
        type = "item",
        name = "ax-matter-clay-brick",
        icon = "__aix_matter__/graphics/icons/matter-clay-brick.png",
        icon_size = 32,
        subgroup = "aix-matter-weaponry",
        order = "r-a",
        stack_size = 100
    },
    -- CRACKING
    {
        type = "item",
        name = "ax-cracked-matter-9000",
        icon = "__aix_matter__/graphics/icons/cracked-matter-9000.png",
        icon_size = 32,
        subgroup = "aix-matter-products",
        order = "y",
        stack_size = 100
    },
    {
        type = "item",
        name = "ax-cracked-matter-9001",
        icon = "__aix_matter__/graphics/icons/cracked-matter-9001.png",
        icon_size = 32,
        subgroup = "aix-matter-products",
        order = "z",
        stack_size = 100
    },
    -- IRON
    {
        type = "item",
        name = "ax-matter-covered-iron-plate",
        icon = "__aix_matter__/graphics/icons/matter-covered-iron-plate.png",
        icon_size = 32,
        subgroup = "aix-matter-products",
        order = "e-a",
        stack_size = 100
    },
    {
        type = "item",
        name = "ax-matter-iron-plate",
        icon = "__aix_matter__/graphics/icons/matter-iron-plate.png",
        icon_size = 32,
        subgroup = "aix-matter-products",
        order = "e-a-a",
        stack_size = 100
    },
    {
        type = "item",
        name = "ax-matter-stick",
        icon = "__aix_matter__/graphics/icons/matter-stick.png",
        icon_size = 32,
        subgroup = "aix-matter-products",
        order = "f",
        stack_size = 100
    },
    {
        type = "item",
        name = "ax-matter-gear-wheel",
        icon = "__aix_matter__/graphics/icons/matter-gear-wheel.png",
        icon_size = 32,
        subgroup = "aix-matter-products",
        order = "f-b",
        stack_size = 100
    },
    -- COPPER
    {
        type = "item",
        name = "ax-matter-covered-copper-plate",
        icon = "__aix_matter__/graphics/icons/matter-covered-copper-plate.png",
        icon_size = 32,
        subgroup = "aix-matter-products",
        order = "e-b",
        stack_size = 100
    },
    {
        type = "item",
        name = "ax-matter-copper-plate",
        icon = "__aix_matter__/graphics/icons/matter-copper-plate.png",
        icon_size = 32,
        subgroup = "aix-matter-products",
        order = "e-b-a",
        stack_size = 100
    },
    -- STEEL
    {
        type = "item",
        name = "ax-matter-covered-steel-plate",
        icon = "__aix_matter__/graphics/icons/matter-covered-steel-plate.png",
        icon_size = 32,
        subgroup = "aix-matter-products",
        order = "e-c",
        stack_size = 100
    },
    {
        type = "item",
        name = "ax-matter-steel-plate",
        icon = "__aix_matter__/graphics/icons/matter-steel-plate.png",
        icon_size = 32,
        subgroup = "aix-matter-products",
        order = "e-c-a",
        stack_size = 100
    },
    -------------------------------
    -- ENTITIES (BUILDINGS ETC)
    -------------------------------
    {
        type = "item",
        name = "ax-matter-transport-belt",
        icon = "__aix_matter__/graphics/icons/matter-transport-belt.png",
        icon_size = 32,
        subgroup = "aix-matter-logistic",
        order = "a-a-a",
        place_result = "ax-matter-transport-belt",
        stack_size = 100
    },
	{
        type = "item",
        name = "ax-matter-transport-belt-2",
        icon = "__aix_matter__/graphics/icons/matter-transport-belt-2.png",
        icon_size = 32,
        subgroup = "aix-matter-logistic",
        order = "a-a-b",
        place_result = "ax-matter-transport-belt-2",
        stack_size = 100
    },
	{
        type = "item",
        name = "ax-matter-transport-belt-3",
        icon = "__aix_matter__/graphics/icons/matter-transport-belt-3.png",
        icon_size = 32,
        subgroup = "aix-matter-logistic",
        order = "a-a-c",
        place_result = "ax-matter-transport-belt-3",
        stack_size = 100
    },
    {
        type = "item",
        name = "ax-matter-underground-belt-l12",
        icon = "__aix_matter__/graphics/icons/matter-underground-belt-l12.png",
        icon_size = 32,
        subgroup = "aix-matter-logistic",
        order = "a-b-a",
        place_result = "ax-matter-underground-belt-l12",
        stack_size = 100
    },
	{
        type = "item",
        name = "ax-matter-underground-belt-l16",
        icon = "__aix_matter__/graphics/icons/matter-underground-belt-l16.png",
        icon_size = 32,
        subgroup = "aix-matter-logistic",
        order = "a-b-b",
        place_result = "ax-matter-underground-belt-l16",
        stack_size = 100
    },
	{
        type = "item",
        name = "ax-matter-underground-belt-l20",
        icon = "__aix_matter__/graphics/icons/matter-underground-belt-l20.png",
        icon_size = 32,
        subgroup = "aix-matter-logistic",
        order = "a-b-c",
        place_result = "ax-matter-underground-belt-l20",
        stack_size = 100
    },
    {
        type = "item",
        name = "ax-matter-splitter",
        icon = "__aix_matter__/graphics/icons/matter-splitter.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "aix-matter-logistic",
        order = "a-c-a",
        place_result = "ax-matter-splitter",
        stack_size = 100
    },
	{
        type = "item",
        name = "ax-matter-splitter-2",
        icon = "__aix_matter__/graphics/icons/matter-splitter-2.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "aix-matter-logistic",
        order = "a-c-b",
        place_result = "ax-matter-splitter-2",
        stack_size = 100
    },
	{
        type = "item",
        name = "ax-matter-splitter-3",
        icon = "__aix_matter__/graphics/icons/matter-splitter-3.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "aix-matter-logistic",
        order = "a-c-c",
        place_result = "ax-matter-splitter-3",
        stack_size = 100
    },
    {
        type = "item",
        name = "ax-matter-drill-mk1",
        icon = "__aix_matter__/graphics/icons/matter-drill-mk1.png",
        icon_size = 32,
        subgroup = "aix-matter-buildings",
        order = "x-a",
        place_result = "ax-matter-drill-mk1",
        stack_size = 50
    },
    {
        type = "item",
        name = "ax-matter-drill-mk2",
        icon = "__aix_matter__/graphics/icons/matter-drill-mk2.png",
        icon_size = 32,
        subgroup = "aix-matter-buildings",
        order = "x-b",
        place_result = "ax-matter-drill-mk2",
        stack_size = 50
    },
    {
        type = "item",
        name = "ax-matter-drill-mk3",
        icon = "__aix_matter__/graphics/icons/matter-drill-mk3.png",
        icon_size = 32,
        subgroup = "aix-matter-buildings",
        order = "x-c",
        place_result = "ax-matter-drill-mk3",
        stack_size = 50
    },
	{
        type = "item",
        name = "ax-matter-furnace",
        icon = "__aix_matter__/graphics/icons/matter-furnace.png",
		icon_size = 64, icon_mipmaps = 4,
        subgroup = "aix-matter-buildings",
        order = "a",
        place_result = "ax-matter-furnace",
        stack_size = 50
    },
    {
        type = "item",
        name = "ax-matter-beacon",
        icon = "__aix_matter__/graphics/icons/matter-beacon.png",
		icon_size = 64, icon_mipmaps = 4,
        subgroup = "aix-matter-buildings",
        order = "a",
        place_result = "ax-matter-beacon",
        stack_size = 10
    },
    {
        type = "item",
        name = "ax-matter-wall",
        icon = "__aix_matter__/graphics/icons/matter-wall.png",
        icon_size = 32,
        subgroup = "aix-matter-weaponry",
        order = "s-a",
        place_result = "ax-matter-wall",
        stack_size = 100
    },
    {
        type = "item",
        name = "ax-matter-self-healing-wall",
        icon = "__aix_matter__/graphics/icons/matter-wall-self-healing.png",
        icon_size = 32,
        subgroup = "aix-matter-weaponry",
        order = "s-b",
        place_result = "ax-matter-self-healing-wall",
        stack_size = 100
    },
    {
        type = "item",
        name = "ax-matter-assembling-machine-2",
        icon = "__aix_matter__/graphics/icons/matter-assembling-machine-2.png",
        icon_size = 32,
        subgroup = "aix-matter-production-machines",
        order = "a",
        place_result = "ax-matter-assembling-machine-2",
        stack_size = 50
    },
    {
        type = "item",
        name = "ax-matter-assembling-machine-3",
        icon = "__aix_matter__/graphics/icons/matter-assembling-machine-3.png",
        icon_size = 32,
        subgroup = "aix-matter-production-machines",
        order = "b",
        place_result = "ax-matter-assembling-machine-3",
        stack_size = 50
    },
    {
        type = "item",
        name = "ax-matter-cracker",
        icon = "__aix_matter__/graphics/icons/matter-cracker.png",
        icon_size = 32,
        subgroup = "aix-matter-production-machines",
        order = "c",
        place_result = "ax-matter-cracker",
        stack_size = 20
    },
    {
        type = "item",
        name = "ax-matter-infuser",
        icon = "__aix_matter__/graphics/icons/matter-infuser.png",
        icon_size = 32,
        subgroup = "aix-matter-production-machines",
        order = "d",
        place_result = "ax-matter-infuser",
        stack_size = 20
    },
    {
        type = "item",
        name = "ax-matter-combiner",
        icon = "__aix_matter__/graphics/icons/matter-combiner.png",
        icon_size = 32,
        subgroup = "aix-matter-production-machines",
        order = "d",
        place_result = "ax-matter-combiner",
        stack_size = 20
    },
    {
        type = "item",
        name = "ax-oxygen-collector-mk1",
        icon = "__aix_matter__/graphics/icons/oxygen-collector/oxygen-collector-mk1.png",
        icon_size = 32,
        subgroup = "aix-matter-production-machines",
        order = "e",
        place_result = "ax-oxygen-collector-mk1",
        stack_size = 20
    },
    {
        type = "item",
        name = "ax-oxygen-collector-mk2",
        icon = "__aix_matter__/graphics/icons/oxygen-collector/oxygen-collector-mk2.png",
        icon_size = 32,
        subgroup = "aix-matter-production-machines",
        order = "e",
        place_result = "ax-oxygen-collector-mk2",
        stack_size = 20
    },
    {
        type = "item",
        name = "ax-oxygen-collector-mk3",
        icon = "__aix_matter__/graphics/icons/oxygen-collector/oxygen-collector-mk3.png",
        icon_size = 32,
        subgroup = "aix-matter-production-machines",
        order = "e",
        place_result = "ax-oxygen-collector-mk3",
        stack_size = 20
    },
    {
        type = "item",
        name = "ax-matter-lab",
        icon = "__aix_matter__/graphics/icons/matter-lab.png",
        icon_size = 32,
        subgroup = "aix-matter-buildings",
        order = "a",
        place_result = "ax-matter-lab",
        stack_size = 20
    },
    {
        type = "item",
        name = "ax-matter-ore-converter",
        icon = "__aix_matter__/graphics/icons/matter-ore-converter.png",
        icon_size = 32,
        subgroup = "aix-matter-production-machines",
        order = "z",
        place_result = "ax-matter-ore-converter",
        stack_size = 20
    },
})

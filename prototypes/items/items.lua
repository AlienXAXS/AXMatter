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
-------------------------------
-- FUELS
-------------------------------
  {
    type = "item",
    name = "ax-matter-solid-fuel",
    icon = "__aix_matter__/graphics/icons/matter-solid-fuel.png",
    icon_size = 32,
    fuel_category = "chemical",
    fuel_value = "18MJ",
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
    order = "b",
    stack_size = 100
  },
  {
    type = "item",
    name = "ax-sand",
    icon = "__aix_matter__/graphics/icons/sand.png",
    icon_size = 32,
    subgroup = "aix-matter-products",
    order = "c",
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
    ammo_type =
    {
      category = "bullet",
      action =
      {
        {
          type = "direct",
          action_delivery =
          {
            {
              type = "instant",
              source_effects =
              {
                {
                  type = "create-explosion",
                  entity_name = "explosion-gunshot"
                }
              },
              target_effects =
              {
                {
                  type = "create-entity",
                  entity_name = "explosion-hit"
                },
                {
                  type = "damage",
                  damage = { amount = 14.5 , type = "physical"}
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
    icon = "__aix_matter__/graphics/icons/matter-clay-brick.png",
    icon_size = 32,
    subgroup = "aix-matter-weaponry",
    order = "s-a",
    stack_size = 100
  },
  {
    type = "item",
    name = "ax-matter-clay-brick",
    icon = "__aix_matter__/graphics/icons/matter-stone-brick.png",
    icon_size = 32,
    subgroup = "aix-matter-weaponry",
    order = "s-b",
    stack_size = 100
  },
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
  {
    type = "item",
    name = "ax-uncooked-matter-plate",
    icon = "__aix_matter__/graphics/icons/uncooked-matter-plate.png",
    icon_size = 32,
    subgroup = "aix-matter-products",
    order = "e",
    stack_size = 100
  },
  {
    type = "item",
    name = "ax-cooked-matter-plate",
    icon = "__aix_matter__/graphics/icons/cooked-matter-plate.png",
    icon_size = 32,
    subgroup = "aix-matter-products",
    order = "f",
    stack_size = 100
  },
-------------------------------
-- ENTITIES (BUILDINGS ETC)
-------------------------------
  {
    type = "item",
    name = "ax-matter-beacon",
    icon = "__aix_matter__/graphics/icons/matter-beacon.png",
    icon_size = 32,
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
    order = "s-z",
    place_result = "ax-matter-wall",
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
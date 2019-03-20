data:extend({
------------------------------
-- ORES
------------------------------
  {
    type = "item",
    name = "ax-matter-ore",
    icon = "__ax_matter__/graphics/icons/matter-ore.png",
    icon_size = 32,
    subgroup = "raw-resource",
    order = "g[matter-ore]",
    stack_size = 50
  },
-------------------------------
-- FUELS
-------------------------------
  {
    type = "item",
    name = "ax-matter-solid-fuel",
    icon = "__ax_matter__/graphics/icons/matter-solid-fuel.png",
    icon_size = 32,
    fuel_category = "chemical",
    fuel_value = "18MJ",
    fuel_acceleration_multiplier = 1.5,
    fuel_top_speed_multiplier = 1.15,
    subgroup = "raw-material",
    order = "c[solid-fuel]",
    stack_size = 50
  },
  
-------------------------------
-- WEAPONRY
-------------------------------
  {
    type = "item",
    name = "ax-matter-bullets",
    icon = "__ax_matter__/graphics/icons/matter-bullets.png",
    icon_size = 32,
    subgroup = "ammo",
    order = "c[firearm-magazine]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "ax-matter-magazine",
    icon = "__ax_matter__/graphics/icons/matter-magazine.png",
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
    subgroup = "ammo",
    order = "a[piercing-rounds-magazine]-b[uranium-rounds-magazine]",
    stack_size = 200
  },
-------------------------------
-- MATERIALS
-------------------------------
  {
    type = "item",
    name = "ax-matter-ore",
    icon = "__ax_matter__/graphics/icons/matter-ore.png",
    icon_size = 32,
    subgroup = "raw-resource",
    order = "b[ax-matter-ore]",
    stack_size = 100
  },
  {
    type = "item",
    name = "ax-cracked-matter-9000",
    icon = "__ax_matter__/graphics/icons/cracked-matter-9000.png",
    icon_size = 32,
    subgroup = "raw-material",
    order = "b[ax-matter-9000]",
    stack_size = 100
  },
  {
    type = "item",
    name = "ax-cracked-matter-9001",
    icon = "__ax_matter__/graphics/icons/cracked-matter-9001.png",
    icon_size = 32,
    subgroup = "raw-material",
    order = "b[ax-matter-9001]",
    stack_size = 100
  },
  {
    type = "item",
    name = "ax-uncooked-matter-plate",
    icon = "__ax_matter__/graphics/icons/uncooked-matter-plate.png",
    icon_size = 32,
    subgroup = "raw-material",
    order = "b[ax-matter-9001]",
    stack_size = 100
  },
  {
    type = "item",
    name = "ax-cooked-matter-plate",
    icon = "__ax_matter__/graphics/icons/cooked-matter-plate.png",
    icon_size = 32,
    subgroup = "raw-material",
    order = "b[ax-matter-9001]",
    stack_size = 100
  },
-------------------------------
-- ENTITIES (BUILDINGS ETC)
-------------------------------
  {
	type = "item",
	name = "ax-matter-cracker",
	icon = "__ax_matter__/graphics/icons/matter-cracker.png",
	icon_size = 32,
	subgroup = "extraction-machine",
	order = "w[ax-matter-cracker]",
	place_result = "ax-matter-cracker",
	stack_size = 20
  },
  {
	type = "item",
	name = "ax-matter-infuser",
	icon = "__ax_matter__/graphics/icons/matter-infuser.png",
	icon_size = 32,
	subgroup = "extraction-machine",
	order = "w[ax-matter-infuser]",
	place_result = "ax-matter-infuser",
	stack_size = 20
  },
  {
	type = "item",
	name = "ax-oxygen-collector-mk1",
	icon = "__ax_matter__/graphics/icons/oxygen-collector/oxygen-collector-mk1.png",
	icon_size = 32,
	subgroup = "extraction-machine",
	order = "w[ax-oxygen-collector]",
	place_result = "ax-oxygen-collector-mk1",
	stack_size = 20
  },
  {
	type = "item",
	name = "ax-oxygen-collector-mk2",
	icon = "__ax_matter__/graphics/icons/oxygen-collector/oxygen-collector-mk2.png",
	icon_size = 32,
	subgroup = "extraction-machine",
	order = "w[ax-oxygen-collector]",
	place_result = "ax-oxygen-collector-mk2",
	stack_size = 20
  },
  {
	type = "item",
	name = "ax-oxygen-collector-mk3",
	icon = "__ax_matter__/graphics/icons/oxygen-collector/oxygen-collector-mk3.png",
	icon_size = 32,
	subgroup = "extraction-machine",
	order = "w[ax-oxygen-collector]",
	place_result = "ax-oxygen-collector-mk3",
	stack_size = 20
  },
  {
	type = "item",
	name = "ax-matter-lab",
	icon = "__ax_matter__/graphics/icons/matter-lab.png",
	icon_size = 32,
	subgroup = "production-machine",
	order = "w[ax-oxygen-collector]",
	place_result = "ax-matter-lab",
	stack_size = 20
  },
  {
	type = "item",
	name = "ax-matter-ore-converter",
	icon = "__ax_matter__/graphics/icons/matter-ore-converter.png",
	icon_size = 32,
	subgroup = "extraction-machine",
	order = "w[ax-oxygen-collector]",
	place_result = "ax-matter-ore-converter",
	stack_size = 20
  },
})
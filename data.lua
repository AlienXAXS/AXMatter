-- Setup global mod variables
if not axmatter then axmatter = {} end
if not axmatter.func then axmatter.func = {} end

data:extend({
  {
    type = "item-group",
    name = "aix-matter-group",
    order = "ge",
    inventory_order = "ge",
    icon = "__aix_matter__/graphics/icons/aixmatter.png",
    icon_size = 64,
  },
  {
    type = "item-subgroup",
    name = "aix-matter-science-powder",
    group = "aix-matter-group",
    order = "a"
  },
  {
    type = "item-subgroup",
    name = "aix-matter-science",
    group = "aix-matter-group",
    order = "b"
  },
  {
    type = "item-subgroup",
    name = "aix-matter-products",
    group = "aix-matter-group",
    order = "c"
  },
  {
    type = "item-subgroup",
    name = "aix-matter-production-machines",
    group = "aix-matter-group",
    order = "c"
  },
  {
    type = "item-subgroup",
    name = "aix-matter-buildings",
    group = "aix-matter-group",
    order = "c"
  },
  {
    type = "item-subgroup",
    name = "aix-matter-weaponry",
    group = "aix-matter-group",
    order = "c"
  },
  {
    type = "item-subgroup",
    name = "aix-matter-power",
    group = "aix-matter-group",
    order = "c"
  },
  {
    type = "item-subgroup",
    name = "aix-matter-ores",
    group = "aix-matter-group",
    order = "d"
  },
  {
    type = "item-subgroup",
    name = "aix-matter-fluids",
    group = "aix-matter-group",
    order = "d"
  },
  {
    type = "item-subgroup",
    name = "aix-matter-crushed-ores",
    group = "aix-matter-group",
    order = "d"
  },
  {
    type = "item-subgroup",
    name = "ax-ores",
    group = "intermediate-products",
    order = "b-a"
  },
  {
    type = "resource-category",
    name = "ax-liquid"
  }
})

-- Ores
require("prototypes.ores.matter-ore")

-- Fluids (Some fluid-ores too)
require("prototypes.fluids.liquid-matter")
require("prototypes.fluids.oxygen")

-- Entities
require("prototypes.entities.matter-infuser")
require("prototypes.entities.matter-combiner")
require("prototypes.entities.oxygen-collector")
require("prototypes.entities.matter-cracker")
require("prototypes.entities.matter-lab")
require("prototypes.entities.matter-ore-converter")
require("prototypes.entities.matter-laser-turret")
require("prototypes.entities.matter-beacon")
require("prototypes.entities.matter-assemblers")
require("prototypes.entities.matter-stone-wall")
require("prototypes.entities.matter-power")

-- Items
require("prototypes.items.items")
require("prototypes.items.science")

-- Recipies
require("prototypes.recipe.oxygen-collector")
require("prototypes.recipe.matter-infuser-combiner")
require("prototypes.recipe.matter-cracker")
require("prototypes.recipe.technology.science_packs")
require("prototypes.recipe.matter-lab")
require("prototypes.recipe.matter-plate")
require("prototypes.recipe.matter-weaponry")
require("prototypes.recipe.matter-fuel")
require("prototypes.recipe.matter-ore-conversion")
require("prototypes.recipe.matter-ore-converter")
require("prototypes.recipe.glass")
require("prototypes.recipe.matter-beacon")
require("prototypes.recipe.matter-cable")
require("prototypes.recipe.matter-assemblers")
require("prototypes.recipe.matter-fluids")
require("prototypes.recipe.matter-power")

-- Technology
require("prototypes.technology.lab-tech")
require("prototypes.technology.weird-material")
require("prototypes.technology.glowing-fluids")
require("prototypes.technology.matter-military-science-pack")
require("prototypes.technology.matter-weaponry")
require("prototypes.technology.chemical-testing")
require("prototypes.technology.matter-cracking")
require("prototypes.technology.matter-infused-production")
require("prototypes.technology.matter-ore-conversion")
require("prototypes.technology.matter-effect-transmission")
require("prototypes.technology.matter-assemblers")
require("prototypes.technology.matter-laser-turrets")
require("prototypes.technology.matter-power-generation")
require("prototypes.technology.matter-power-supply")
require("prototypes.technology.matter-adv-power-supply")
-- Setup global mod variables
if not axmatter then axmatter = {} end
if not axmatter.func then axmatter.func = {} end

data:extend(
{
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
}
)

-- Ores
require("prototypes.ores.matter-ore")
--require("prototypes.ores.matter-iron-ore")
--require("prototypes.ores.matter-copper-ore")
--require("prototypes.ores.matter-stone")
--require("prototypes.ores.matter-coal")

-- Fluids (Some fluid-ores too)
require("prototypes.fluids.liquid-matter")
require("prototypes.fluids.oxygen")

-- Entities
require("prototypes.entities.matter-infuser")
require("prototypes.entities.oxygen-collector")
require("prototypes.entities.matter-cracker")
require("prototypes.entities.matter-lab")
require("prototypes.entities.matter-ore-converter")
require("prototypes.entities.matter-laser-turret")
require("prototypes.entities.matter-beacon")

-- Items
require("prototypes.items.items")
require("prototypes.items.science")

-- Recipies
require("prototypes.recipe.oxygen-collector")
require("prototypes.recipe.matter-infuser")
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
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

-- Fluids (Some fluid-ores too)
require("prototypes.fluids.liquid-matter")
require("prototypes.fluids.oxygen")

-- Entities
require("prototypes.entities.matter-infuser")
require("prototypes.entities.oxygen-collector")
require("prototypes.entities.matter-cracker")
require("prototypes.entities.matter-lab")

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

-- Technology
require("prototypes.technology.stage_1_technology")
require("prototypes.technology.stage_2_technology")
require("prototypes.technology.stage_3_technology")
require("prototypes.technology.stage_4_technology_pre_weaponry")
require("prototypes.technology.stage_4_technology_post_weaponry")
require("prototypes.technology.stage_4_technology")
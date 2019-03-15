data:extend({
  {
    type = "technology",
    name = "ax-matter-weird-material",
    icon = "__ax_matter__/graphics/technology/weird-material.png",
    icon_size = "128",
    prerequisites = {"ax-matter-lab-tech"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ax-matter-science-matter-infused-automation"
      }
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    order = "d-a-a"
  }
})
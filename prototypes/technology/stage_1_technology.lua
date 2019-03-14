data:extend({
  {
    type = "technology",
    name = "ax-matter-lab-tech",
    icon = "__ax_matter__/graphics/technology/tech-placeholder.png",
    icon_size = "64",
    prerequisites = {"plastics", "steel-processing", "advanced-electronics"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ax-matter-lab"
      }
    },
    unit =
    {
      count = 165,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 42
    },
    order = "d-a-a"
  }
})
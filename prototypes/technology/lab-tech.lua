data:extend({
  {
    type = "technology",
    name = "ax-matter-lab-tech",
    icon = "__aix_matter__/graphics/technology/matter-lab.png",
    icon_size = "128",
    prerequisites = {"steel-processing", "electronics"},
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
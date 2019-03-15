data:extend({
  {
    type = "technology",
    name = "ax-matter-glowing-fluids",
    icon = "__ax_matter__/graphics/technology/glowing-fluids.png",
    icon_size = "128",
    prerequisites = {"ax-matter-weird-material", "oil-processing"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ax-matter-science-matter-infused-logistic"
      },
	  {
        type = "unlock-recipe",
        recipe = "ax-uncooked-matter-plate"
      },
	  {
        type = "unlock-recipe",
        recipe = "ax-cooked-matter-plate"
      },
	  {
        type = "unlock-recipe",
        recipe = "matter-solid-fuel"
      }
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"ax-matter-science-matter-infused-automation", 1},
      },
      time = 30
    },
    order = "d-a-a"
  }
})
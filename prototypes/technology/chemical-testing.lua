data:extend({
  {
    type = "technology",
    name = "ax-matter-chemical-testing",
    icon = "__ax_matter__/graphics/technology/chemical-testing.png",
    icon_size = "128",
    prerequisites = {"ax-matter-glowing-fluids", "chemical-science-pack", "oil-processing"},
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "ax-matter-science-matter-infused-chemical"
      }
    },
    unit =
    {
      count = 155,
      ingredients = {
        {"ax-matter-science-matter-infused-automation", 1},
		{"ax-matter-science-matter-infused-logistic", 1},
      },
      time = 30
    },
    order = "d-a-a"
  }
})
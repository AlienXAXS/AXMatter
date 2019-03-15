data:extend({
  {
    type = "technology",
    name = "ax-matter-cracking",
    icon = "__ax_matter__/graphics/technology/matter-cracking.png",
    icon_size = "128",
    prerequisites = {"ax-matter-glowing-fluids", "chemical-science-pack", "sulfur-processing", "ax-matter-chemical-testing"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ax-matter-cracker"
      },
	  {
        type = "unlock-recipe",
        recipe = "ax-matter-processing"
      }
    },
    unit =
    {
      count = 225,
      ingredients = {
        {"ax-matter-science-matter-infused-automation", 1},
		{"ax-matter-science-matter-infused-logistic", 1},
		{"ax-matter-science-matter-infused-chemical", 1}
      },
      time = 30
    },
    order = "d-a-a"
  }
})
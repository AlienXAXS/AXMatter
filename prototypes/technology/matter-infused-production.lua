data:extend({
  {
    type = "technology",
    name = "ax-matter-infused-production",
    icon = "__aix_matter__/graphics/technology/matter-infused-production.png",
    icon_size = "128",
    prerequisites = {"ax-matter-cracking", "ax-matter-chemical-testing", "production-science-pack"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ax-matter-science-matter-infused-production"
      },
	  {
        type = "unlock-recipe",
        recipe = "ax-powder-production"
      },
    },
    unit =
    {
      count = 125,
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
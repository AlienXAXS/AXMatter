data:extend({
  {
    type = "technology",
    name = "ax-matter-ore-conversion",
    icon = "__aix_matter__/graphics/technology/matter-ore-conversion.png",
    icon_size = "128",
    prerequisites = {"ax-matter-infused-production"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ax-matter-ore-converter"
      }
    },
    unit =
    {
      count = 475,
      ingredients = {
		{"ax-matter-science-matter-infused-automation", 2},
        {"ax-matter-science-matter-infused-logistic", 2},
        {"ax-matter-science-matter-infused-chemical", 2}
      },
      time = 30
    },
    order = "d-a-a"
  }
})
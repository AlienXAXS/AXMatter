data:extend({
  {
    type = "technology",
    name = "ax-matter-weaponry",
    icon = "__aix_matter__/graphics/technology/matter-bullets.png",
    icon_size = "128",
    prerequisites = {"ax-matter-military-science-pack"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ax-matter-bullets"
      },
	  {
        type = "unlock-recipe",
        recipe = "ax-matter-magazine"
      },
	  {
		type = "unlock-recipe",
		recipe = "ax-matter-laser-turret"
	  }
    },
    unit =
    {
      count = 100,
      ingredients = {
        {"ax-matter-science-matter-infused-military", 1},
      },
      time = 30
    },
    order = "d-a-a"
  }
})
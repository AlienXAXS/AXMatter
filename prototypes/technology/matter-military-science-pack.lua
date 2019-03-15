data:extend({
  {
    type = "technology",
    name = "ax-matter-military-science-pack",
    icon = "__ax_matter__/graphics/technology/matter-weaponry.png",
    icon_size = "128",
    prerequisites = {"ax-matter-weird-material", "ax-matter-glowing-fluids", "military-science-pack", "military", "military-2"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ax-matter-science-matter-infused-military"
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
data:extend({
  {
    type = "technology",
    name = "ax-matter-adv-power-supply",
    icon = "__aix_matter__/graphics/technology/matter-power-supply.png",
    icon_size = "128",
    prerequisites = {"ax-matter-power-supply", "electric-energy-distribution-2"},
    effects =
    {
      -- Substation
      {
        type = "unlock-recipe",
        recipe = "ax-matter-substation-from-substation"
      },
      {
        type = "unlock-recipe",
        recipe = "ax-matter-substation"
      },
      
      -- Med Pole
      {
        type = "unlock-recipe",
        recipe = "ax-matter-medium-extended-electric-pole-from-pole"
      },
      {
        type = "unlock-recipe",
        recipe = "ax-matter-medium-extended-electric-pole"
      },
      
      -- Big Pole
      {
        type = "unlock-recipe",
        recipe = "ax-matter-big-extended-electric-pole-from-pole"
      },
      {
        type = "unlock-recipe",
        recipe = "ax-matter-big-extended-electric-pole"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"ax-matter-science-matter-infused-automation", 1},
        {"ax-matter-science-matter-infused-logistic", 1},
        {"ax-matter-science-matter-infused-chemical", 1},
      },
      time = 30
    },
    order = "x"
  }
})
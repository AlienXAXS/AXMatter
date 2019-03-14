data:extend({
  {
    type = "recipe-category",
    name = "ax-matter-cracker"
  },
  {
    type = "recipe",
    name = "uranium-processing",
    energy_required = 12,
    enabled = false,
    category = "centrifuging",
    ingredients = {{"uranium-ore", 10}},
    icon = "__base__/graphics/icons/uranium-processing.png",
    icon_size = 32,
    subgroup = "raw-material",
    order = "k[ax-matter-cracker]", -- k ordering so it shows up after explosives which is j ordering
    results =
    {
      {
        name = "uranium-235",
        probability = 0.007,
        amount = 1
      },
      {
        name = "uranium-238",
        probability = 0.993,
        amount = 1
      }
    }
  }
})
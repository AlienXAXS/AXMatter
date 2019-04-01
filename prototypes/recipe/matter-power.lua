data:extend({
  {
    type = "recipe",
    name = "ax-matter-boiler-mk1",
    enabled = false,
    energy_required = 8,
    ingredients =
    {
      {"boiler", 1},
	  {"ax-matter-iron-plate", 24},
      {"ax-matter-copper-plate", 24},
    },
    result = "ax-matter-boiler-mk1"
  },
  {
    type = "recipe",
    name = "ax-matter-power-generator-mk1",
    enabled = false,
    energy_required = 8,
    ingredients =
    {
      {"steam-engine", 1},
	  {"ax-matter-iron-plate", 50},
      {"ax-matter-copper-plate", 42},
    },
    result = "ax-matter-power-generator-mk1"
  },
})
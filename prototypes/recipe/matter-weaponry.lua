data:extend({
  {
	type = "recipe",
	name = "ax-matter-bullets",
	enabled = false,
	energy_required = 2,
	ingredients =
	{
		{"firearm-magazine", 1},
		{"ax-cooked-matter-plate",4},
		{"copper-plate",4}
	},
	result = "ax-matter-bullets"
  },
  {
	type = "recipe",
	name = "ax-matter-magazine",
	enabled = false,
	energy_required = 5,
	ingredients =
	{
		{"ax-matter-bullets", 4},
		{"ax-cooked-matter-plate",1}
	},
	result = "ax-matter-magazine"
  },
  {
    type = "recipe",
    name = "ax-matter-laser-turret",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
	  {"ax-cooked-matter-plate", 20},
      {"steel-plate", 20},
      {"electronic-circuit", 20},
      {"battery", 12}
    },
    result = "ax-matter-laser-turret"
  },
})
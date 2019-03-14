data:extend({
  {
    type = "recipe-category",
    name = "ax-matter-weaponry"
  },
  {
	type = "recipe",
	name = "ax-matter-bullets",
	enabled = false,
	energy_required = 2,
	category = "ax-matter-weaponry",
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
	category = "ax-matter-weaponry",
	ingredients =
	{
		{"ax-matter-bullets", 4},
		{"ax-cooked-matter-plate",1}
	},
	result = "ax-matter-magazine"
  }
})
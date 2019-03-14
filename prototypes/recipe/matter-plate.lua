data:extend({
  {
    type = "recipe-category",
    name = "ax-matter-plate"
  },
  {
	type = "recipe",
	name = "ax-uncooked-matter-plate",
	enabled = false,
	energy_required = 20,
	category = "crafting-with-fluid",
	ingredients =
	{
		{"iron-plate", 1},
		{"ax-matter-ore",6},
		{type="fluid", name="ax-liquid-matter", amount=24}
	},
	result = "ax-uncooked-matter-plate"
  },
  {
	type = "recipe",
	name = "ax-cooked-matter-plate",
	category = "smelting",
	enabled = false,
	energy_required = 45,
	ingredients =
	{
		{"ax-uncooked-matter-plate",1}
	},
	result = "ax-cooked-matter-plate"
  }
})
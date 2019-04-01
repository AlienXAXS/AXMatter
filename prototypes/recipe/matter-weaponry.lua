data:extend({
  {
	type = "recipe",
	name = "ax-matter-bullets",
	enabled = false,
	energy_required = 2,
	ingredients =
	{
		{"firearm-magazine", 1},
		{"ax-matter-iron-plate",4},
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
		{"ax-matter-iron-plate",1}
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
	  {"ax-matter-iron-plate", 20},
      {"steel-plate", 20},
      {"electronic-circuit", 20},
      {"battery", 12}
    },
    result = "ax-matter-laser-turret"
  },
  {
	type = "recipe",
	name = "ax-matter-clay-brick",
    category = "crafting-with-fluid",
	enabled = false,
	energy_required = 5,
	ingredients =
	{
		{"stone", 10},
        {type="fluid", name="ax-liquid-matter", amount=150}
	},
	result = "ax-matter-clay-brick"
  },
  {
	type = "recipe",
	name = "ax-matter-stone-brick",
	enabled = false,
	energy_required = 5,
    category = "smelting",
	ingredients =
	{
		{"ax-matter-clay-brick", 1},
	},
	result = "ax-matter-stone-brick"
  },
  {
	type = "recipe",
	name = "ax-matter-wall",
	enabled = false,
	energy_required = 5,
	ingredients =
	{
		{"ax-matter-stone-brick", 20},
	},
	result = "ax-matter-wall"
  },
})
data:extend({
  {
    type = "recipe-category",
    name = "ax-techtree-stage-1"
  },
  
  ------------------------------
  --  MATTER INFUSED AUTOMATION SCIENCE PACK
  ------------------------------
  {
	type = "recipe",
	name = "ax-matter-science-matter-infused-automation",
	enabled = false,
	energy_required = 20,
	ingredients =
	{
		{"automation-science-pack",1},
		{"ax-matter-ore",10}
	},
	result = "ax-matter-science-matter-infused-automation"
  },
  
  ------------------------------
  --  MATTER INFUSED LOGISTIC SCIENCE PACK
  ------------------------------
  {
	type = "recipe",
	name = "ax-matter-science-matter-infused-logistic",
	enabled = false,
	energy_required = 20,
	ingredients =
	{
		{"ax-cooked-matter-plate",4},
		{"logistic-science-pack",1},
		{"ax-matter-science-matter-infused-automation",1}
	},
	result = "ax-matter-science-matter-infused-logistic"
  },
  
  ------------------------------
  --  MATTER INFUSED MILITARY SCIENCE PACK
  ------------------------------
  {
	type = "recipe",
	name = "ax-matter-science-matter-infused-military",
	enabled = false,
	energy_required = 20,
	ingredients =
	{
		{"ax-cooked-matter-plate",4},
		{"military-science-pack",1},
		{"firearm-magazine",2}
	},
	result = "ax-matter-science-matter-infused-military"
  },
  
  ------------------------------
  --  MATTER INFUSED CHEMICAL SCIENCE PACK
  ------------------------------
  {
	type = "recipe",
	name = "ax-matter-science-matter-infused-chemical",
	enabled = false,
	energy_required = 20,
	category="crafting-with-fluid",
	ingredients =
	{
		{"chemical-science-pack",1},
		{"ax-cooked-matter-plate",4},
		{"ax-matter-solid-fuel",1}
	},
	result = "ax-matter-science-matter-infused-chemical"
  },
  
  ------------------------------
  --  MATTER INFUSED PRODUCTION SCIENCE PACK
  ------------------------------
  {
	type = "recipe",
	name = "ax-matter-science-matter-infused-production",
	enabled = false,
	energy_required = 20,
	ingredients =
	{
		{"production-science-pack",1},
		{"ax-matter-science-matter-infused-automation",4},
		{"ax-matter-science-matter-infused-logistic",4},
		{"ax-matter-science-matter-infused-military",4},
		{"ax-matter-science-matter-infused-chemical",4}
	},
	result = "ax-matter-science-matter-infused-production"
  },
  
  ------------------------------
  --  MATTER INFUSED SPACE SCIENCE PACK
  ------------------------------
  {
	type = "recipe",
	name = "ax-matter-science-matter-infused-space",
	enabled = false,
	energy_required = 20,
	ingredients =
	{
		{"space-science-pack",1},
		{"ax-matter-science-matter-infused-automation",4},
		{"ax-matter-science-matter-infused-logistic",4},
		{"ax-matter-science-matter-infused-military",4},
		{"ax-matter-science-matter-infused-chemical",4},
		{"ax-matter-science-matter-infused-production",4}
	},
	result = "ax-matter-science-matter-infused-space"
  }
})
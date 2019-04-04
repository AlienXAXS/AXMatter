data:extend({
  {
    type = "recipe",
    name = "ax-matter-boiler-mk1",
    enabled = false,
    energy_required = 8,
    ingredients =
    {
      {"boiler", 1},
	    {"ax-matter-iron-plate", 12},
      {"ax-matter-copper-plate", 12},
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
	    {"ax-matter-iron-plate", 12},
      {"ax-matter-copper-plate", 12},
    },
    result = "ax-matter-power-generator-mk1"
  },
  
  
  
  --- Matter med elec pole (FROM ELEC POLE)
  {
    type = "recipe",
    name = "ax-matter-medium-electric-pole-from-pole",
    enabled = false,
    energy_required = 8,
    ingredients =
    {
      {"medium-electric-pole", 1},
	  {"ax-matter-stick", 2},
      {"ax-matter-steel-plate", 1},
    },
    result = "ax-matter-medium-electric-pole"
  },
  --- Matter med elec pole (FROM NEW)
  {
    type = "recipe",
    name = "ax-matter-medium-electric-pole",
    enabled = false,
    energy_required = 8,
    ingredients =
    {
	  {"ax-matter-stick", 4},
      {"ax-matter-steel-plate", 2},
      {"ax-matter-copper-plate", 2}
    },
    result = "ax-matter-medium-electric-pole"
  },
  
  
  --- Matter extended med elec pole (FROM ELEC POLE)
  {
    type = "recipe",
    name = "ax-matter-medium-extended-electric-pole-from-pole",
    enabled = false,
    energy_required = 8,
    ingredients =
    {
      {"medium-electric-pole", 1},
	  {"ax-matter-stick", 4},
      {"ax-matter-steel-plate", 2},
      {"ax-matter-cable", 4}
    },
    result = "ax-matter-medium-extended-electric-pole"
  },
  --- Matter extended med elec pole (FROM NEW)
  {
    type = "recipe",
    name = "ax-matter-medium-extended-electric-pole",
    enabled = false,
    energy_required = 8,
    ingredients =
    {
	  {"ax-matter-stick", 8},
      {"ax-matter-steel-plate", 4},
      {"ax-matter-copper-plate", 4},
      {"ax-matter-cable", 4}
    },
    result = "ax-matter-medium-extended-electric-pole"
  },
  
  
  --- Matter big elec pole (FROM ELEC POLE)
  {
    type = "recipe",
    name = "ax-matter-big-electric-pole-from-pole",
    enabled = false,
    energy_required = 8,
    ingredients =
    {
      {"big-electric-pole", 1},
	  {"ax-matter-stick", 4},
      {"ax-matter-steel-plate", 2},
    },
    result = "ax-matter-big-electric-pole"
  },
  --- Matter big elec pole (FROM NEW)
  {
    type = "recipe",
    name = "ax-matter-big-electric-pole",
    enabled = false,
    energy_required = 8,
    ingredients =
    {
	  {"ax-matter-stick", 14},
      {"ax-matter-steel-plate", 10},
      {"ax-matter-copper-plate", 8},
    },
    result = "ax-matter-big-electric-pole"
  },
  
  --- Matter extended big elec pole (FROM ELEC POLE)
  {
    type = "recipe",
    name = "ax-matter-big-extended-electric-pole-from-pole",
    enabled = false,
    energy_required = 8,
    ingredients =
    {
      {"big-electric-pole", 1},
	  {"ax-matter-stick", 4},
      {"ax-matter-steel-plate", 2},
      {"ax-matter-cable", 4}
    },
    result = "ax-matter-big-extended-electric-pole"
  },
  --- Matter extended big elec pole (FROM NEW)
  {
    type = "recipe",
    name = "ax-matter-big-extended-electric-pole",
    enabled = false,
    energy_required = 8,
    ingredients =
    {
	  {"ax-matter-stick", 14},
      {"ax-matter-steel-plate", 8},
      {"ax-matter-copper-plate", 6},
      {"ax-matter-cable", 4}
    },
    result = "ax-matter-big-extended-electric-pole"
  },
  
  --- Matter substation (FROM SUBSTATION)
  {
    type = "recipe",
    name = "ax-matter-substation-from-substation",
    enabled = false,
    energy_required = 8,
    ingredients =
    {
      {"substation", 1},
      {"ax-matter-steel-plate", 2},
      {"ax-matter-copper-plate", 2},
    },
    result = "ax-matter-substation"
  },
  --- Matter substation (FROM NEW)
  {
    type = "recipe",
    name = "ax-matter-substation",
    enabled = false,
    energy_required = 8,
    ingredients =
    {
	  {"ax-matter-steel-plate", 10},
      {"advanced-circuit", 5},
      {"ax-matter-copper-plate", 5}
    },
    result = "ax-matter-substation"
  },
})
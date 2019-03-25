data:extend({

------------------------------
-- STAGE ONE SCIENCE PACKS
------------------------------


  -------------------------------------------------
  -- AUTOMATION SCIENCE POWER & PACK
  -------------------------------------------------

  {
    type = "item",
    name = "ax-powder-automation",
    icon = "__aix_matter__/graphics/icons/science/powder-automation.png",
    icon_size = 32,
    subgroup = "raw-resource",
    order = "a[ax-matter-science-matter-infused-automation]",
    stack_size = 100
  },
  {
    type = "tool",
    name = "ax-matter-science-matter-infused-automation",
    icon = "__aix_matter__/graphics/icons/science/matter-infused-automation-science-pack.png",
    icon_size = 32,
    subgroup = "science-pack",
    order = "b[automation-science-pack]",
    stack_size = 50,
	durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  
  -------------------------------------------------
  -- CHEMICAL SCIENCE POWER & PACK
  -------------------------------------------------
  
  {
    type = "item",
    name = "ax-powder-chemical",
    icon = "__aix_matter__/graphics/icons/science/powder-chemical.png",
    icon_size = 32,
    subgroup = "raw-resource",
    order = "a[ax-matter-science-matter-infused-chemical]",
    stack_size = 100
  },
  {
    type = "tool",
    name = "ax-matter-science-matter-infused-chemical",
    icon = "__aix_matter__/graphics/icons/science/matter-infused-chemical-science-pack.png",
    icon_size = 32,
    subgroup = "science-pack",
    order = "b[chemical-science-pack]",
    stack_size = 50,
	durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  
  -------------------------------------------------
  -- LOGSTIC SCIENCE POWER & PACK
  -------------------------------------------------
  
  {
    type = "item",
    name = "ax-powder-logistic",
    icon = "__aix_matter__/graphics/icons/science/powder-logistic.png",
    icon_size = 32,
    subgroup = "raw-resource",
    order = "a[ax-matter-science-matter-infused-logistic]",
    stack_size = 100
  },
  {
    type = "tool",
    name = "ax-matter-science-matter-infused-logistic",
    icon = "__aix_matter__/graphics/icons/science/matter-infused-logistic-science-pack.png",
    icon_size = 32,
    subgroup = "science-pack",
    order = "b[logistic-science-pack]",
    stack_size = 50,
	durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  
  
  -------------------------------------------------
  -- MILITARY SCIENCE POWER & PACK
  -------------------------------------------------
  
  {
    type = "item",
    name = "ax-powder-military",
    icon = "__aix_matter__/graphics/icons/science/powder-military.png",
    icon_size = 32,
    subgroup = "raw-resource",
    order = "a[ax-matter-science-matter-infused-military]",
    stack_size = 100
  },
  {
    type = "tool",
    name = "ax-matter-science-matter-infused-military",
    icon = "__aix_matter__/graphics/icons/science/matter-infused-military-science-pack.png",
    icon_size = 32,
    subgroup = "science-pack",
    order = "b[military-science-pack]",
    stack_size = 50,
	durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  
  -------------------------------------------------
  -- PRODUCTION SCIENCE POWER & PACK
  -------------------------------------------------
  
  {
    type = "item",
    name = "ax-powder-production",
    icon = "__aix_matter__/graphics/icons/science/powder-production.png",
    icon_size = 32,
    subgroup = "raw-resource",
    order = "a[ax-matter-science-matter-infused-production]",
    stack_size = 100
  },
  {
    type = "tool",
    name = "ax-matter-science-matter-infused-production",
    icon = "__aix_matter__/graphics/icons/science/matter-infused-production-science-pack.png",
    icon_size = 32,
    subgroup = "science-pack",
    order = "b[production-science-pack]",
    stack_size = 50,
	durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  
  -------------------------------------------------
  -- SPACE SCIENCE POWER & PACK
  -------------------------------------------------
  
  {
    type = "item",
    name = "ax-powder-space",
    icon = "__aix_matter__/graphics/icons/science/powder-space.png",
    icon_size = 32,
    subgroup = "raw-resource",
    order = "a[ax-matter-science-matter-infused-space]",
    stack_size = 100
  },
  {
    type = "tool",
    name = "ax-matter-science-matter-infused-space",
    icon = "__aix_matter__/graphics/icons/science/matter-infused-space-science-pack.png",
    icon_size = 32,
    subgroup = "science-pack",
    order = "b[space-science-pack]",
    stack_size = 50,
	durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  
  
  -------------------------------------------------
  -- UTILITY SCIENCE POWER & PACK
  -------------------------------------------------
  
  {
    type = "item",
    name = "ax-powder-utility",
    icon = "__aix_matter__/graphics/icons/science/powder-utility.png",
    icon_size = 32,
    subgroup = "raw-resource",
    order = "a[ax-matter-science-matter-infused-utility]",
    stack_size = 100
  },
  {
    type = "tool",
    name = "ax-matter-science-matter-infused-utility",
    icon = "__aix_matter__/graphics/icons/science/matter-infused-utility-science-pack.png",
    icon_size = 32,
    subgroup = "science-pack",
    order = "b[utility-science-pack]",
    stack_size = 50,
	durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },

})
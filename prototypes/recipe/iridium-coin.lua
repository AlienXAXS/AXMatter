data:extend({
	{
        type = "recipe",
        name = "ax-depleated-fuel-cell-to-iridium",
        enabled = false,
        energy_required = 60,
        category = "crafting-with-fluid",
        ingredients = {
            {"used-up-uranium-fuel-cell", 1},
            {type = "fluid", name = "sulfuric-acid", amount = 30}
        },
		icon_size = 64, icon_mipmaps = 4,
		icon = "__aix_matter__/graphics/icons/ax-depleated-fuel-cell-to-iridium.png",
		subgroup = "aix-matter-products",
        results = {
            {
                name = "ax-iridium-coin",
                probability = 0.35,
                amount = 2
            },
			{
				name = "uranium-238",
				probability = 0.65,
				amount = 4
			}
        }
    },
})
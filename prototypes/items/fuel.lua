data:extend({
    -------------------------------
    -- FUELS
    -------------------------------
    {
        type = "item",
        name = "ax-matter-solid-fuel",
        icon = "__aix_matter__/graphics/icons/matter-solid-fuel.png",
        icon_size = 32,
        fuel_category = "chemical",
        fuel_value = "50MJ",
        fuel_acceleration_multiplier = 1.5,
        fuel_top_speed_multiplier = 1.15,
        subgroup = "aix-matter-products",
        order = "a",
        stack_size = 50
    },
	{
        type = "item",
        name = "ax-matter-infused-coal",
        icon = "__aix_matter__/graphics/icons/matter-infused-coal.png",
		icon_size = 64, icon_mipmaps = 4,
        fuel_category = "chemical",
        fuel_value = "6.5MJ",
        fuel_acceleration_multiplier = 0.25,
        fuel_top_speed_multiplier = 0.15,
        subgroup = "aix-matter-products",
        order = "a",
        stack_size = 50
    }
})
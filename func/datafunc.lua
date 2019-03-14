function axmatter.func.generate_ore_data(value)
  if value.name then
    if not value.particle then
      value.particle = value.name .. "-particle"
      bobmods.lib.resource.create_particle{name = value.particle, tint = value.tint}
    end

    if value.item and value.item.create then
      if not value.items then value.items = {} end
      local item = {name = value.name, icon = value.icon, subgroup = value.item.subgroup, stack_size = value.item.stack_size, tint = value.tint}
      if value.sprite then
        item.sprite = value.sprite
      end
      bobmods.lib.resource.create_item(item)
      table.insert(value.items,{name = value.name})
    end

    if not value.autoplace then
      value.autoplace = bobmods.lib.resource.create_autoplace{control = value.autoplace.control or value.name, name = value.name, starting_area = true, size = 1, richness = 1}
    else
      if value.autoplace.create then
        local autoplace = bobmods.lib.resource.create_autoplace{control = value.autoplace.control or value.name, name = value.name, starting_area = value.autoplace.starting_area, size = value.autoplace.size, richness = value.autoplace.richness}
        value.autoplace = autoplace
      end
    end

    bobmods.lib.resource.create(value)

    if value.items then
      for i, item in pairs(value.items) do
        bobmods.lib.resource.add_result(value.name, item)
      end
    end
  end
end

function axmatter.func.generate_ore(value)
	if data.raw.resource[value.name] and value.autoplace then
		local control = value.autoplace.control or value.name
		if not data.raw["autoplace-control"][control] then
			log("Creating autoplace-control " .. value.name)
			data:extend(
				{
					{
						type = "autoplace-control",
						name = control,
						richness = true,
						order = "b-d-" .. value.name,
						category = "resource",
					},
				}
			)
		end
		if not data.raw["noise-layer"][value.name] then
		log("Creating noise layer " .. value.name)
		data:extend(
			{
				{
					type = "noise-layer",
					name = value.name
				},
			}
		)
		end
		data.raw.resource[value.name].autoplace = value.autoplace
	else
		log("Ore " .. value.name .. " doesnt exist in the resource data raw, or it doesnt have an autoplace definition")
	end
end
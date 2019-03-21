local matterOreIcon = "__ax_matter__/graphics/icons/matter-ore.png"

local function starts_with(str, start)
   return str:sub(1, #start) == start
end

local function getItem(name)
	local item = data.raw.item[name]
	if ( item ) then
		return item
	end
	return nil
end

local function generateIcons(NewOreName, Ore)

	local oreIcon =
	{
		icon = matterOreIcon,
		tint = {r=0.5,g=0.5,b=0.5,a=0.5},
		scale=0.75,
		shift = {2, 2}
	}

	local retValue =
	{
		{
			icon = Ore.icon
		}
	}

	if ( Ore.icon ) then
		table.insert(retValue, oreIcon)
	end
	
	if ( Ore.icons ) then
		retValue = util.table.deepcopy(Ore.icons)
		table.insert(retValue, oreIcon)
	end
	
	return retValue
end

local function GenerateCrushedIcon(fromItem)
	local icon = nil
	
	if ( fromItem.icon ) then
		icon = fromItem.icon
	elseif ( fromItem.icons ) then
		icon = fromItem.icons[1].icon
	else
		return nil
	end

	return
	{
		{
			icon = "__ax_matter__/graphics/icons/32x32_empty.png"
		},
		{
			icon = icon,
			scale=0.35,
			shift = {2, 2}
		}
	}
end

local function GetVanillaOreName(ore)
	local oreName = ore
	-- Ignore Infinite ore types, just output their normal ore counterparts, if they exist.
	if ( starts_with(ore,"infinite-") ) then
		oreName = ore:sub(10)		--Remove the infinate part
	end
	log( "    > GetVanillaOreName Generated ore name: " .. oreName )
	return oreName
end

local function GetCorrectOreName(ore)
	local oreName = "ax-matter-" .. ore
	-- Ignore Infinite ore types, just output their normal ore counterparts, if they exist.
	if ( starts_with(ore,"infinite-") ) then
		oreName = "ax-matter-" .. ore:sub(10)		--Remove the infinate part
	end
	log( "    > GetCorrectOreName Generated ore name: " .. oreName )
	return oreName
end

local function CreateRecipies(fromItem, ore)
	-- Create the Crushed Recipe and Item
	local generatedIcon = GenerateCrushedIcon(fromItem)
	local originalOreName = GetVanillaOreName(ore.name)
	local newItemName = "crushed-" .. fromItem.name
	
	log ( "    > CreateRecipies: newItemName=" .. newItemName .. " using ore " .. ore.name )
	
	if ( getItem(newItemName) ) then
		return
	end
	
	log ( "   > Creating Crushed Item From " .. fromItem.name .. " using ore " .. originalOreName )
	
	data:extend({
		-- Recipe to craft item below from ore
		{
			type = "recipe",
			name = newItemName,
			ingredients = {{fromItem.name, 1}},
			icons = generatedIcon,
			icon_size = 32,
			results =
			{
			  {
				name = newItemName,
				probability = 1,
				amount = 3
			  }
			}
		},
		-- Item itself
		{
			type = "item",
			name = newItemName,
			localised_name = {"",{"item-name.ax-matter-crushed"}, " ", {"item-name." .. originalOreName}},
			icons = generatedIcon,
			icon_size = 32,
			subgroup = "intermediate-product",
			order = "z[crushed-" .. fromItem.name .. "]",
			stack_size = 100
		},
		-- Smelting
		{
			type = "recipe",
			name = "ax-smelting-" .. newItemName,
			category = "smelting",
			enabled = true,
			energy_required = 2,
			ingredients =
			{
				{newItemName,1}
			},
			result = ore.minable.result or ore.minable.results[1].name
		}
	})
end

local function CreateNewMatterOreItem(NewOreName, Ore)
	local fixedItemName = GetCorrectOreName(NewOreName)
	
	log("   > CreateNewMatterOreItem: " .. NewOreName .. " is now " .. fixedItemName .. ", checking for existing item.")
	
	-- If the item already exists, use that
	local existingItem = getItem(fixedItemName)
	if ( existingItem ) then
		log("   > Existing item found, will use that now (usually means infinite ore was detected)")
		return existingItem
	end

	log ( "   > Existing item not found, generating it now based off name " .. fixedItemName)
	local result =
	{
		type = "item",
		name = fixedItemName,
		localised_name = {"",{"item-name.ax-matter-infused-ore"}, " ", {"entity-name." .. Ore.name}},
		icons = generateIcons(NewOreName, Ore),
		icon_size = 32,
		subgroup = "raw-resource",
		order = "z[" .. Ore.name .. "]",
		stack_size = 50
	}
	data:extend({result})
	
	log("      > DATA EXTEND: " .. result.name .. " created")
	
	-- Create recipies for this new item
	CreateRecipies(result, Ore)
	
	return result
end

local function CreateMatterOrePrototype(NewOreName, Ore)
	local newOre = util.table.deepcopy(data.raw.resource[Ore.name])
	local newMatterOreItemPrototype = CreateNewMatterOreItem(NewOreName, Ore)
	
	newOre.enabled = false
	newOre.minable.mining_time = (newOre.minable.mining_time/2) --half the mining time
	newOre.minable.fluid_amount = 50
	newOre.name = "ax-matter-" .. NewOreName
	newOre.minable.required_fluid = "ax-liquid-matter"
	newOre.minable.result = newMatterOreItemPrototype.name
	newOre.minable.results = nil --Clear out multiple results, we dont support these ores (yet i guess)
	newOre.localised_name = {"",{"entity-name.ax-matter-infused-ore"}, " ", {"entity-name." .. Ore.name}}
	newOre.icon = nil
	newOre.icons = generateIcons(NewOreName, Ore)
	newOre.autoplace = {} --do not autoplace this new ore
	newOre.stages_effect =
    {
      sheet =
      {
        filename = "__ax_matter__/graphics/entity/matter-ore/matter-ore-glow.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        frame_count = Ore.stages.sheet.frame_count, --8,
        variation_count = Ore.stages.sheet.variation_count, --8,
        blend_mode = "additive",
        flags = {"light"}
      }
    }
		
	-- HR Stages
	if ( Ore.stages.sheet.hr_version ) then
		newOre.stages_effect.sheet.hr_version =
        {
          filename = "__ax_matter__/graphics/entity/matter-ore/hr-matter-ore-glow.png",
          priority = "extra-high",
          frame_count = Ore.stages.sheet.hr_version.frame_count,
          variation_count = Ore.stages.sheet.hr_version.variation_count,
          scale = 0.5,
          blend_mode = "additive",
          flags = {"light"}
        }
		
		if ( Ore.stages.sheet.hr_version.size ) then 
			log("   > Ore used 'Size' of " .. Ore.stages.sheet.hr_version.size .. ". Replicating this to new ore stages")
			newOre.stages_effect.sheet.hr_version.size = Ore.stages.sheet.hr_version.size
		end
		if ( Ore.stages.sheet.hr_version.height ) then
			log("   > Ore used 'width & height' of " .. Ore.stages.sheet.hr_version.width .. "x" .. Ore.stages.sheet.hr_version.height .. ". Replicating this to new ore stages")
			newOre.stages_effect.sheet.hr_version.height = Ore.stages.sheet.hr_version.height
			newOre.stages_effect.sheet.hr_version.width = Ore.stages.sheet.hr_version.width
		end
		
		if ( Ore.stages.sheet.hr_version.line_length ) then
			newOre.stages_effect.sheet.hr_version.line_length = Ore.stages.sheet.hr_version.line_length
		end
	end
	
    newOre.effect_animation_period = 5
    newOre.effect_animation_period_deviation = 1
    newOre.effect_darkness_multiplier = 3.6
    newOre.min_effect_alpha = 0.2
    newOre.max_effect_alpha = 0.50
	
	data:extend({newOre})
	
	log("      > DATA EXTEND: " .. newOre.name .. " created")
	
	return newOre, newMatterOreItemPrototype
end

local function ProcessOres()
	local skipOre = false
	for name,ore in pairs(util.table.deepcopy(data.raw["resource"])) do
		skipOre = false
		
		log("Attempting to infuse Liquid Matter into " .. ore.name .. "!")

		-- Checks if it's a fluid
		if ( ore.minable.results ) then
			for _,x in pairs(ore.minable.results) do
				if ( x.type == "fluid" ) then
					skipOre = true
				end
			end
		end
		
		if ( ore.minable.result ) then
			if ( ore.minable.result.type == "fluid" ) then
				skipOre = true
			end
		end
		--end fluid check
		
		-- Skip all ores that have multiple results
		if ( ore.minable.results ) then
			if ( #ore.minable.results > 1 ) then
				skipOre = true
			end
		end
				
		if ( not starts_with(ore.name, "ax") and (not skipOre) ) then -- Do not process our own ores
			local matterOreName = ore.name
			log("  > Creating new ore " .. matterOreName .. "!")
			local generatedMatterOre, generatedMatterOreItem = CreateMatterOrePrototype(matterOreName, ore)
		else
			log("  > Ore is not supported, or is from self")
		end
		
		log("   >  Finished")
	end
end

ProcessOres() --Start to dynamically create our Matter Ores
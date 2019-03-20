local matterOreIcon = "__ax_matter__/graphics/icons/matter-ore.png"

local function starts_with(str, start)
   return str:sub(1, #start) == start
end

local function getItem(name)
	local items = data.raw["items"]
	if ( items ) then
		return items[name]
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

local function createNewMatterOreItem(NewOreName, Ore)
	local result =
	{
		type = "item",
		name = NewOreName,
		localised_name = {"",{"item-name.ax-matter-infused-ore"}, " ", {"entity-name." .. Ore.name}},
		icons = generateIcons(NewOreName, Ore),
		icon_size = 32,
		subgroup = "raw-resource",
		order = "z[" .. Ore.name .. "]",
		stack_size = 50
	}
	data:extend({result})
	return result
end

local function getOrCreateMatterOre(NewOreName, Ore)
	local existingItem = getItem(NewOreName)
	if ( existingItem ) then return existingItem end
	
	return createNewMatterOreItem(NewOreName, Ore)
end

local function createMatterOreEntity(NewOreName, Ore)
	local newOre = util.table.deepcopy(data.raw.resource[Ore.name])
	
	newOre.enabled = false
	newOre.minable.mining_time = (newOre.minable.mining_time/2) --half the mining time
	newOre.minable.fluid_amount = 50
	newOre.name = NewOreName
	newOre.minable.required_fluid = "ax-liquid-matter"
	newOre.minable.result = NewOreName
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
          width = 128,
          height = 128,
          frame_count = Ore.stages.sheet.hr_version.frame_count,
          variation_count = Ore.stages.sheet.hr_version.variation_count,
          scale = 0.5,
          blend_mode = "additive",
          flags = {"light"}
        }
	end
	
    newOre.effect_animation_period = 5
    newOre.effect_animation_period_deviation = 1
    newOre.effect_darkness_multiplier = 3.6
    newOre.min_effect_alpha = 0.2
    newOre.max_effect_alpha = 0.50
	
	data:extend({newOre})
end

local function processOres()
	local skipOre = false
	for name,ore in pairs(data.raw["resource"]) do
		skipOre = false
		
		
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
		
		if ( not starts_with(ore.name, "ax") and (not skipOre) ) then -- Do not process our own ores
			local matterOreName = "ax-matter-" .. ore.name
			local matterOreItem = getOrCreateMatterOre(matterOreName, ore)
			if ( matterOreItem ) then createMatterOreEntity(matterOreName, ore) end
		end
	end
end

processOres() --Start to dynamically create our Matter Ores

-- Fix autoplace crap for matter-ore
--[[
local peak = {
	noise_layer = "ax-matter-ore",
	noise_octaves_difference = -0.85,
	noise_persistence = 0.4
}
table.insert(data.raw.resource["ax-matter-ore"].autoplace.peaks, peak)
]]
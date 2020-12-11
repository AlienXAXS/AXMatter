local AiXDuplicationTechnologyName = "ax-duplication-technology"
local blacklistedRecipes = {"kovarex-enrichment-process", "se-data-storage-substrate"}

function getAllProductivityModuleNames()
	local moduleNames = {}
	for moduleName, moduleData in pairs(data.raw["module"] or {}) do
		if ( next(moduleData.limitation or {}) ) then
			if ( moduleData.effect ~= nil ) and ( moduleData.effect.productivity ~= nil ) then
				table.insert(moduleNames, moduleName)				
			end
		end
	end
	
	return moduleNames
end


  function LSlib.recipe.setResultCount(recipeName, resultName, resultAmount)
    if not data.raw["recipe"][recipeName] then return end
    LSlib.recipe.recipePrototypeCleanup(recipeName)

    if data.raw["recipe"][recipeName].result then
      data.raw["recipe"][recipeName].result_count = resultAmount
    end

    if data.raw["recipe"][recipeName].results then
      for index, result in pairs(data.raw["recipe"][recipeName].results) do
		if ( result.name == nil ) then
			-- No name, just a table
			data.raw["recipe"][recipeName].results[index] = {
				resultName, resultAmount
			}
		else
			if result.name == resultName then
			  result.amount = resultAmount
			  result.amount_min = nil
			  result.amount_max = nil
			  break
			end
		end
      end
    end

    if data.raw["recipe"][recipeName].normal then
      if data.raw["recipe"][recipeName].normal.results or data.raw["recipe"][recipeName].normal.result then
	    if data.raw["recipe"][recipeName].normal.result then
		  local result = data.raw["recipe"][recipeName].normal.result
		  if result == resultName or ( result.name and result.name == resultName) then
		    if type(result) == "table" then
		      result[2] = resultAmount
		    end
		  
		    -- Upgrade to a table so we can specify more than 1 result
		    if type(result) == "string" then
			   data.raw["recipe"][recipeName].normal.result = nil
		       data.raw["recipe"][recipeName].normal.results = {{type="item", name=resultName, amount=resultAmount}}
		    end
		  end
		else
          for index, result in pairs(data.raw["recipe"][recipeName].normal.results) do
            if result.name == resultName then
              result.amount = resultAmount
              result.amount_min = nil
              result.amount_max = nil
              break
            end
          end
		end
      end
    end

    if data.raw["recipe"][recipeName].expensive then
      if data.raw["recipe"][recipeName].expensive.results or data.raw["recipe"][recipeName].expensive.result then
	    if data.raw["recipe"][recipeName].expensive.result then
		  local result = data.raw["recipe"][recipeName].expensive.result
		  if result == resultName or ( result.name and result.name == resultName) then
		    if type(result) == "table" then
		      result[2] = resultAmount
		    end
		  
		    -- Upgrade to a table so we can specify more than 1 result
		    if type(result) == "string" then
			   data.raw["recipe"][recipeName].expensive.result = nil
		       data.raw["recipe"][recipeName].expensive.results = {{type="item", name=resultName, amount=resultAmount}}
		    end
		  end
		else
          for index, result in pairs(data.raw["recipe"][recipeName].expensive.results) do
            if result.name == resultName then
              result.amount = resultAmount
              result.amount_min = nil
              result.amount_max = nil
              break
            end
          end
		end
      end
    end

  end

-- Due to a bug in LSlib, I have overwritten this function here.
  function LSlib.recipe.getResultCount(recipeName, resultName)
    -- resultName can be nil
    if not data.raw["recipe"][recipeName] then return end
    LSlib.recipe.recipePrototypeCleanup(recipeName)

    if data.raw["recipe"][recipeName].result then
      if resultName == nil or data.raw["recipe"][recipeName].result == resultName then
        return data.raw["recipe"][recipeName].result_count or 1
      else
        return 0
      end
    elseif data.raw["recipe"][recipeName].results then
      for resultIndex, result in pairs(data.raw["recipe"][recipeName].results) do
        if resultName == nil or (result.name or result[1] or "") == resultName then
          return data.raw["recipe"][recipeName].results[resultIndex].amount or
		         data.raw["recipe"][recipeName].results[resultIndex][2] or 1
        end
      end
      return 0

    elseif data.raw["recipe"][recipeName].normal then
      if data.raw["recipe"][recipeName].normal.result then
        if resultName == nil or data.raw["recipe"][recipeName].normal.result == resultName then
          return data.raw["recipe"][recipeName].normal.result_count or 1
        else
          return 0
        end
      elseif data.raw["recipe"][recipeName].normal.results then
        for resultIndex, result in pairs(data.raw["recipe"][recipeName].normal.results) do
          if resultName == nil or (result.name or result[1] or "") == resultName then
            return data.raw["recipe"][recipeName].normal.results[resultIndex].amount or 
                   data.raw["recipe"][recipeName].normal.results[resultIndex][2] or 1
          end
        end
        return 0
      end

    elseif data.raw["recipe"][recipeName].expensive then
      if data.raw["recipe"][recipeName].expensive.result then
        if resultName == nil or data.raw["recipe"][recipeName].expensive.result == resultName then
          return data.raw["recipe"][recipeName].expensive.result_count or 1
        else
          return 0
        end
      elseif data.raw["recipe"][recipeName].expensive.results then
        for resultIndex, result in pairs(data.raw["recipe"][recipeName].expensive.results) do
          if resultName == nil or (result.name or result[1] or "") == resultName then
            return data.raw["recipe"][recipeName].expensive.results[resultIndex].amount or
                   data.raw["recipe"][recipeName].expensive.results[resultIndex][2] or 1
          end
        end
        return 0
      end
    end
  end

function doesRecipeUseMultipleFluid(recipeName)
	local fluidCount = 0
	local ingredients = nil
	
	if data.raw["recipe"][recipeName].ingredients then
		ingredients = data.raw["recipe"][recipeName].ingredients
	end
	
	if data.raw["recipe"][recipeName].normal and data.raw["recipe"][recipeName].normal.ingredients then
		ingredients = data.raw["recipe"][recipeName].normal.ingredients
	end
	
	if data.raw["recipe"][recipeName].expensive and data.raw["recipe"][recipeName].expensive.ingredients then
		ingredients = data.raw["recipe"][recipeName].expensive.ingredients
	end
	
	-- "standard" recipe scanning
	if ingredients then
		for _,ingredient in pairs(ingredients) do
			if (ingredient.type and ingredient.type == "fluid") then
				fluidCount = fluidCount + 1
			end
		end
	else
		log("--- WARNING --- Recipe " .. recipeName .. " has no ingredients defined, will output serpentblock below")
		log(serpent.block(data.raw["recipe"][recipeName]))
		-- Force skip this one
		return nil
	end
	
	return (fluidCount > 1)
end

function canUseModuleEffectInAny(moduleEffectResult)
	for moduleName,result in pairs(moduleEffectResult) do
		if ( result == true ) then
			return true
		end
	end
	
	return false
end

function addIngredientToRawRecipe(recipe, ingredientName, ingredientAmount, ingredientType)
	if recipe.ingredients then
		local alreadyPresent = false
		for _,ingredient in pairs(recipe.ingredients) do
			if ingredient.name == ingredientName and (ingredient.type or "item") == (ingredientType or "item") then
				alreadyPresent = true
				ingredient.amount = ingredientAmount or 1
			end
		end
		if not alreadyPresent then
			table.insert(recipe.ingredients, {
				["type"] = ingredientType,
				["name"] = ingredientName,
				["amount"] = ingredientAmount or 1,
			})
		end
	end

	if recipe.normal then
		local alreadyPresent = false
		for _,ingredient in pairs(recipe.normal.ingredients) do
			if ingredient.name == ingredientName and (ingredient.type or "item") == (ingredientType or "item") then
				alreadyPresent = true
				ingredient.amount = ingredientAmount or 1
			end
		end
		if not alreadyPresent then
			table.insert(recipe.normal.ingredients, {
				["type"] = ingredientType,
				["name"] = ingredientName,
				["amount"] = ingredientAmount or 1,
			})
		end
	end

	if recipe.expensive then
		local alreadyPresent = false
		for _,ingredient in pairs(recipe.expensive.ingredients) do
			if ingredient.name == ingredientName and (ingredient.type or "item") == (ingredientType or "item") then
				alreadyPresent = true
				ingredient.amount = ingredientAmount or 1
			end
		end
		if not alreadyPresent then
			table.insert(recipe.expensive.ingredients, {
				["type"] = ingredientType,
				["name"] = ingredientName,
				["amount"] = ingredientAmount or 1,
			})
		end
	end
end

function getEnergyRequiredForRawRecipe(recipe)
	if ( recipe.energy_required ~= nil ) then return recipe.energy_required end
	if ( recipe.normal ~= nil and recipe.normal.energy_required ~= nil) then return recipe.normal.energy_required end
	if ( recipe.expensive ~= nil and recipe.expensive.energy_required ~= nil) then return recipe.expensive.energy_required end
	
	return nil
end

function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

local productivityModuleNames = getAllProductivityModuleNames()

-- Loop over all recipes, check if they can be used with a Productivity Module
local allRecipies = util.table.deepcopy(data.raw["recipe"])
log(">>> Dynamically creating duplication recipies")
for _, recipe in pairs(allRecipies) do
	-- check blacklist
	if ( not has_value(blacklistedRecipes, recipe.name) ) then
		-- Can the recipe be used with a Productivity Module?
		local canUseModule = canUseModuleEffectInAny(LSlib.recipe.canUseModuleEffect(recipe.name, productivityModuleNames))	
		if ( canUseModule ) then
			local doesRecipeUseFluidResult = doesRecipeUseMultipleFluid(recipe.name)		
			if ( not doesRecipeUseFluidResult ) then
				local recipeIngredientCount = LSlib.recipe.getIngredientsCount(recipe.name)[1] or 5
				local recipeEnergyRequirement = getEnergyRequiredForRawRecipe(recipe) or 1
				local recipeDifficuilty = (16 * recipeIngredientCount * (recipeEnergyRequirement / 4))
				
				--if ( recipeDifficuilty == 0 ) then recipeDifficuilty = 5 end
				local tmpRecipe = util.table.deepcopy(recipe)
				
				tmpRecipe.name = "ax-dupe-" .. recipe.name
				
				-- Detect if we have multiple types of output or not.
				local recipeResultIsFluid = false
				if ( tmpRecipe.results ) then
					for _,recipeResult in pairs(tmpRecipe.results) do
						if ( recipeResult.type and recipeResult.type == "fluid" ) then
							recipeResultIsFluid = true
						end
					end
				end
				
				if ( recipeResultIsFluid ) then
					tmpRecipe.localised_name = {"",{"item-name.ax-duplication"}," ",{"fluid-name." .. recipe.name}}
				else 
					tmpRecipe.localised_name = {"",{"item-name.ax-duplication"}," ",{"item-name." .. recipe.name}}
				end
				
				tmpRecipe.category = "ax-matter-combiner"
								
				addIngredientToRawRecipe(tmpRecipe, "ax-duplication-liquid", recipeDifficuilty, "fluid")
				
				-- Add our new recipe to the data stage
				data:extend({tmpRecipe})

				-- Add this result to the Duplication Technology Recipe Unlock
				LSlib.technology.addRecipeUnlock(AiXDuplicationTechnologyName, tmpRecipe.name)
				
				if ( recipe.name == "iron-gear-wheel" ) then
					log("~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=")
					log(serpent.block(recipe))
					log("~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=")
					log(serpent.block(tmpRecipe))
					log("~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=")
				end
				
				-- Double our outputs for the added recipe
				if ( tmpRecipe.result ) then
					local recipeResultName = tmpRecipe.result.name or tmpRecipe.result[1] or tmpRecipe.result
					local defaultRecipeResultCount = LSlib.recipe.getResultCount(recipe.name, recipeResultName)
					log("[tmpRecipe.result " .. tmpRecipe.name .. "] defaultRecipeResultCount = " .. defaultRecipeResultCount)
					LSlib.recipe.setResultCount(tmpRecipe.name, recipeResultName, defaultRecipeResultCount * 2)
				end
				
				if ( tmpRecipe.results ) then
					for index,recipeResult in pairs(tmpRecipe.results) do
						local recipeResultName = recipeResult.name or recipeResult[1] or recipeResult
						local defaultRecipeResultCount = LSlib.recipe.getResultCount(recipe.name, recipeResultName)
						log("[tmpRecipe.results " .. tmpRecipe.name .. "] defaultRecipeResultCount = " .. defaultRecipeResultCount)
						LSlib.recipe.setResultCount(tmpRecipe.name, recipeResultName, defaultRecipeResultCount * 2)
					end
				end
				
				if ( tmpRecipe.normal and (tmpRecipe.normal.results or tmpRecipe.normal.result) ) then
					if ( tmpRecipe.normal.result ) then
						local recipeResultName = tmpRecipe.normal.result.name or tmpRecipe.normal.result[1] or tmpRecipe.normal.result
						local defaultRecipeResultCount = LSlib.recipe.getResultCount(recipe.name, recipeResultName)
						log("[tmpRecipe.normal.result " .. tmpRecipe.name .. "] defaultRecipeResultCount = " .. defaultRecipeResultCount)
						LSlib.recipe.setResultCount(tmpRecipe.name, recipeResultName, defaultRecipeResultCount * 2)
					else
						for _,recipeResult in pairs(tmpRecipe.normal.results) do
							local recipeResultName = recipeResult.name or recipeResult[1] or recipeResult
							local defaultRecipeResultCount = LSlib.recipe.getResultCount(recipe.name, recipeResultName)
							log("[!tmpRecipe.normal.result " .. tmpRecipe.name .. "] defaultRecipeResultCount = " .. defaultRecipeResultCount)
							LSlib.recipe.setResultCount(tmpRecipe.name, recipeResultName, defaultRecipeResultCount * 2)
						end
					end
				end
				
				if ( tmpRecipe.expensive and (tmpRecipe.expensive.results or tmpRecipe.expensive.result) ) then
					if ( tmpRecipe.expensive.result ) then
						local recipeResultName = tmpRecipe.expensive.result.name or tmpRecipe.expensive.result[1] or tmpRecipe.expensive.result
						local defaultRecipeResultCount = LSlib.recipe.getResultCount(recipe.name, recipeResultName)
						log("[tmpRecipe.expensive.result " .. tmpRecipe.name .. "] defaultRecipeResultCount = " .. defaultRecipeResultCount)
						LSlib.recipe.setResultCount(tmpRecipe.name, recipeResultName, defaultRecipeResultCount * 2)
					else
						for _,recipeResult in pairs(tmpRecipe.expensive.results) do
							local recipeResultName = recipeResult.name or recipeResult[1] or recipeResult
							local defaultRecipeResultCount = LSlib.recipe.getResultCount(recipe.name, recipeResultName)
							log("[!tmpRecipe.expensive.result " .. tmpRecipe.name .. "] defaultRecipeResultCount = " .. defaultRecipeResultCount)
							LSlib.recipe.setResultCount(tmpRecipe.name, recipeResultName, defaultRecipeResultCount * 2)
						end
					end
				end				
			else
				log(">>>> Recipe " .. recipe.name .. " is detected as using multiple fluid inputs, it will be skipped")
			end
		end
	else
		log(">>> Skipping recipe " .. recipe.name .. " as it's in the blacklist")
	end
end
log(">>> Complete")

-- Init variables
script.on_init(function()
	if not global.axmatter then global.axmatter = {} end
	if not global.axmatter.oreConverters then global.axmatter.oreConverters = {} end
end)

-- Called when a player or bot puts an entity in the world
script.on_event(defines.events.on_built_entity, function(event)
	entityPlacedHandler(event)
end)
script.on_event(defines.events.on_robot_built_entity, function(event)
	entityPlacedHandler(event)
end)


-- Entity death/pickup checks
script.on_event(defines.events.on_entity_died, function(event)
	entityDestroyed(event)
end)
script.on_event(defines.events.on_player_mined_entity, function(event)
	entityDestroyed(event)
end)
script.on_event(defines.events.on_robot_mined_entity, function(event)
	entityDestroyed(event)
end)

acceptedOreConverterNames = {"iron-ore"}

-- Config changed
script.on_configuration_changed(function(event)
	if not global.axmatter then global.axmatter = {} end
	if not global.axmatter.oreConverters then global.axmatter.oreConverters = {} end
end)

function entityPlacedHandler(event)
	local entity = event.created_entity
	local player = game.players[event.player_index]
		
	if ( entity ) then
		if entity.valid and entity.name == "ax-matter-ore-converter" then
		
			-- check to see if the machine was placed on ore
			local oreFinderResult = entity.surface.find_entities_filtered{type="resource", position=entity.position}
			if ( #oreFinderResult == 0 ) then
				player.print("Error: This building must be placed on an ore patch.")
				player.get_main_inventory().insert({name=entity.name, count=1})
				entity.destroy() -- Destroy it
				return
			else
				if ( not tableHasValue(acceptedOreConverterNames, oreFinderResult[1].name) ) then
					player.print(oreFinderResult[1].name .. " is not a supported ore")
					player.get_main_inventory().insert({name=entity.name, count=1})
					entity.destroy() -- Destroy it
					return
				end
			end
		
			-- draw a 50x50 rectangle around the machine
			local boxSize = 5
			local bb = rendering.draw_rectangle{
				color={r=1,g=1,b=0},
				left_top={x=entity.position.x-boxSize, y=entity.position.y-boxSize},
				right_bottom={x=entity.position.x+boxSize, y=entity.position.y+boxSize},
				surface=entity.surface}
				
			
			local text = rendering.draw_text{
				color={r=1,g=1,b=0},
				--{"", {"entity-name.skladjalsk"}, "plain string",  entity.localized_name}
				--text="Converting " .. oreFinderResult[1].localised_name .. " to Matter " .. oreFinderResult[1].localised_name .. " [0%]",
				text={"", "Converting ", oreFinderResult[1].localised_name, " to Matter Infused ", oreFinderResult[1].localised_name, " [0%]"},
				surface=entity.surface,
				target={x=entity.position.x-boxSize+0.05, y=entity.position.y-boxSize}}
			

			table.insert(global.axmatter.oreConverters, {entity=entity, renderdata={bb,text}})
		end
	end
end

function tableHasValue(tab, val)
	for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

function entityDestroyed(event)
	local entity = event.entity
	local player = game.players[event.player_index]
	if ( entity ) then
		if entity.valid and entity.name == "ax-matter-ore-converter" then
			for _,x in pairs(global.axmatter.oreConverters) do
				if ( x.entity == entity ) then
					for _,renderData in pairs(x.renderdata) do
						rendering.destroy(renderData)
					end
				end
			end
		end
	end
end
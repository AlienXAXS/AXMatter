OreConverter = {}
acceptedOreConversions = {
							{from="iron-ore", to="ax-matter-iron-ore"},
							{from="copper-ore", to="ax-matter-copper-ore"},
							{from="stone", to="ax-matter-stone"},
							{from="coal", to="ax-matter-coal"},
						 }
						 
OreConverterProductsNeeded = 4
BoxSize = 10

function OreConverter.script_on_nth_tick()
	for k,x in pairs(global.axmatter.oreConverters) do
		if ( x.entity.valid and x.ore.valid ) then
			local productsFinished = x.entity.products_finished
			local percentage = productsFinished / OreConverterProductsNeeded * 100
			if ( percentage >= 100 ) then 
				local convertToOre = OreConverter.getConvertToOre(x.ore.name) --Get what ore we are converting to
				x.entity.active = false --disable this entity
				
				local oreArea = {{x.entity.position.x-BoxSize, x.entity.position.y-BoxSize}, {x.entity.position.x+BoxSize, x.entity.position.y+BoxSize}}
				
				-- Convert the ore
				for _,oreEnt in ipairs(x.entity.surface.find_entities_filtered{area=oreArea, name=x.ore.name}) do
					local ent=oreEnt.surface.create_entity{force="neutral", name=convertToOre, position=oreEnt.position}
					ent.amount=oreEnt.amount
					oreEnt.destroy()
				end
				
				OreConverter.Cleanup(x.entity) --Cleanup the entity
			else
				if ( x.renderdata[2] ) then
					rendering.set_text(x.renderdata[2], {"", "Converting ", x.ore.localised_name, " to Matter Infused ", x.ore.localised_name, " [" .. percentage .. "%]"})
				end
			end
		else
			OreConverter.Cleanup(x.entity) --attempt cleanup
			table.remove(global.axmatter.oreConverters, k)
		end
	end
end

function OreConverter.script_on_entity_destroyed(event)
	local entity = event.entity
	if ( entity ) then
		if entity.valid and entity.name == "ax-matter-ore-converter" then
			OreConverter.Cleanup(entity)
		end
	end
end

function OreConverter.script_on_entity_placed(event)
	local isRobot = (event.robot ~= nil)
	local entity = event.created_entity	
	local player = nil
	if not isRobot then player = game.players[event.player_index] end

	if ( entity ) then
		if entity.valid and entity.name == "ax-matter-ore-converter" then
			-- check to see if the machine was placed on ore
			local oreFinderResult = entity.surface.find_entities_filtered{type="resource", position=entity.position}
			if ( #oreFinderResult == 0 ) then
				if not isRobot then
					player.print("Error: This building must be placed on an ore patch")
					player.get_main_inventory().insert({name=entity.name, count=1})
					entity.destroy()
				end
				return
			else
				if ( not OreConverter.isOreAllowed(oreFinderResult[1].name) ) then
					if not isRobot then
						player.print({"", oreFinderResult[1].localised_name, " is not a supported ore"})
						player.get_main_inventory().insert({name=entity.name, count=1})
						entity.destroy() -- Destroy it
					end
					return
				end
			end
			
			-- draw a 50x50 rectangle around the machine
			local bb = rendering.draw_rectangle{
				color={r=1,g=1,b=0},
				left_top={x=entity.position.x-BoxSize, y=entity.position.y-BoxSize},
				right_bottom={x=entity.position.x+BoxSize, y=entity.position.y+BoxSize},
				surface=entity.surface}
				
			
			local text = rendering.draw_text{
				color={r=1,g=1,b=0},
				--{"", {"entity-name.skladjalsk"}, "plain string",  entity.localized_name}
				--text="Converting " .. oreFinderResult[1].localised_name .. " to Matter " .. oreFinderResult[1].localised_name .. " [0%]",
				text={"", "Converting ", oreFinderResult[1].localised_name, " to Matter Infused ", oreFinderResult[1].localised_name, " [0%]"},
				surface=entity.surface,
				target={x=entity.position.x-BoxSize+0.05, y=entity.position.y-BoxSize}}

			table.insert(global.axmatter.oreConverters, {entity = entity, renderdata = {bb,text}, ore = oreFinderResult[1]})
		end
	end
end

function OreConverter.isOreAllowed(val)
	for _,x in ipairs(acceptedOreConversions) do
		if ( x.from == val ) then return true end		
	end
	
	return false
end

function OreConverter.getConvertToOre(val)
	for _,x in ipairs(acceptedOreConversions) do
		if ( x.from == val ) then return x.to end		
	end
	
	return nil
end

function OreConverter.Cleanup(entity)
	for k,x in pairs(global.axmatter.oreConverters) do
		if ( x.entity == entity ) then
			for _,renderData in pairs(x.renderdata) do
				rendering.destroy(renderData)
				table.remove(global.axmatter.oreConverters, k)
			end
		end
	end
end
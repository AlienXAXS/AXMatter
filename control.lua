require("game_scripts.util")
require("game_scripts.OreConverter")
require("game_scripts.SelfHealingWalls")

-- Init variables
script.on_init(function()
	if not global.axmatter then global.axmatter = {} end
	if not global.axmatter.oreConverters then global.axmatter.oreConverters = {} end
	if not global.axmatter.selfHealingWalls then global.axmatter.selfHealingWalls = {} end
	if not global.axmatter.selfHealingWalls.walls then global.axmatter.selfHealingWalls.walls = {} end
	if not global.axmatter.selfHealingWalls.renderSources then global.axmatter.selfHealingWalls.renderSources = {} end
end)

-- Called when a player or bot puts an entity in the world
script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity}, function(event)
	entityPlacedHandler(event)
end)

-- Entity death/pickup checks
script.on_event({defines.events.on_entity_died, defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity}, function(event)
	entityDestroyed(event)
end)

script.on_event(defines.events.on_entity_damaged, function(event)
	SelfHealingWalls.on_entity_damaged(event)
end)

-- Config changed
script.on_configuration_changed(function(event)
	if not global.axmatter then global.axmatter = {} end
	if not global.axmatter.oreConverters then global.axmatter.oreConverters = {} end
	if not global.axmatter.selfHealingWalls then global.axmatter.selfHealingWalls = {} end
	if not global.axmatter.selfHealingWalls.walls then global.axmatter.selfHealingWalls.walls = {} end
	if not global.axmatter.selfHealingWalls.renderSources then global.axmatter.selfHealingWalls.renderSources = {} end
end)

script.on_nth_tick(60, function()
	OreConverter.script_on_nth_tick()
	SelfHealingWalls.on_nth_tick()
end)

script.on_event(defines.events.on_tick, function()
end)

function entityPlacedHandler(event)
	OreConverter.script_on_entity_placed(event)
	SelfHealingWalls.on_entity_placed(event)
end

function entityDestroyed(event)
	OreConverter.script_on_entity_destroyed(event)
	SelfHealingWalls.on_entity_destroyed(event)
end
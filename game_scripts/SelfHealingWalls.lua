-- A (hopefully) UPS Friendly version of Self Healing Walls
SelfHealingWalls = {}

local lastScanningPosition = 0
local entityName = "ax-matter-self-healing-wall"
local settings = {
    HealthToRegenPerCycle = 6,
    MaxHealth = 500
}

function SelfHealingWalls.on_nth_tick()
    for k=#global.axmatter.selfHealingWalls.wall, 1, -1 do
        local entity = global.axmatter.selfHealingWalls.wall[k]
        if ( entity and entity.valid ) then
            if ( entity.health < settings.MaxHealth ) then
                local newHealth = entity.health + settings.HealthToRegenPerCycle
                if ( newHealth > settings.MaxHealth ) then newHealth = settings.MaxHealth end
                entity.health = newHealth
                entity.surface.create_entity{name="ax-flying-text", position=entity.position, text="+", color={r=1,g=0,b=0}}

                -- Remove the wall from the table, as it's fully healed.
                if ( newHealth == settings.MaxHealth ) then
                    global.axmatter.selfHealingWalls.walls[k] = nil
                end
            end
        else
            global.axmatter.selfHealingWalls.walls[k] = nil
        end
    end
end

function isEntityValid(entity)
    return entity and entity.valid and entity.name == "ax-matter-self-healing-wall"
end

function SetupWall(entity)
    -- Add the wall to the global table    
    local renderSources = {}
    table.insert(renderSources, renderer.draw_light{sprite="__core__/graphics/empty.png", color = {r=1,g=0,b=0}, surface=entity.surface, target=entity})

    global.axmatter.selfHealingWalls.renderSources[entity.unit_number] = renderSources
end

function SelfHealingWalls.on_entity_damaged(event)
    local entity = event.entity
    if ( isEntityValid(entity) ) then
        if ( global.axmatter.selfHealingWalls.walls[entity.unit_number] == nil ) then
            global.axmatter.selfHealingWalls.walls[entity.unit_number] = entity
        end
    end
end

function SelfHealingWalls.on_entity_placed(event)
    local entity = event.created_entity

    if ( isEntityValid(entity) ) then
        SetupWall(entity)
    end
end

function SelfHealingWalls.on_entity_destroyed(event)
    local entity = event.entity
    if ( isEntityValid(entity) ) then
        SelfHealingWalls.Cleanup(entity)
    end
end

function SelfHealingWalls.Cleanup(entity)
    if ( global.axmatter.selfHealingWalls.wall[entity.unit_number] ) then
        global.axmatter.selfHealingWalls[entity.unit_number] = nil
    end

    if ( global.axmatter.selfHealingWalls.renderSources[entity.unit_number] ) then
        for _,renderSource in pairs(global.axmatter.selfHealingWalls.renderSources[entity.unit_number]) do
            rendering.destroy(renderSource)
        end
        global.axmatter.selfHealingWalls.renderSources[entity.unit_number] = nil
    end
end
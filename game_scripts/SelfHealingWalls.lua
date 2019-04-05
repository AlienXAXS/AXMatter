-- A (hopefully) UPS Friendly version of Self Healing Walls
SelfHealingWalls = {}

local lastScanningPosition = 0
local entityName = "ax-matter-self-healing-wall"
local settings = {
    WallsToScanPerTick = 100,
    HealthToRegenPerCycle = 6,
    MaxHealth = 500
}

function SelfHealingWalls.on_tick()
    if ( lastScanningPosition == 0 ) then lastScanningPosition = #global.axmatter.selfHealingWalls end

    local count = 0
    for k=lastScanningPosition, 1, -1 do
        lastScanningPosition = k
        count = count + 1

        local wall = global.axmatter.selfHealingWalls[k]
        if ( wall ~= nil ) then
            if ( wall.lastTick == nil ) then wall.lastTick = game.tick end
            local tickMath = game.tick - wall.lastTick
            if ( tickMath > 60 ) then
                local entity = wall.entity
                if ( entity and entity.valid ) then
                    if ( entity.health < settings.MaxHealth ) then
                        local newHealth = entity.health + settings.HealthToRegenPerCycle
                        if ( newHealth > settings.MaxHealth ) then newHealth = settings.MaxHealth end
                        entity.health = newHealth
                        wall.lastTick = game.tick
                        entity.surface.create_entity{name="ax-flying-text", position=entity.position, text="+", color={r=1,g=0,b=0}}
                    end
                else
                    SelfHealingWalls.Cleanup(entity)
                    table.remove(global.axmatter.selfHealingWalls, k)
                end
            end
        else
            table.remove(global.axmatter.selfHealingWalls, k)
        end

        if ( count > settings.WallsToScanPerTick ) then
            lastScanningPosition = lastScanningPosition - 1
            return
        end
        if ( lastScanningPosition == 1 ) then
            lastScanningPosition = #global.axmatter.selfHealingWalls
            return
        end
    end
end

function SelfHealingWalls.on_entity_placed(event)
    local player = nil
    local isRobot = (event.robot ~= nil)
    local entity = event.created_entity

    if ( entity and entity.valid and entity.name == "ax-matter-self-healing-wall") then
        global.axmatter.selfHealingWalls[entity.unit_number] = {entity = entity, renderSources = {}, lastTick = game.tick})
    end
end

function SelfHealingWalls.on_entity_destroyed(event)
    local entity = event.entity
    if ( entity and entity.valid and entity.name == "ax-matter-self-healing-wall" ) then
        SelfHealingWalls.Cleanup(entity)
    end
end

function SelfHealingWalls.Cleanup(entity)
    if ( global.axmatter.selfHealingWalls[entity.unit_number] ) then
        local wall = global.axmatter.selfHealingWalls[entity.unit_number]
        for _,renderSource in pairs(wall.renderSources) do
            rendering.destroy(renderSource)
        end
        global.axmatter.selfHealingWalls[entity.unit_number] = nil
    end
end
require("data_scripts.OreConversion")

-- If we have dectorio, change our walls to be a pre-req of that instead
if ( mods["Dectorio"] ~= nil and data.raw.technology["dect-advanced-walls"] ~= nil ) then
    log ( "AIX Matter: Found Dectorio, changing ax-matter-walls" )
    local matterWallsTech = data.raw.technology["ax-matter-walls"]
    matterWallsTech.prerequisites = {"ax-matter-military-science-pack", "dect-advanced-walls"}
end
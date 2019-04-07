if (settings.startup['ax-matter-ore-inf'].value == true) then
    data.raw.resource["ax-matter-ore"].infinite = true
    data.raw.resource["ax-matter-ore"].minimum = 15
    data.raw.resource["ax-matter-ore"].normal = 150
    data.raw.resource["ax-matter-ore"].maximum = 3500

    data.raw.resource["ax-liquid-matter"].minimum = data.raw.resource["ax-liquid-matter"].minimum * 2.15
    data.raw.resource["ax-liquid-matter"].normal = data.raw.resource["ax-liquid-matter"].normal * 2.50
end


local medPoleGroupName = data.raw["electric-pole"]["medium-electric-pole"].fast_replaceable_group or "electric-pole"
local bigPoleGroupName = data.raw["electric-pole"]["big-electric-pole"].fast_replaceable_group or "big-electric-pole"
local substationGroupName = data.raw["electric-pole"]["substation"].fast_replaceable_group or "substation"

-- support for changing pole upgrade group names
data.raw["electric-pole"]["ax-matter-medium-electric-pole"].fast_replaceable_group = medPoleGroupName
data.raw["electric-pole"]["ax-matter-medium-extended-electric-pole"].fast_replaceable_group = medPoleGroupName
data.raw["electric-pole"]["medium-electric-pole"].next_upgrade = "ax-matter-medium-electric-pole"

data.raw["electric-pole"]["ax-matter-big-electric-pole"].fast_replaceable_group = bigPoleGroupName
data.raw["electric-pole"]["ax-matter-big-extended-electric-pole"].fast_replaceable_group = bigPoleGroupName
data.raw["electric-pole"]["big-electric-pole"].fast_replaceable_group = bigPoleGroupName
data.raw["electric-pole"]["big-electric-pole"].next_upgrade = "ax-matter-big-electric-pole"

data.raw["electric-pole"]["ax-matter-substation"].fast_replaceable_group = substationGroupName
data.raw["electric-pole"]["substation"].fast_replaceable_group = substationGroupName
data.raw["electric-pole"]["substation"].next_upgrade = "ax-matter-substation"
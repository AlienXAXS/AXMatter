if (settings.startup['ax-matter-ore-inf'].value == true) then
    data.raw.resource["ax-matter-ore"].infinite = true
    data.raw.resource["ax-matter-ore"].minimum = 15
    data.raw.resource["ax-matter-ore"].normal = 150
    data.raw.resource["ax-matter-ore"].maximum = 3500

    data.raw.resource["ax-liquid-matter"].minimum = data.raw.resource["ax-liquid-matter"].minimum * 2.15
    data.raw.resource["ax-liquid-matter"].normal = data.raw.resource["ax-liquid-matter"].normal * 2.50
end

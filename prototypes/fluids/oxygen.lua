data:extend(
{
  {
    type = "fluid",
    name = "ax-dirty-air",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.5, g=0.5, b=0.5},
    flow_color = {r=0.57, g=0.71, b=0.87},
    max_temperature = 100,
    icon = "__aix_matter__/graphics/icons/dirty-air.png",
    icon_size = 32,
    order = "a[fluid]-b[liquid-matter]"
  },
  {
    type = "fluid",
    name = "ax-pure-oxygen",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.5, g=0.5, b=0.5},
    flow_color = {r=0.72, g=0.94, b=1},
    max_temperature = 100,
    icon = "__aix_matter__/graphics/icons/pure-oxygen.png",
    icon_size = 32,
    order = "a[fluid]-b[liquid-matter]"
  }
})
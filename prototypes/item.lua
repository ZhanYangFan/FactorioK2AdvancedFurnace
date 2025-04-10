local item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
  {
    type = "item",
    name = "kr-advanced-furnace",
    icon = kr_entities_icons_path.."advanced-furnace.png",
    icon_size = 64,
    subgroup = "smelting-machine",
    order = "c[electric-furnace]-f[advanced-furnace]",
    place_result = "kr-advanced-furnace",
    stack_size = 20,
  },
})

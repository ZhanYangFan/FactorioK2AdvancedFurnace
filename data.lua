local mod_path = "__AdvancedFurnace__/"

kr_prototypes_path = mod_path .. "prototypes/"
kr_entities_icons_path = mod_path .. "assets/icons/entities/"
kr_entities_path = mod_path .. "assets/entities/"
kr_buildings_sounds_path = mod_path .. "assets/sounds/buildings/"
kr_technologies_icons_path = mod_path .. "assets/technologies/"
kr_remnants_path = mod_path .. "assets/entities/remnants/"

require("prototypes/item")
require("prototypes/recipe")
require("prototypes/technology")

kr_prototypes_path = nil
kr_entities_icons_path = nil
kr_entities_path = nil
kr_buildings_sounds_path = nil
kr_technologies_icons_path = nil
kr_remnants_path = nil


data:extend({
  {
    type = "item-subgroup",
    name = "smelting-machine-tech",
    group = "production",
    order = "zc"
  }
})

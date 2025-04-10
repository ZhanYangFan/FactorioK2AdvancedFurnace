local mod_path = "__AdvancedFurnace__/"

kr_prototypes_path = mod_path .. "prototypes/"
kr_entities_icons_path = mod_path .. "assets/icons/entities/"
kr_entities_path = mod_path .. "assets/entities/"
kr_buildings_sounds_path = mod_path .. "assets/sounds/buildings/"
kr_technologies_icons_path = mod_path .. "assets/technologies/"
kr_remnants_path = mod_path .. "assets/entities/remnants/"


require("prototypes/building")

-- In case some other mods added random pipe remnant
if not data.raw.corpse["kr-medium-random-pipes-remnant"] then
  require("prototypes/remnant")
end

------------- custom settings ---------------
if settings.startup["aams-vanilla-style-sound"].value == true then
  data.raw["assembling-machine"]["kr-advanced-furnace"].working_sound.sound[1].filename =
  "__base__/sound/assembling-machine-t3-1.ogg"
end

if settings.startup["aams-vanilla-style-icon"].value == true then
  data.raw.item["kr-advanced-furnace"].icon = kr_entities_icons_path .. "aams-vanilla-alike-look.png"
  data.raw["assembling-machine"]["kr-advanced-furnace"].icon = kr_entities_icons_path ..
      "aams-vanilla-alike-look.png"
end

if settings.startup["aams-extra-50-prod"].value == true then
  require("fix-barrel-prod-cheese")
  data.raw["assembling-machine"]["kr-advanced-furnace"].effect_receiver = {
    base_effect = {
      productivity = 0.5
    }
  }
end

require("balancing/" .. settings.startup["aams-balancing-type"].value)

kr_prototypes_path = nil
kr_entities_icons_path = nil
kr_entities_path = nil
kr_buildings_sounds_path = nil
kr_technologies_icons_path = nil
kr_remnants_path = nil

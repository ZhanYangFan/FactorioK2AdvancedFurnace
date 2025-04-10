local aams = data.raw["assembling-machine"]["kr-advanced-furnace"]
aams.heating_energy = "50kW"
aams.graphics_set.reset_animation_when_frozen = true
aams.graphics_set.frozen_patch = {
  filename =
  "__AdvancedFurnace__/assets/entities/advanced-furnace/advanced-furnace.png",
  priority = "high",
  width = 320,
  height = 320,
  shift = { 0, 0 },
  scale = 0.5,
}

local pipe_picture_frozen = util.table.deepcopy(aams.fluid_boxes[1].pipe_picture)
local pipe_frozen_path = "__space-age__/graphics/entity/frozen/electric-furnace/"


aams.fluid_boxes[1].pipe_picture_frozen = pipe_picture_frozen
aams.fluid_boxes[2].pipe_picture_frozen = pipe_picture_frozen

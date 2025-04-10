local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")


function furnacepipepictures()
  return {
    --- @type data.Sprite4Way
    a = {
      north = {
        filename = kr_entities_path.."advanced-furnace/advanced-furnace-k-pipe-N.png",
        priority = "extra-high",
        width = 71,
        height = 38,
        shift = util.by_pixel(2.25, 13.5),
        scale = 0.5,
      },
      east = {
        filename = kr_entities_path.."advanced-furnace/advanced-furnace-k-pipe-E-top.png",
        priority = "extra-high",
        width = 59, --42,
        height = 76,
        shift = util.by_pixel(-28.75, 1),
        scale = 0.5,
      },
      south = {
        filename = kr_entities_path.."advanced-furnace/advanced-furnace-k-pipe-S-right.png",
        priority = "extra-high",
        width = 88,
        height = 61,
        shift = util.by_pixel(0, -31.5),
        scale = 0.5,
      },
      west = {
        filename = kr_entities_path.."advanced-furnace/advanced-furnace-k-pipe-W-bottom.png",
        priority = "extra-high",
        width = 39,
        height = 73,
        shift = util.by_pixel(25.75, 1.25),
        scale = 0.5,
      },
    },
    --- @type data.Sprite4Way
    b = {
      north = {
        filename = kr_entities_path.."advanced-furnace/advanced-furnace-k-pipe-N.png",
        priority = "extra-high",
        width = 71,
        height = 38,
        shift = util.by_pixel(2.25, 13.5),
        scale = 0.5,
      },
      east = {
        filename = kr_entities_path.."advanced-furnace/advanced-furnace-k-pipe-E-bottom.png",
        priority = "extra-high",
        width = 76, --42,
        height = 76,
        shift = util.by_pixel(-33, 1),
        scale = 0.5,
      },
      south = {
        filename = kr_entities_path.."advanced-furnace/advanced-furnace-k-pipe-S-left.png",
        priority = "extra-high",
        width = 88,
        height = 61,
        shift = util.by_pixel(0, -31.25),
        scale = 0.5,
      },
      west = {
        filename = kr_entities_path.."advanced-furnace/advanced-furnace-k-pipe-W-top.png",
        priority = "extra-high",
        width = 39,
        height = 87, --73,
        shift = util.by_pixel(25.5, -2.25),
        scale = 0.5,
      },
    },
  }
end




data:extend({
  {
    type = "assembling-machine",
    name = "kr-advanced-furnace",
    icon = kr_entities_icons_path .. "advanced-furnace.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 1, result = "kr-advanced-furnace" },
    max_health = 2000,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances = {
      { type = "physical", percent = 50 },
      { type = "fire", percent = 95 },
      { type = "impact", percent = 80 },
    },
    collision_box = { { -3.25, -3.25 }, { 3.25, 3.25 } },
    selection_box = { { -3.5, -3.5 }, { 3.5, 3.5 } },
    damaged_trigger_effect = hit_effects.entity(),
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = furnacepipepictures().a,
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { -1, -3 } } },
        secondary_draw_orders = { north = -1 },
      },
      {
        production_type = "input",
        pipe_picture =furnacepipepictures().b,
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 1, -3 } } },
        secondary_draw_orders = { north = -1 },
      },
      {
        production_type = "input",
        pipe_picture = furnacepipepictures().b,
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", direction = defines.direction.west, position = { -3, -1 } } },
        secondary_draw_orders = { north = -1 },
      },
      {
        production_type = "input",
        pipe_picture = furnacepipepictures().a,
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", direction = defines.direction.east, position = { 3, -1 } } },
        secondary_draw_orders = { north = -1 },
      },
      {
        production_type = "output",
        pipe_picture = furnacepipepictures().b,
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { -1, 3 } } },
        secondary_draw_orders = { north = -1 },
      },
      {
        production_type = "output",
        pipe_picture = furnacepipepictures().a,
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { 1, 3 } } },
        secondary_draw_orders = { north = -1 },
      },
      {
        production_type = "output",
        pipe_picture = furnacepipepictures().a,
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "output", direction = defines.direction.west, position = { -3, 1 } } },
        secondary_draw_orders = { north = -1 },
      },
      {
        production_type = "output",
        pipe_picture =furnacepipepictures().b,
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "output", direction = defines.direction.east, position = { 3, 1 } } },
        secondary_draw_orders = { north = -1 },
      },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    crafting_categories = { "smelting" },
    crafting_speed = 12,
    ingredient_count = 6,
    module_slots = 4,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 6 },
    },
    energy_usage = "2MW",
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    vehicle_impact_sound = sounds.generic_impact,
    working_sound = {
      sound = {
        filename = kr_buildings_sounds_path.."advanced-furnace.ogg",
        volume = 0.50,
        aggregation = {
          max_count = 2,
          remove = false,
          count_already_playing = true,
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg" },
    },
    graphics_set = {
      animation = {
        layers = {
          {
            filename = kr_entities_path.."advanced-furnace/advanced-furnace.png",
            priority = "high",
            width = 480,
            height = 480,
            shift = { 0, -0.1 },
            frame_count = 1,
            scale = 0.5,
          },
          {
            filename = kr_entities_path.."advanced-furnace/advanced-furnace-sh.png",
            priority = "high",
            width = 165,
            height = 480,
            shift = { 3.1, -0.1 },
            frame_count = 1,
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
      working_visualisations = {
        {
          constant_speed = true,
          animation = {
            filename = kr_entities_path.."advanced-furnace/advanced-furnace-anim-light.png",
            priority = "high",
            width = 480,
            height = 480,
            shift = { 0, -0.1 },
            frame_count = 28,
            line_length = 4,
            animation_speed = 0.8,
            draw_as_light = true,
            scale = 0.5,
          },
        },
        {
          constant_speed = true,
          animation = {
            filename = kr_entities_path.."advanced-furnace/advanced-furnace-anim-glow.png",
            priority = "high",
            width = 480,
            height = 480,
            shift = { 0, -0.1 },
            frame_count = 28,
            line_length = 4,
            animation_speed = 0.8,
            draw_as_glow = true,
            fadeout = true,
            blend_mode = "additive",
            scale = 0.5,
          },
        },
        {
          constant_speed = true,
          animation = {
            filename = kr_entities_path.."advanced-furnace/advanced-furnace-anim.png",
            priority = "high",
            width = 480,
            height = 480,
            shift = { 0, -0.1 },
            frame_count = 28,
            line_length = 4,
            animation_speed = 0.8,
            scale = 0.5,
          },
        },
        {
          constant_speed = true,
          light = {
            intensity = 0.65,
            size = 4,
            shift = { 1.29, 2 },
            color = { r = 1, g = 0.35, b = 0.2 },
          },
        },
      },
      water_reflection = {
        pictures = {
          filename = kr_entities_path.."advanced-furnace/advanced-furnace-reflection.png",
          priority = "extra-high",
          width = 80,
          height = 60,
          shift = util.by_pixel(0, 40),
          variation_count = 1,
          scale = 5,
        },
        rotate = false,
        orientation_to_variation = false,
      },
    },
    icon_draw_specification = { scale = 2, shift = { 0, -0.3 } },
    icons_positioning = { { inventory_index = defines.inventory.assembling_machine_modules, shift = { 0, 1.25 } } },
  },
})

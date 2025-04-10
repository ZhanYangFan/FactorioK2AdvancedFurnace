data:extend({
  {
    type = "technology",
    name = "kr-advanced-furnace",
    icon = kr_technologies_icons_path .. "advanced-furnace.png",
    icon_size = 256,
    unit = {
      time = 45,
      count = 500,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack",   1 },
        { "chemical-science-pack",   1 },
        { "production-science-pack", 1 },
        { "utility-science-pack",    1 },
       
      },
    },
    prerequisites = { "automation-3", "utility-science-pack" },
    effects = {
      { type = "unlock-recipe", recipe = "kr-advanced-furnace" },
    },
    order = "c-f-a",
    subgroup = "smelting-machine-tech" 
  },
})

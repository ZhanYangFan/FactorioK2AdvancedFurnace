data:extend({
  {
    type = "recipe",
    name = "kr-advanced-furnace",
    energy_required = 30,
    enabled = false,
    category = "crafting",
    ingredients = {

      { type = "item", name = "electric-furnace", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 20 },
      { type = "item", name = "electric-engine-unit", amount = 10 },
      { type = "item", name = "steel-plate", amount = 100 },
    },

    results = { { type = "item", name = "kr-advanced-furnace", amount = 1 } },
    subgroup = "smelting-machine",
    order = "d[kr-advanced-furnace]"
  },
})

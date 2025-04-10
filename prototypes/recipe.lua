data:extend({
  {
    type="recipe-category",
    name="kr-advanced-smelting"
  },
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

  {
    type = "recipe",
    name = "kr-advanced-iron-refining",
    category = "kr-advanced-smelting",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type="item",name="iron-ore",amount= 5 },
      { type="item",name="coal", amount=1 }
    },
    results = {
      { 
        type = "item",
        name = "iron-plate",
        amount = 15,
        probability = 1  -- 固定产出
      },
      { 
        type = "item",
        name = "iron-ore",
        amount = 1,
        probability = 0.1,
        catalyst_amount = 0  -- 非催化剂
      },
      { 
        type = "item",
        name = "coal",
        amount = 1,
        probability = 0.01,
        show_details_in_recipe_tooltip = false  -- 可选隐藏
      }
    },
    main_product = "iron-plate",  -- 指定主产物
    crafting_machine_tint = {  -- 设置生产粒子颜色
      primary = {r = 1, g = 0.8, b = 0.2},
      secondary = {r = 0.7, g = 0.6, b = 0.1}
    }
  },
  {
    type = "recipe",
    name = "kr-advanced-copper-refining",
    category = "kr-advanced-smelting",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type="item",name="copper-ore",amount= 5 },
      {  type="item",name="coal",amount= 1 }
    },
    results = {
      { type="item",name="copper-plate", amount = 15 },
      {type="item",name= "copper-ore", amount = 1, probability = 0.1 },
      {type="item",name= "coal", amount = 1, probability = 0.01 }
    },
    main_product = "copper-plate"
  },-- 钢材精炼配方
  {
    type = "recipe",
    name = "kr-advanced-steel-refining",
    category = "kr-advanced-smelting",
    energy_required = 10,  -- 延长处理时间
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-ore", amount = 5 },  -- 三倍基础需求
      { type = "item", name = "coal", amount = 1 },       -- 额外添加石墨
      { type = "fluid", name = "heavy-oil", amount = 50 } -- 新增润滑剂要素
    },
    results = {
      {
        type = "item",
        name = "steel-plate",
        amount = 15,          -- 原版效率的160%
        probability = 1.0
      },
      {
        type = "item",
        name = "iron-ore",
        amount = 3,
        probability = 0.15,  -- 提升回收率
        catalyst_amount = 0
      },
      {
        type = "item",
        name = "coal",
        amount = 1,
        probability = 0.03   -- 微量回收碳材
      },
      {
        type = "fluid",
        name = "heavy-oil",
        amount = 10,
        probability = 0.25,  -- 副产回用油品
        catalyst_amount = 40
      }
    },
    main_product = "steel-plate",
    crafting_machine_tint = {  -- 定制化粒子效果
      primary = {r = 0.4, g = 0.4, b = 0.4},
      secondary = {r = 0.3, g = 0.3, b = 0.3}
    },
    emissions_multiplier = 1.5  -- 提升污染符合工业定位
  },
  
})



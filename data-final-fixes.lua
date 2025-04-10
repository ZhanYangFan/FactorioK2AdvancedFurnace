-------------- compatibility ----------------
if mods["aai-industry"] then
    table.insert(data.raw.recipe["kr-advanced-furnace"].ingredients,
        { type = "item", name = "concrete", amount = 32 })
end
if mods["space-age"] then
    require("compatibility/space-age")
end
if mods["space-exploration"] then
    require("compatibility/SE")
end

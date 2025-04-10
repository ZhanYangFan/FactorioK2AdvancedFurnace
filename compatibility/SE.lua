local tech = data.raw.technology["kr-automation"]
local recipe = data.raw.recipe["kr-advanced-furnace"]

data.raw.item["kr-advanced-furnace"].subgroup = "assembling"

if settings.startup["aams-early-unlock-SE"].value == true then
    tech.unit.count = 500
    recipe.ingredients = {
        { type = "item", name = "electric-furnace", amount = 2 }
    }
else
    tech.unit = {
        count = 250,
        ingredients = {
            { "automation-science-pack",    1 },
            { "logistic-science-pack",      1 },
            { "chemical-science-pack",      1 },
            { "production-science-pack",    1 },
            { "se-rocket-science-pack",     1 },
            { "space-science-pack",         1 },
            { "se-material-science-pack-3", 1 },
        },
        time = 60,
    }
    tech.prerequisites = { "automation-3", "se-material-science-pack-3", }

    recipe.ingredients = {
        { type = "item", name = "electric-furnace", amount = 1 }
    }
end

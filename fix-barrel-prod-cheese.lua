for _, recipe in pairs(data.raw["recipe"]) do
  if recipe.subgroup == "empty-barrel" or recipe.subgroup == "fill-barrel" then
    recipe.allow_productivity = false -- this is enough, doesn't need the following
    -- for _, result in pairs(recipe.results) do
    --   if (result.type == "item") then
    --     result.ignored_by_productivity = 65535         --int16
    --   elseif (result.type == "fluid") then
    --     result.ignored_by_productivity = 1099511627775 --"The amount is stored as a fixed-size signed 64 bit integer, with 24 bits reserved for decimal precision"
    --   end
    -- end
  end
end

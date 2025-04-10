data:extend({
    {
        type = "string-setting",
        name = "aams-balancing-type",
        localised_name = "Balancing", --only English, for now...
        localised_description = "Choose a balance setting.\n" ..
                                "[color=#9e47fe]K2:[/color]\n" ..
                                "Machine has exactly the same stat as in K2.\n" ..
                                "4 module slots, much less energy per crafting speed when compared to vanilla assembly machine 3.\n" ..
                                "[color=#f1c196]custom-vanilla:[/color]\n" ..
                                "Custom balancing trying to follow vanilla's tier progression.\n" ..
                                "6 module slots, more energy draw but less pollution, same crafting speed as in K2.\n",
                                -- "[color=#64aaff]custom-SE:[/color]\n" ..
                                -- "Rebalancing that takes SE's productivity module balancing and beacon interference into account.\n" ..
                                -- "4 module slots, faster crafting speed and vaguely the same energy per crafting speed compared with K2 setting, when using " ..
                                -- "wide/compact beacon 1 and speed module 6.",
        order = "a",
        setting_type = "startup",
        default_value = "custom-vanilla",
        allowed_values = 
        {
            "K2",
            "custom-vanilla",
            -- "custom-SE",
        },
    },
    {
        type = "bool-setting",
        name = "aams-vanilla-style-sound",
        localised_name = "Use vanilla machine sound",
        localised_description = "In my opinion K2's machine sounds doesn't have the oompf of the vanilla sound, so here's an option to change that.",
        order = "b",
        setting_type = "startup",
        default_value = false,
    },
    {
        type = "bool-setting",
        name = "aams-vanilla-style-icon",
        localised_name = "Use vanilla styled item icon",
        localised_description = "Use an icon that looks similar to vanilla assembly machines. Setting this to false would use the original icon from K2.",
        order = "c",
        setting_type = "startup",
        default_value = false,
    },
    {
        type = "bool-setting",
        name = "aams-extra-50-prod",
        localised_name = "Add 50% built-in productivity",
        localised_description = "Add 50% built-in productivity, just like special buildings in Space Age.",
        order = "c",
        setting_type = "startup",
        default_value = false,
    },
    -- {
    --     type = "bool-setting",
    --     name = "aams-early-unlock-SE",
    --     localised_name = "Early unlock when using space exploration",
    --     localised_description = "Unlock the recipe earlier in SE, with a simpler recipe. Have no effect when not running SE.",
    --     order = "d",
    --     setting_type = "startup",
    --     default_value = "false",
    -- },
})

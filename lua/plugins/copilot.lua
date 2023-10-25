return {
    {
        "zbirenbaum/copilot.lua",
        -- event = { "VimEnter" },
        event = "InsertEnter",
        config = function()
            require("copilot").setup(require "plugins.configs.copilot")
        end,
    },
    {
        "zbirenbaum/copilot-cmp",
        after = { "copilot.lua", "nvim-cmp" },
        config = function()
            require("copilot_cmp").setup()
        end
    },
}

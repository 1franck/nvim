-- You can add your own plugins here or in other files in this directory!

return {
    -- themes
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    -- startup
    {
        "startup-nvim/startup.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
        config = function()
            require "startup".setup(require "configs.startup_nvim")
        end
    },

    -- project
    {
        "ahmedkhalf/project.nvim",
        config = function()
            require("project_nvim").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    },
}

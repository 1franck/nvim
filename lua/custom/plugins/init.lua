-- You can add your own plugins here or in other files in this directory!

return {
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    {
        "startup-nvim/startup.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
        config = function()
            require "startup".setup(require "configs.startup_nvim")
        end
    }
}

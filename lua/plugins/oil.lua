return {
    {
        'stevearc/oil.nvim',
        opts = {},
        -- Optional dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function(_, opts)
            require("oil").setup(require("plugins.configs.oil"))
        end,
    }
}
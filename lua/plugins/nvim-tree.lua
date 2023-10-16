return {
    {
        "nvim-tree/nvim-tree.lua",
        cmd = { "NvimTreeToggle", "NvimTreeFocus" },
        init = function()
        end,
        opts = function()
            return require "plugins.configs.nvim-tree"
        end,
        config = function(_, opts)
            require("nvim-tree").setup(opts)
        end,
    },
}

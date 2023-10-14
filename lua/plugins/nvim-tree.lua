return {
    {
        "nvim-tree/nvim-tree.lua",
        cmd = { "NvimTreeToggle", "NvimTreeFocus" },
        init = function()
            --require("core.utils").load_mappings "nvimtree"
            vim.keymap.set('n', "<C-n>", ":NvimTreeToggle<CR>", { desc = 'Toggle NvimTree' })
            vim.keymap.set('n', "<leader>e", ":NvimTreeFocus<CR>", { desc = 'Focus NvimTree' })
        end,
        opts = function()
            return require "plugins.configs.nvim-tree"
        end,
        config = function(_, opts)
            --dofile(vim.g.base46_cache .. "nvim-tree")
            require("nvim-tree").setup(opts)
        end,
    },
}
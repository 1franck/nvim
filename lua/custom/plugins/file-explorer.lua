return {
    {
        'stevearc/oil.nvim',
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {},
        config = function()
            require('oil').setup(require "configs.oil_nvim")
            vim.keymap.set("n", "-", "<CMD>dir<CR>", { desc = "Open parent directory" })
            
            vim.keymap.set('n', '<leader>dir', function()
                vim.cmd('Oil --float')
            end, { desc = 'Quit' })

        end
    }
}

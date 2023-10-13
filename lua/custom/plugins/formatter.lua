return {
    {
        "mhartington/formatter.nvim",
        config = function()
            require("configs.formatter_nvim")
            vim.keymap.set('n', '<leader>f', ":Format<CR>", { desc = 'Format' })
        end
    }
}
return {
    {
        -- Set lualine as statusline
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons'
        },
        opts = function()
            return require('plugins.configs.lualine')
        end
    },
}
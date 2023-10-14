return {
    {
        -- Set lualine as statusline
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
        -- See `:help lualine.txt`
        opts = {
            options = {
                icons_enabled = true,
                theme = 'horizon',
                component_separators = {
                    left = '',
                    right = ''
                },
                section_separators = {
                    left = '',
                    right = ''
                },
            },
        },
    },
}
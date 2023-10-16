-- https://github.com/sindrets/diffview.nvim
return {
    {
        'sindrets/diffview.nvim',
        config = function()
            require('diffview').setup(require 'plugins.configs.diffview')
        end
    }
}
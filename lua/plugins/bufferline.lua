-- tabs at the top of the window, showing the buffers
-- https://github.com/akinsho/bufferline.nvim
return {
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        init = function()
            require("bufferline").setup{}
        end
    }
}
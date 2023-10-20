-- https://github.com/akinsho/toggleterm.nvim
return {
    {
        {
            'akinsho/toggleterm.nvim',
            version = "*",
            init = function()
                require("toggleterm").setup()
            end,
            opts = {
                autochdir = true,
                size = function(term)
                    if term.direction == "horizontal" then
                        return 15
                    elseif term.direction == "vertical" then
                        return vim.o.columns * 0.4
                    end
                end,
                open_mapping = require("core.keymaps").toggleterm,
                direction = 'vertical'
            }
        }
    }
}

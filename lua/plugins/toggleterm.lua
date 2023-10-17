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
                open_mapping = require("core.keymaps").toggleterm,
            }
        }
    }
}

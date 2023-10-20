local Terminal  = require('toggleterm.terminal').Terminal

local FloatTerm = Terminal:new({
    cmd = "FloatTerm",
    direction = "float"
})

vim.api.nvim_buf_create_user_command(0, 'FloatTerm',
    function(opts)
        print(opts.fargs[1])
        FloatTerm:toggle()
    end,
    { nargs = 1 })
--function _float_term()
--    FloatTerm:toggle()
--end

--vim.api.nvim_add_user_command(
--    'FloatTerm',
--    function()
--        FloatTerm:toggle()
--    end,
--    { nargs = 1 }
--)

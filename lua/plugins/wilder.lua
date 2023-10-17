-- https://github.com/gelguy/wilder.nvim
return {
    {
        'gelguy/wilder.nvim',
        init = function()
            local wilder = require('wilder')
            wilder.set_option('renderer', wilder.popupmenu_renderer({
              -- highlighter applies highlighting to the candidates
              highlighter = wilder.basic_highlighter(),
            }))
            wilder.setup({ modes = { ':', '/', '?' } })
        end
    }
}
-- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-clue.md
return {
    {
        'echasnovski/mini.clue',
        version = '*',
        config = function()
            require('mini.clue').setup({
                -- Array of extra clues to show
                clues = {},

                -- Array of opt-in triggers which start custom key query process.
                -- **Needs to have something in order to show clues**.
                triggers = {},

                -- Clue window settings
                window = {
                    -- Floating window config
                    config = {},

                    -- Delay before showing clue window
                    delay = 0,

                    -- Keys to scroll inside the clue window
                    scroll_down = '<C-d>',
                    scroll_up = '<C-u>',
                },
            })
        end,
        init = function()
            local miniclue = require('mini.clue')
            miniclue.setup({
                triggers = {
                    -- Leader triggers
                    { mode = 'n', keys = '<Leader>' },
                    { mode = 'x', keys = '<Leader>' },

                    -- Built-in completion
                    { mode = 'i', keys = '<C-x>' },

                    -- `g` key
                    { mode = 'n', keys = 'g' },
                    { mode = 'x', keys = 'g' },

                    -- Marks
                    { mode = 'n', keys = "'" },
                    { mode = 'n', keys = '`' },
                    { mode = 'x', keys = "'" },
                    { mode = 'x', keys = '`' },

                    -- Registers
                    { mode = 'n', keys = '"' },
                    { mode = 'x', keys = '"' },
                    { mode = 'i', keys = '<C-r>' },
                    { mode = 'c', keys = '<C-r>' },

                    -- Window commands
                    { mode = 'n', keys = '<C-w>' },

                    -- `z` key
                    { mode = 'n', keys = 'z' },
                    { mode = 'x', keys = 'z' },
                },

                clues = {
                    -- Enhance this by adding descriptions for <Leader> mapping groups
                    miniclue.gen_clues.builtin_completion(),
                    miniclue.gen_clues.g(),
                    miniclue.gen_clues.marks(),
                    miniclue.gen_clues.registers(),
                    miniclue.gen_clues.windows(),
                    miniclue.gen_clues.z(),
                },
            })
        end
    },
}

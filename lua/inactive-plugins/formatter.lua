-- https://github.com/mhartington/formatter.nvim
return {
    {
        'mhartington/formatter.nvim',
        init = function()
            require('formatter').setup({
                logging = false,
                filetype = {
                    typescript = {
                        -- prettierd
                        function()
                            print(vim.api.nvim_buf_get_name(0) + " is formatting")
                            return {
                                exe = "prettierd",
                                args = { vim.api.nvim_buf_get_name(0) },
                                stdin = true
                            }
                        end
                    },
                    -- other formatters ...
                }
            })
        end
    }
}
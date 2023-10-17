vim.g.mapleader = " "
vim.g.maplocalleader =  " "

vim.api.nvim_exec("language en_US", true)

require "core.lazy"
require "core.options"

require("lazy").setup({
    { import = 'plugins' },
})

require "neodev".setup()

require "core.lsp"
require "core.keymaps"

vim.g.mapleader = " "
vim.g.maplocalleader =  " "

vim.api.nvim_exec("language en_US", true)

require "core.lazy"
require "core.options"
require "core.keymaps"

require("lazy").setup({
    { import = 'plugins' },
})
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.api.nvim_exec("language en_US.utf8", true)

require "core.lazy"
require "core.options"

require("lazy").setup({
    { import = 'plugins' },
})

require "neodev".setup()

require "core.lsp"
require "core.keymaps"
require "core.terminals"
-- require "core.vimtips"
require "core.neovide"
require "core.go"
-- vim.g.copilot_assume_mapped = true

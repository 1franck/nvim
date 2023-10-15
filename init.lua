vim.g.mapleader = " "
vim.g.maplocalleader =  " "

vim.api.nvim_exec("language en_US", true)

require "core.lazy"
require "core.options"
require "core.keymaps"

require("lazy").setup({
    { import = 'plugins' },
})

-- TODO REORGANIZE THIS
-- Setup neovim lua configuration
require('neodev').setup()

-- nvim-cmp supports additional completion capabilities, so broadcast that to servers
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- Ensure the servers above are installed
local mason_lspconfig = require 'mason-lspconfig'

mason_lspconfig.setup_handlers {
    function(server_name)
        require('lspconfig')[server_name].setup {
            capabilities = capabilities,
            on_attach = on_attach,
            settings = servers[server_name],
            filetypes = (servers[server_name] or {}).filetypes,
        }
    end
}
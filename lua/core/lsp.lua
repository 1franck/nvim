-- LSP Configuration & Plugins

local servers = {
    -- clangd = {},
    gopls = {},
    -- pyright = {},
    -- rust_analyzer = {},
    tsserver = {
        init_options = {
            preferences = {
                importModuleSpecifierPreference = 'relative',
                importModuleSpecifierEnding = 'minimal',
            },
        },
    },
    -- html = { filetypes = { 'html', 'twig', 'hbs'} },

    lua_ls = {
        Lua = {
            workspace = { checkThirdParty = false },
            telemetry = { enable = false },
        },
    },
}

-- nvim-cmp supports additional completion capabilities, so broadcast that to servers
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- Ensure the servers above are installed
local mason_lspconfig = require 'mason-lspconfig'

mason_lspconfig.setup_handlers {
    function(server_name)
        require('lspconfig')[server_name].setup {
            capabilities = capabilities,
            on_attach = require "core.keymaps".LSP.on_attach,
            settings = servers[server_name],
            filetypes = (servers[server_name] or {}).filetypes,
        }
    end
}
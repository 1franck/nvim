local K = {} -- for exporting keymaps that cannot be set here directly

-- general keymaps
vim.keymap.set('n', '<leader>qq', ":qa!<cr>", { desc = 'Quit' })
vim.keymap.set('n', '<C-z>', "<esc>u", { desc = 'Undo' })
vim.keymap.set('i', '<C-z>', "<esc>u", { desc = 'Undo' })
vim.keymap.set('i', '<C-a>', "<esc>ggVG<cr>", { desc = 'Select All' })
vim.keymap.set('i', '<C-s>', "<esc>:w<cr>a", { desc = 'Save', silent = true })
vim.keymap.set('n', '<C-s>', ":w<cr>", { desc = 'Save' })
vim.keymap.set({ "n", "v", "i" }, '<C-Up>', "<esc>:m -2<cr>", { desc = 'Move line Up' })
vim.keymap.set({ "n", "v", "i" }, '<C-Down>', "<esc>:m +1<cr>", { desc = 'Move line Down' })
vim.keymap.set('n', '<C-o>', ':bnext<cr>', { desc = 'Next buffer' })
vim.keymap.set('n', '<C-i>', ':bprev<cr>', { desc = 'Prev buffer' })

-- telescope
vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<C-f>',
    ':lua require("telescope.builtin").current_buffer_fuzzy_find({ sorter = require("telescope.sorters").get_substr_matcher({})})<cr>',
    { desc = "Current buffer fuzzy find", silent = true })
vim.keymap.set('n', '<C-p>', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<C-S-f>', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })

-- nvim-tree
vim.keymap.set('n', "<C-n>", ":NvimTreeToggle<CR>", { desc = 'Toggle NvimTree' })
vim.keymap.set('n', "<leader>e", ":NvimTreeFocus<CR>", { desc = 'Focus NvimTree' })

-- harpoon
vim.keymap.set('n', '<C-h>', ':lua require("harpoon.ui").toggle_quick_menu()<cr>',
    { desc = 'Toggle Harppon Menu', silent = true })

-- comment
vim.keymap.set('n', "<leader>/", function()
    require("Comment.api").toggle.linewise.current()
end, { desc = 'Toggle comment' })

-- toggleterm (exported)
K.toggleterm = [[<c-t>]]

-- memento
vim.keymap.set('n', '<leader>mm', require('memento').toggle, { desc = 'Toggle [M]emento' })

-- diffview
--vim.keymap.set('n', '<leader>gv', ':DiffviewOpen<cr>', { desc = 'Open Git Diffview' })
--vim.keymap.set('n', '<leader>gc', ':DiffviewClose<cr>', { desc = 'Close Git Diffview' })

-- gitsigns (exported)
local gitsigns_on_attach = function(bufnr)
    vim.keymap.set('n', '<leader>gp', require('gitsigns').prev_hunk, { buffer = bufnr, desc = '[G]o to [P]revious Hunk' })
    vim.keymap.set('n', '<leader>gn', require('gitsigns').next_hunk, { buffer = bufnr, desc = '[G]o to [N]ext Hunk' })
    vim.keymap.set('n', '<leader>ph', require('gitsigns').preview_hunk, { buffer = bufnr, desc = '[P]review [H]unk' })
end
K.gitsigns = {
    on_attach = gitsigns_on_attach,
}

-- LSP (exported)
local lsp_on_attach = function(_, bufnr)
    -- Set keymaps only for the LSP client attached to the current buffer
    local nmap = function(keys, func, desc)
        if desc then
            desc = 'LSP: ' .. desc
        end
        vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
    end

    nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
    nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

    nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
    nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
    nmap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
    nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
    nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
    nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

    -- See `:help K` for why this keymap
    nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
    nmap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')

    -- Lesser used LSP functionality
    nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
    --nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
    --nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
    --nmap('<leader>wl', function()
    --    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    --end, '[W]orkspace [L]ist Folders')

    -- Create a command `:Format` local to the LSP buffer
    vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
        vim.lsp.buf.format()
    end, { desc = 'Format current buffer with LSP' })
end

K.LSP = {
    on_attach = lsp_on_attach,
}

return K

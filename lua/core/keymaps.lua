vim.keymap.set('n', '<leader>qq', function()
    vim.cmd('qa!')
end, { desc = 'Quit' })
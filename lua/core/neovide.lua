if vim.g.neovide == true then
    vim.g.neovide_scale_factor = 0.8
    vim.api.nvim_set_keymap('n', '<F11>', ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})
end

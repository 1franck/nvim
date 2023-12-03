-- Autocmd to execute GoImport when saving .go files
vim.api.nvim_exec([[
  augroup GoImportOnSave
    autocmd!
    autocmd BufWritePost *.go :GoImport
  augroup END
]], false)


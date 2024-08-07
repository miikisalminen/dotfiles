require('lsp-zero')
require('lspconfig').intelephense.setup({})
require("miiki.remap")
-- require("miiki.markdown")

vim.wo.relativenumber = true

-- Remap n to n + zz
vim.api.nvim_set_keymap('n', 'n', 'nzz', { noremap = true, silent = true })
-- Remap N to N + zz
vim.api.nvim_set_keymap('n', 'N', 'Nzz', { noremap = true, silent = true })


------------ Leader Key ------------
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

------------ Keymaps ------------

vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('v', 'jj', '<Esc>')
vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
vim.keymap.set('n', '<leader>1', function()
	vim.diagnostic.open_float({ focus = true })
end, { desc = 'Show line diagnostics and focus' })

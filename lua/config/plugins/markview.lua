require('markview').setup({
	preview = {
        icon_provider = 'devicons',
		enable = false,
    },
})

vim.keymap.set('n', '<leader>m', '<CMD>Markview<CR>', { desc = 'Toggles `markview` previews globally.' })
vim.keymap.set('n', '<leader>s', '<CMD>Markview splitToggle<CR>', { desc = 'Toggles `splitview` for current buffer.' })

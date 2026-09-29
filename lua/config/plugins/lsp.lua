require('mason-lspconfig').setup({
	ensure_installed = { 'lua_ls', 'pyright', 'ts_ls' },
})

vim.lsp.config('lua_ls', {
	settings = {
		Lua = { diagnostics = { globals = { 'vim' } } },
	},
})

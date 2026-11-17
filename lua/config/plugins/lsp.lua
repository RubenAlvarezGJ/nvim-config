require('mason-lspconfig').setup({
	ensure_installed = { 'lua_ls', 'pyright', 'ts_ls' },
})

vim.lsp.config('lua_ls', {
	settings = {
		Lua = { diagnostics = { globals = { 'vim' } } },
	},
})

vim.lsp.config('clangd', {
	cmd = {
		'clangd',
		'--background-index',
		'--clang-tidy',
		'--header-insertion=iwyu',
		'--completion-style=detailed',
		'--function-arg-placeholders=true',
	},
})
vim.lsp.enable('clangd')

vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		local map = function(lhs, rhs) vim.keymap.set('n', lhs, rhs, { buffer = ev.buf }) end

		map('gd', vim.lsp.buf.definition)
		map('<leader>f', function() require('conform').format({ lsp_format = 'fallback' }) end)

		if client and client.name == 'clangd' then
			map('<leader>h', '<cmd>LspClangdSwitchSourceHeader<cr>') -- .h <-> .cpp
		end
	end,
})

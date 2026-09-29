require('conform').setup({
	formatters_by_ft = {
		markdown = { 'mdformat' },
		typescript = { 'prettierd' },
		typescriptreact = { 'prettierd' },
		python = { 'ruff_fix', 'ruff_format' },
	},
	format_on_save = {
		lsp_fallback = true,
		timeout_ms = 2000,
	},
})

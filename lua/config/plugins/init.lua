------------ Build Hooks ------------
local hooks = function(ev)
	local name, kind = ev.data.spec.name, ev.data.kind

	if name == 'telescope-fzf-native.nvim' and (kind == 'install' or kind == 'update') then
		vim.system({ 'make' }, { cwd = ev.data.path }):wait()
	end
end

vim.api.nvim_create_autocmd('PackChanged', { callback = hooks })
vim.api.nvim_create_autocmd('FileType', {
	callback = function()
		pcall(vim.treesitter.start)
	end,
})


vim.pack.add({

	{ src = 'https://github.com/mason-org/mason.nvim',        name = 'mason' },
	{ src = 'https://github.com/neovim/nvim-lspconfig',       name = 'lspconfig' },
	{ src = 'https://github.com/folke/tokyonight.nvim',       name = 'tokyonight' },
	{ src = 'https://github.com/navarasu/onedark.nvim',       name = 'onedark' },
	{ src = 'https://github.com/ellisonleao/gruvbox.nvim',    name = 'gruvbox' },
	{ src = 'https://github.com/rose-pine/neovim',            name = 'rosepine' },
	{ src = 'https://github.com/nvim-neo-tree/neo-tree.nvim', version = vim.version.range('3') },
	'https://github.com/mason-org/mason-lspconfig.nvim',
	'https://github.com/nvim-lua/plenary.nvim',
	'https://github.com/muniftanjim/nui.nvim',
	'https://github.com/nvim-tree/nvim-web-devicons',
	{ src = 'https://github.com/nvim-telescope/telescope.nvim', version = vim.version.range('*') },
	'https://github.com/nvim-telescope/telescope-fzf-native.nvim',
	'https://github.com/nvim-treesitter/nvim-treesitter',
	'https://github.com/OXY2DEV/markview.nvim',
	'https://github.com/stevearc/conform.nvim',
	'https://github.com/lewis6991/gitsigns.nvim',
	'https://github.com/sphamba/smear-cursor.nvim',
	'https://github.com/nvim-lualine/lualine.nvim',
	'https://github.com/vimpostor/vim-tpipeline',
	'https://github.com/kawre/leetcode.nvim',
})

require('config.plugins.mason')
require('config.plugins.lsp')
--require('config.plugins.tokyonight')
--require('config.plugins.onedark')
--require('config.plugins.gruvbox')
require('config.plugins.rosepine')
require('config.plugins.neotree')
require('config.plugins.telescope')
require('config.plugins.treesitter')
require('config.plugins.markview')
require('config.plugins.conform')
require('config.plugins.gitsigns')
require('config.plugins.smearcursor')
require('config.plugins.lualine')
require('config.plugins.tpipeline')
require('config.plugins.leetcode')

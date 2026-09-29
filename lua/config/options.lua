local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.termguicolors = true

opt.tabstop = 4
opt.shiftwidth = 0
opt.wrap = false

opt.swapfile = false
opt.undofile = true

opt.confirm = true
opt.clipboard = 'unnamedplus'

---------- Code Folding ----------
opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldlevel = 99

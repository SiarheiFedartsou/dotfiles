local opt = vim.opt
local api = vim.api

opt.relativenumber = true
opt.number = true

opt.statuscolumn = '%#SiarheiFAbsNumHL#%l%=%#SiarheiFRelNumHL#%r ' 

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

vim.opt.whichwrap:append("h")
vim.opt.whichwrap:append("l")

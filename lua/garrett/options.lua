-- global options
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- options
vim.o.number = true
vim.o.relativenumber = true

vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.smartindent = true

vim.o.wrap = false

vim.o.swapfile = false
vim.o.backup = false
vim.o.backupdir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.undofile = true

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.termguicolors = true

vim.o.signcolumn = "auto"

vim.o.updatetime = 50

vim.o.cmdheight = 1
vim.o.laststatus = 3
vim.o.statusline = "%<%f %m%=%-8.(%c,%l/%L%) %P"
vim.o.ruler = true

vim.opt.backspace = { "indent", "eol", "start" }

-- Set completeopt to have a better completion experience
vim.opt.completeopt = { "menuone", "noselect" }

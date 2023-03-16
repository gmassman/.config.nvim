-- options
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.backupdir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "auto"

vim.opt.updatetime = 50

vim.opt.cmdheight = 1
vim.opt.laststatus = 3
vim.opt.statusline ="%<%f %m%=%-8.(%c,%l/%L%) %P"
vim.opt.ruler = true

vim.opt.backspace = "indent,eol,start"

-- global options
vim.g.mapleader = " "

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

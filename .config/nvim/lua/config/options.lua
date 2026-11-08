vim.opt.mouse = ""
vim.g.mapleader = " "		
vim.g.maplocalleader = " "

vim.o.termguicolors = true
vim.o.swapfile = false
vim.o.backup = false
vim.o.autoread = true		-- auto update file if changed outside of vim
vim.o.undofile = true		-- persistent undo history
vim.o.number = true	
vim.o.relativenumber = true

vim.o.pumheight = 10		-- max height of completion menu
vim.o.winborder = "rounded"
vim.o.pumborder = vim.o.winborder
vim.o.showmode = false

vim.o.cursorline = true
vim.o.signcolumn = "yes"
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true

vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.autoindent = true
vim.opt.inccommand = "split"
vim.o.scrolloff = 8

vim.o.splitbelow = true
vim.o.splitright = true

vim.o.wrap = false
vim.o.breakindent = true 	-- prevent line wrapping
vim.opt.fillchars = { eob = " " }

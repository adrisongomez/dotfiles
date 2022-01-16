
local set = vim.opt

vim.g.mapleader = " "

-- general settings
set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4
set.fileencoding = 'utf-8'
set.termguicolors = true
set.title = true

-- searching
set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true

-- scrolling and window management
set.splitbelow = true
set.splitright = true
set.wrap = false
set.scrolloff = 5

-- syntax highlighting
set.relativenumber = true
set.cursorline = true

set.hidden = true

-- column
set.signcolumn = 'yes'
set.colorcolumn = '120'
set.ruler = true

-- mouse interaction
set.mouse = 'a'

-- undofile
set.undofile = true
set.undodir = '/tmp/neovim/undofile'
set.swapfile = false

-- special settings
set.spell = true
set.completeopt = 'menuone,noselect'
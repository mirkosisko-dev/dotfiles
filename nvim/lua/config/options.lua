vim.cmd("let g:netrw_liststyle = 3")
vim.api.nvim_set_hl(0, "LineNr", { fg = "#b4befe" })

local opt = vim.opt

-- Relative and absolute numbers
opt.relativenumber = true
opt.number = true

-- Tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Backspace
opt.backspace = "indent,eol,start"

-- Terminal colors
opt.termguicolors = true

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Split windoes
opt.splitright = true
opt.splitbelow = true
